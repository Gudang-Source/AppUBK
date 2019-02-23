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
			$sql= "INSERT INTO ujian_jawaban (ujian_id,siswa_id,soal_id,jawaban) VALUES('$id_ujian','$id_siswa','$id_soal','$jawaban')";
		}
		if($datas->stat=="update_jawab"){
			$jawaban= $datas->jawaban;
			$id= $datas->id;
			$sql= "UPDATE ujian_jawaban SET jawaban='$jawaban' WHERE id='$id'";
        }
        if(isset($sql)){
			$query 	= $koneksi->query($sql);
		}
	}

	

?>