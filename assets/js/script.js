let ujian = new Vue({
    el:'#app',
    data:{
        sidebar:{
            right:'-300px',
            transition:'0.5s'
        }
    },
    methods:{
        jawab:function(jawaban,id_ujian,id_siswa,id_soal){
            let data={
                jawaban:jawaban,
                id_ujian:id_ujian,
                id_siswa:id_siswa,
                id_soal:id_soal,
                stat:"jawab"
            }
            axios.get("http://localhost/AppUBK/assets/json/json.php?query=SELECT%20id%20FROM%20ujian_jawaban%20WHERE%20ujian_id=%27"+id_ujian+"%27%20AND%20soal_id=%27"+id_soal+"%27%20AND%20siswa_id=%27"+id_siswa+"%27")
            .then(response => {
                if(response.data.length>0){
                    this.jawab_update(jawaban,response.data[0].id);
                }else{
                    axios.post("http://localhost/AppUBK/assets/json/json.php?akses=api",data);
                }
            })
        },
        jawab_update:function(jawaban,id){
            let data={
                jawaban:jawaban,
                id:id,
                stat:"update_jawab"
            }
            axios.post("http://localhost/AppUBK/assets/json/json.php?akses=api",data);
        }
    }
})