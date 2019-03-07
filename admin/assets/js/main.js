let appAdmin= new Vue ({
    el:"#appAdmin",
    data:{
        // url:"hendri.ddns.net",
        url:"localhost",
        // url:"192.168.1.254",
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
        soal_edit:"",
        soal:{
            form:false,
            soal_id:"",
            soal_deskripsi:"",
            soal_jwb1:"",
            soal_jwb2:"",
            soal_jwb3:"",
            soal_jwb4:"",
            soal_jwb5:""
        },
        ujian:{
            id_kelas:"",
            id_pelajaran:""
        },
        dataGuru:[],
        mataPelajaran:{
            namaMataPelajaran:"",
            id_guru:"",
            kkm:""
        },
        dataSiswa:[],
        siswa:{
            nama:"",
            id_kelas:"",
            nis:"",
            username:"",
            password:""
        }

    },
    computed:{
        url_soal:function(){
            return "http://"+this.url+"/AppUBK/admin/welcome/perSoal/";
        }
    },
    created: function(){
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20kelas")
        .then (response => {
            this.dataKelas=response.data;
        })
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20a.id_pelajaran,b.id_guru,a.nama,b.nama%20AS%20nama_guru,a.KKM%20FROM%20pelajaran%20AS%20a%20INNER%20JOIN%20guru%20AS%20b%20ON%20b.id_guru=a.id_guru")
        .then (response => {
            this.dataPelajaran=response.data;
        })
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20guru")
        .then (response => {
            this.dataGuru=response.data;
        })
        axios.get("http://"+this.url+"/AppUBK/assets/json/json.php?query=SELECT%20*%20FROM%20siswa%20AS%20a%20INNER%20JOIN%20kelas%20AS%20b%20ON%20b.id_kelas=a.id_kelas")
        .then (response => {
            this.dataSiswa=response.data;
        })
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
        },
        updateJawaban:function(soal_id,soal_jawaban){
            let data={
                soal_id:soal_id,
                soal_jawaban:soal_jawaban,
                stat:"updateJawaban"
            }
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data);
        },
        editSoal:function(soal_id,soal_deskripsi,soal_jwb1,soal_jwb2,soal_jwb3,soal_jwb4,soal_jwb5){
            this.soal.form=true;
            this.soal.soal_id=soal_id;
            this.soal.soal_deskripsi=soal_deskripsi;
            this.soal.soal_jwb1=soal_jwb1;
            this.soal.soal_jwb2=soal_jwb2;
            this.soal.soal_jwb3=soal_jwb3;
            this.soal.soal_jwb4=soal_jwb4;
            this.soal.soal_jwb5=soal_jwb5;
        },
        reload:function(){
            window.location.reload();
        },
        genToken:function(id_ujian){
            let data={
                id_ujian:id_ujian,
                stat:"genToken"
            }
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
            .then (response => {
                if(response.status=200){
                    this.reload();
                }
            })
        },
        stopUjian:function(id_ujian){
            let data={
                id_ujian:id_ujian,
                stat:"stopUjian"
            }
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
            .then (response => {
                if(response.status=200){
                    this.reload();
                }
            })
        },
        tambahUjian:function(){
            let data ={
                id_kelas:this.ujian.id_kelas,
                id_pelajaran:this.ujian.id_pelajaran,
                stat:"tambahUjian"
            }
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data);
        },
        tambahMapel:function(){
            let that=this.mataPelajaran;
            if(that.namaMataPelajaran.trim()!="" && that.id_guru.trim()!="" && that.kkm.trim()!=""){
                let data={
                    nama_mapel:that.namaMataPelajaran,
                    id_guru:that.id_guru,
                    kkm:that.kkm,
                    stat:"tambahMapel"
                };
                axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
                .then(response => {
                    console.log(response.data);
                })
            }
        },
        tambahSiswa:function(){
            let that=this.siswa;
            if(that.nama.trim()!="" && that.id_kelas.trim()!="" && that.nis.trim()!="" && that.username.trim()!="" && that.password.trim()!=""){
                let data={
                    nama:that.nama,
                    id_kelas:that.id_kelas,
                    nis:that.nis,
                    username:that.username,
                    password:that.password,
                    stat:"tambahSiswa"
                };
                axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
                .then (r=>{
                    window.location.reload();
                })
            }
        },
        hapusSiswa:function(id_siswa,key){
            let data={
                id_siswa:id_siswa,
                stat:"hapusSiswa"
            }; 
            axios.post("http://"+this.url+"/AppUBK/assets/json/json.php?akses=api",data)
            .then (r => {
                if(r.status==200){
                    this.dataSiswa.splice(key,1);
                }
            })
        }
    }
})
// query random token
// lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0)