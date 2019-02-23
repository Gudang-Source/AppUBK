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
            axios.post("http://localhost/AppUBK/assets/json/json.php?akses=api",data);
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