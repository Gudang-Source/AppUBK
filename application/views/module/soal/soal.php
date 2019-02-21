<?php
    // $array=[];
    // foreach($random as $data){
    //     array_push($array,$data->soal_id);
    // }
    // $arrays= join(',',$array);
    // $this->db->query("INSERT INTO record (id_siswa,id_pelajaran,id_soal) VALUES ('$siswa->id_siswa','$kelas->id_kelas','$arrays')");
?>

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header">
                Selamat Ujian Muhammad Syarif Hidayatullah
			</div>
			<div class="card-body">
				<?php foreach ($soal as $data) {
                    echo $data->soal_deskripsi; ?> <br>
                    <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb1 ?>"> <?php echo $data->soal_jwb1 ?><br>
                    <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb2 ?>"> <?php echo $data->soal_jwb2 ?><br>
                    <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb3 ?>"> <?php echo $data->soal_jwb3 ?><br>
                    <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb4 ?>"> <?php echo $data->soal_jwb4 ?><br>
                    <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb5 ?>"> <?php echo $data->soal_jwb5 ?>
                <?php } ?>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-6"><?php echo $this->pagination->create_links(); ?></div>
                    <div class="col-md-6">
                        <a href="" class="w-100 btn btn-info">Prev</a>    
                    </div>
                    <!-- <div class="col-md-4">
                        <a href="" class="w-100 btn btn-success">Selesai</a>
                    </div> -->
                    <div class="col-md-6">
                        <a href="" class="w-100 btn btn-primary">Next</a>
                    </div>
                </div>
            </div>
	    </div>
	</div>
</div>