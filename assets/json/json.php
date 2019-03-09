<?php
	$server = "localhost";
	$username = "root";
	$password = "";
	$database = "appubk";
	// $username = "tukarjua_web";
	// $password = "mandi2212";
	// $database = "tukarjua_tukar";
	
	$koneksi=mysqli_connect($server, $username, $password, $database) or die("Koneksi gagal");
	$array = array();
	// $array["data"] = array();
	if(isset($_GET['query'])){
		$query = $_GET['query'];
		$data  = $koneksi->query($query);
		while ($row=$data->fetch_assoc()) {
			$array[] = $row;
    		// array_push($array["data"], $row);
		}
		echo json_encode($array);
	}

	$datas = json_decode(file_get_contents("php://input"));
	
	if(isset($_GET['akses'])=="api"){
        if($datas->stat=="jawab"){
			$jawaban= $datas->jawaban;
			$id_ujian=$datas->id_ujian;
			$id_siswa=$datas->id_siswa;
			$id_soal= $datas->id_soal;
			// $sql ="DELETE ujian_jawaban WHERE ujian_id='$id_ujian' AND siswa_id='$id_siswa' AND soal_id='$id_soal'";
			$sql= "REPLACE INTO ujian_jawaban (ujian_id,siswa_id,soal_id,jawaban) VALUES ('$id_ujian','$id_siswa','$id_soal','$jawaban')";
			$koneksi->query($sql);
		}
		if($datas->stat=="update_jawab"){
			$jawaban= $datas->jawaban;
			$id= $datas->id;
			$sql= "UPDATE ujian_jawaban SET jawaban='$jawaban' WHERE id='$id'";
			$koneksi->query($sql);
		}
		if($datas->stat=="tambahKelas"){
			$kelas= $datas->kelas;
			$sql= "INSERT INTO kelas (nama_kelas) VALUES ('$kelas')";
			$koneksi->query($sql);
			$data=$koneksi->query("SELECT * FROM kelas");
			while ($row=$data->fetch_assoc()) {
				$array1[] = $row;
				// array_push($array["data"], $row);
			}

			echo json_encode($array1);

		}
		if($datas->stat=="deleteKelas"){
			$id_kelas = $datas->id_kelas;
			$sql= "DELETE FROM kelas WHERE id_kelas='$id_kelas'";
			$koneksi->query($sql);

		}
		if($datas->stat=="editKelas"){
			$id_kelas = $datas->id_kelas;
			$nama_kelas = $datas->nama_kelas;
			$sql= "UPDATE kelas SET nama_kelas='$nama_kelas' WHERE id_kelas='$id_kelas'";
			$koneksi->query($sql);

		}
		if($datas->stat=="updateJawaban"){
			$soal_id = $datas->soal_id;
			$soal_jawaban = $datas->soal_jawaban;
			$sql= "UPDATE soal SET soal_jawaban='$soal_jawaban' WHERE soal_id='$soal_id'";
			$koneksi->query($sql);

		}
		if($datas->stat=="genToken"){
			$id_ujian = $datas->id_ujian;
			$sql1="SET GLOBAL event_scheduler = ON";
			$koneksi->query($sql1);
			$sql= "CREATE EVENT token_event_".$id_ujian." ON SCHEDULE EVERY 15 MINUTE STARTS CURRENT_TIMESTAMP ON COMPLETION PRESERVE ENABLE DO UPDATE ujian SET token=lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0),status=0 WHERE id_ujian='$id_ujian'";
			$koneksi->query($sql);

		}
		if($datas->stat=="stopUjian"){
			$id_ujian = $datas->id_ujian;
			$sql= "DROP EVENT token_event_".$id_ujian."";
			$koneksi->query($sql);
			$sql1="UPDATE ujian SET token='',status=1 WHERE id_ujian='$id_ujian'";
			$koneksi->query($sql1);

		}
		if($datas->stat=="tambahUjian"){
			$id_kelas = $datas->id_kelas;
			$id_pelajaran = $datas->id_pelajaran;
			$sql= "INSERT INTO ujian (id_kelas,id_pelajaran) VALUES ('$id_kelas','$id_pelajaran')";
			$koneksi->query($sql);

		}
		if($datas->stat=="logout"){
			$id_record = $datas->id_record;
			$sql= "UPDATE record SET status=1 WHERE id_record='$id_record'";
			$koneksi->query($sql);
    		header('location:../../login/logout');
		}
		if($datas->stat=="tambahMapel"){
			$nama = $datas->nama_mapel;
			$id_guru = $datas->id_guru;
			$kkm = $datas->kkm;
			$sql= "INSERT INTO pelajaran (nama,id_guru,KKM) VALUES ('$nama','$id_guru','$kkm')";
			$koneksi->query($sql);
		}
		if($datas->stat=="tambahSiswa"){
			$nama = $datas->nama;
			$id_kelas = $datas->id_kelas;
			$nis = $datas->nis;
			$username = $datas->username;
			$password = $datas->password;
			$sql= "INSERT INTO siswa (nama,id_kelas,nis,username,password) VALUES ('$nama','$id_kelas','$nis','$username','$password')";
			$koneksi->query($sql);
		}
		if($datas->stat=="hapusSiswa"){
			$id_siswa = $datas->id_siswa;
			$sql= "DELETE FROM siswa WHERE id_siswa='$id_siswa'";
			$koneksi->query($sql);
		}
		if($datas->stat=="addJawabanEssay"){
			$jawaban= $datas->jawaban;
			$id_ujian=$datas->id_ujian;
			$id_siswa=$datas->id_siswa;
			$id_soal= $datas->id_soal;
			// $sql ="DELETE ujian_jawaban WHERE ujian_id='$id_ujian' AND siswa_id='$id_siswa' AND soal_id='$id_soal'";
			$sql= "REPLACE INTO essay_jawaban (ujian_id,siswa_id,soal_id,jawaban) VALUES ('$id_ujian','$id_siswa','$id_soal','$jawaban')";
			$koneksi->query($sql);
		}
		if($datas->stat=="updateJawabanEssay"){
			$jawaban= $datas->jawaban;
			$id= $datas->id;
			$sql= "UPDATE essay_jawaban SET jawaban='$jawaban' WHERE id='$id'";
			$koneksi->query($sql);
		}

}

?>