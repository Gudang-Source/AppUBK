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
                    </div>
                </div>
    	    </div>
    	</div>
    </div>
</div>