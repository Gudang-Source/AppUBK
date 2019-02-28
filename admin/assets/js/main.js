let appAdmin= new Vue ({
    el:"#appAdmin",
    data:{
        url:"localhost",
        dataKelas:[],
        kelas:{
            nama:""
        },
        editKelas:{
            form:false,
            nama:"",
            id_kelas:"",
            key:""
        },
        dataPelajaran:[],
        dataSoal:[],
        soal:{
            id_pelajaran:"",
            soal_deskripsi:"",
            soal_jwb1:"",
            soal_jwb2:"",
            soal_jwb3:"",
            soal_jwb4:"",
            soal_jwb5:"",
            soal_jawaban:"",
        },
        url_soal:"http://localhost/AppUBK/admin/welcome/per-soal/",
        url_sekarang:"",

    },
    created: function(){
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20kelas")
        .then (response => {
            this.dataKelas=response.data;
        })
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20pelajaran")
        .then (response => {
            this.dataPelajaran=response.data;
        })
        // axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20soal")
        // .then (response => {
        //     this.dataSoal=response.data;
        // })
    },
    methods:{
        addClass:function(){
            let data={
                kelas:this.kelas.nama,
                stat:"tambahKelas"
            }
            axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20nama_kelas%20FROM%20kelas%20WHERE%20nama_kelas%20LIKE%20%27"+this.kelas.nama.trim()+"%27")
            .then(r => {
                if(r.data.length<1){
                    if(this.kelas.nama.trim()!=""){
                        axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
                        .then (r => {
                            appAdmin.dataKelas=r.data;
                        })
                    }else{
                        alert("Nama kelas tidak boleh kosong");
                    }       
                }else{
                    alert('Nama kelas sudah ada');
                }
            })
        },
        deleteClass:function(key,id_kelas){
            let data ={
                id_kelas:id_kelas,
                stat:"deleteKelas"
            }
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
            .then (r => {
                appAdmin.dataKelas.splice(key,1);
            })
        },
        editClass:function(){
            if(this.editKelas.nama.trim()!=""){
                let data ={
                    id_kelas:this.editKelas.id_kelas,
                    nama_kelas:this.editKelas.nama,
                    stat:"editKelas"
                }
                axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20nama_kelas%20FROM%20kelas%20WHERE%20nama_kelas%20LIKE%20%27"+this.kelas.nama.trim()+"%27")
                .then(r => {
                    if(r.data.length<1){
                        axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
                        .then (r => {
                            appAdmin.dataKelas[appAdmin.editKelas.key].nama_kelas=appAdmin.editKelas.nama;
                        })
                    }else{
                        alert("Nama kelas sudah ada");
                    }           
                })
            }
        }
    }
})