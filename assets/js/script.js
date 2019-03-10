let ujian = new Vue({
	el: '#app',
	data: {
		sidebar: {
			right: '-300px',
			transition: '0.5s',
		},
		selesai: {
			form: false,
			nilai: null,
			benar: null,
			salah: null,
			kosong: null,
			kkm: null
		},
		yakin: {
			form: false,
		},
		token: {
			form: false
		},
		jawabanEssay: "",
		// url:"hendri.ddns.net"
		// url:"localhost"
		url: "192.168.1.254"
		// url:"199.169.1.26"
	},
	computed: {
		nilaiStyle: function () {
			if (this.selesai.nilai >= this.selesai.kkm) {
				let data = {
					color: '#28a745',
					border: '3px solid #28a745'
				}
				return data;
			} else if (this.selesai.nilai < this.selesai.kkm) {
				let data = {
					color: '#dc3545',
					border: '3px solid #dc3545',
				}
				return data;
			}
		}
	},
	methods: {
		jawab: function (jawaban, id_ujian, id_siswa, id_soal) {
			axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20" + jawaban + "%20AS%20soal_jawaban%20FROM%20soal%20WHERE%20soal_id=%27" + id_soal + "%27")
				.then(response => {
					let data = {
						jawaban: response.data[0].soal_jawaban,
						id_ujian: id_ujian,
						id_siswa: id_siswa,
						id_soal: id_soal,
						stat: "jawab"
					}
					axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20id%20FROM%20ujian_jawaban%20WHERE%20ujian_id=%27" + id_ujian + "%27%20AND%20soal_id=%27" + id_soal + "%27%20AND%20siswa_id=%27" + id_siswa + "%27")
						.then(response => {
							if (response.data.length > 0) {
								this.jawab_update(jawaban, response.data[0].id, id_soal);
							} else {
								axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
							}
						})
				})
		},
		jawab_update: function (jawaban, id, id_soal) {
			axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20" + jawaban + "%20AS%20soal_jawaban%20FROM%20soal%20WHERE%20soal_id=%27" + id_soal + "%27")
				.then(response => {
					let data = {
						jawaban: response.data[0].soal_jawaban,
						id: id,
						stat: "update_jawab",
					}
					axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
				})
		},
		selesaiButton: function (id_ujian, id_siswa, jumlah_soal, kkm, id_record) {
			axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20record.id_soal%20FROM%20record%20JOIN%20siswa%20ON%20siswa.id_siswa=%27" + id_siswa + "%27%20JOIN%20ujian%20ON%20ujian.id_kelas=siswa.id_kelas%20WHERE%20record.id_siswa=siswa.id_siswa%20AND%20record.id_pelajaran=ujian.id_pelajaran")
				.then(response => {
					axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20CASE%20WHEN%20(a.soal_jawaban=b.jawaban)%20THEN%201%20ELSE%200%20END%20as%20nilai%20FROM%20soal%20as%20a%20LEFT%20JOIN%20ujian_jawaban%20as%20b%20ON%20a.soal_id=b.soal_id%20WHERE%20b.ujian_id=%27" + id_ujian + "%27%20AND%20b.siswa_id=%27" + id_siswa + "%27AND%20b.soal_id%20IN%20(" + response.data[0].id_soal + ")")
						.then(response => {
							let benar = [];
							let salah = [];
							let per_soal = 100 / jumlah_soal;
							for (let i = 0; i < response.data.length; i++) {
								if (response.data[i].nilai == 1) {
									benar.push(1);
								} else if (response.data[i].nilai == 0) {
									salah.push(0);
								}
							}
							this.yakin.form = false;
							this.selesai.form = true;
							this.selesai.nilai = Math.round(benar.length * per_soal);
							this.selesai.benar = benar.length;
							this.selesai.salah = salah.length;
							this.selesai.kosong = jumlah_soal - response.data.length;
							this.selesai.kkm = kkm;
							let data = {
								id_record: id_record,
								stat: "logout"
							}
							axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
						})
				})
		},
		logout: function () {
			window.location.reload();
		},
		addJawaban: function (id_soal, id_ujian, id_siswa) {
			axios.get("http://" + this.url + "/AppUBK/assets/json/json.php?query=SELECT%20id%20FROM%20essay_jawaban%20WHERE%20ujian_id=%27" + id_ujian + "%27%20AND%20soal_id=%27" + id_soal + "%27%20AND%20siswa_id=%27" + id_siswa + "%27")
				.then(response => {
					if (response.data.length > 0) {
						this.updateJawaban(response.data[0].id);
					} else {
						let data = {
							id_soal: id_soal,
							id_ujian: id_ujian,
							id_siswa: id_siswa,
							jawaban: this.jawabanEssay,
							stat: "addJawabanEssay"
						}
						axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
					}
				})
		},
		updateJawaban: function (id) {
			let data = {
				jawaban: this.$refs.jawaban.value,
				id: id,
				stat: "updateJawabanEssay",
			}
			axios.post("http://" + this.url + "/AppUBK/assets/json/json.php?akses=api", data);
		},
	}
})
