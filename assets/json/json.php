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
		if($datas->stat=="logout"){
    		header('Location: ../../login/logout'); 
        }
	}

	

?>