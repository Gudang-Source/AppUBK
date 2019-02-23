<<<<<<< Updated upstream
<div class="container">
    <div class="row">
        <?php var_dump($soal); ?>
    	<div class="col-md-12">
    		<div class="card">
    			<div class="card-header">
                    Selamat Ujian Muhammad Syarif Hidayatullah
    			</div>
    			<div class="card-body">
                    <?php $no=1 ?>
    				<?php foreach ($soal as $data) {
                        echo $no++.'.'.$data->soal_deskripsi; ?> <br>
                        <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb1 ?>"> <?php echo $data->soal_jwb1 ?><br>
                        <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb2 ?>"> <?php echo $data->soal_jwb2 ?><br>
                        <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb3 ?>"> <?php echo $data->soal_jwb3 ?><br>
                        <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb4 ?>"> <?php echo $data->soal_jwb4 ?><br>
                        <input type="radio" name="pilgan" value="<?php echo $data->soal_jwb5 ?>"> <?php echo $data->soal_jwb5 ?>
                    <?php } ?>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-12"><?php echo $this->pagination->create_links(); ?></div>
                        <div class="col-md-6">
                            <a href="" class="w-100 btn btn-info">Prev</a>    
                        </div>
                        <!-- <div class="col-md-4">
                            <a href="" class="w-100 btn btn-success">Selesai</a>
                        </div> -->
                        <div class="col-md-6">
                            <a href="" class="w-100 btn btn-primary">Next</a>
                        </div>
=======
<div class="row">
    <?php
        $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $ambil_url	 = substr($actual_link, 37, 1);
        if($ambil_url==""){
            $ambil_url=0+1;
        }else{
            $ambil_url+=1;
        }
        $soal_id=$soal[0]->soal_id;
        $ujian_id=$soal[0]->id_ujian;
        $siswa_id=$soal[0]->id_siswa;
        $cek_jawaban= $this->db->query("SELECT jawaban FROM ujian_jawaban WHERE ujian_id='$ujian_id' AND siswa_id='$siswa_id' AND soal_id='$soal_id'")->num_rows();
        $jawaban=$this->db->query("SELECT * FROM ujian_jawaban WHERE soal_id='$soal_id' AND ujian_id='$ujian_id' AND siswa_id='$siswa_id'")->row();
    ?>
	<div class="col-md-12">
    <div id="slideMenu" class="container sidebar sidebar-right" v-bind:style="sidebar">
        <div class="row">
    	    <div class="sidebar col-xs-12 col-sm-12 col-md-12 col-lg1-12">
    	        <div class="contente" style="">
    	            <div class="text-center" style="padding-bottom:20px; font-size:14px; color:#0066CC;">Soal Pilihan Ganda</div>
                    <div id="xslide" style="text-align: center; height: 1675px; position: relative;">
                    <div class="item" id="bulat2" style="color: rgb(0, 0, 0); border-color: rgb(49, 49, 50); position: absolute; left: 0px; top: 0px;">
				        <p style="font-family:Arial, Helvetica, sans-serif; font-size:36px">
				        	1				
				        </p>
				        <div class="text-center" id="noti-count" style="#313132">	
				        	<div id="kecil2">

				        	</div>
				        </div>
			        </div>
    	            </div>          
    	        </div>	
            </div>
        </div>
        <div  style="font-size:40px; text-align:center;" class="toggler">
            <i @click="sidebar.right=0" class="fas fa-angle-left" v-if="sidebar.right=='-300px'"></i>
            <i @click="sidebar.right='-300px'" class="fas fa-angle-right" v-if="sidebar.right=='0'"></i>
        </div>
    </div>
		<div class="card">
			<div class="card-header">
                Selamat Ujian Muhammad Syarif Hidayatullah
			</div>
			<div class="card-body">
                <?php $no=1 ?>
				<?php foreach ($soal as $data) {
                    if($cek_jawaban>0){
                        echo $ambil_url.'.'.$data->soal_deskripsi; ?> <br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb1){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb1?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb1 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb2){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb2?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb2 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb3){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb3?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb3 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb4){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb4?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb4 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb5){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb5?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb5 ?>
                <?php }else{
                        echo $ambil_url.'.'.$data->soal_deskripsi; ?> <br>
                        <input @click="jawab('<?php echo $data->soal_jwb1?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)" type="radio" name="pilgan" > <?php echo $data->soal_jwb1 ?><br>
                        <input @click="jawab('<?php echo $data->soal_jwb2?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)" type="radio" name="pilgan" > <?php echo $data->soal_jwb2 ?><br>
                        <input @click="jawab('<?php echo $data->soal_jwb3?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)" type="radio" name="pilgan" > <?php echo $data->soal_jwb3 ?><br>
                        <input @click="jawab('<?php echo $data->soal_jwb4?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)" type="radio" name="pilgan" > <?php echo $data->soal_jwb4 ?><br>
                        <input @click="jawab('<?php echo $data->soal_jwb5?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)" type="radio" name="pilgan" > <?php echo $data->soal_jwb5 ?>
                <?php } ?>
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
>>>>>>> Stashed changes
                    </div>
                </div>
    	    </div>
    	</div>
    </div>
</div>