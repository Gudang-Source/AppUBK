<h1>SOAL DAN JAWABAN</h1>
<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
                <form action="" class="form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
						<label>Isi Soal</label>
                        <textarea name="soal_deskripsi" class="form-control" cols="50" rows="10">
						</textarea>
					</div>
					<label>Jawaban</label><br>
					<small class="text-muted">*Isi jawaban dan pilih salah satu jawaban yang benar</small>
					<div class="input-group mb-3">
					  	<div class="input-group-prepend">
						  	<span class="input-group-text">A</span>
					    	<div class="input-group-text">
					      		<input value="soal_jwb1" required type="radio" name="soal_jawaban">
					    	</div>
					  	</div>
					  	<input name="soal_jwb1" required type="text" class="form-control" placeholder="Jawaban A">
					</div>
					<div class="input-group mb-3">
					  	<div class="input-group-prepend">
						  	<span class="input-group-text">B</span>
					    	<div class="input-group-text">
					      		<input value="soal_jwb2" type="radio" name="soal_jawaban">
					    	</div>
					  	</div>
					  	<input name="soal_jwb2" required type="text" class="form-control" placeholder="Jawaban B">
					</div>
					<div class="input-group mb-3">
					  	<div class="input-group-prepend">
						  	<span class="input-group-text">C</span>
					    	<div class="input-group-text">
					      		<input value="soal_jwb3" type="radio" name="soal_jawaban">
					    	</div>
					  	</div>
					  	<input name="soal_jwb3" required type="text" class="form-control" placeholder="Jawaban C">
					</div>
					<div class="input-group mb-3">
					  	<div class="input-group-prepend">
						  	<span class="input-group-text">D</span>
					    	<div class="input-group-text">
					      		<input value="soal_jwb4" type="radio" name="soal_jawaban">
					    	</div>
					  	</div>
					  	<input name="soal_jwb4" required type="text" class="form-control" placeholder="Jawaban D">
					</div>
					<div class="input-group mb-3">
					  	<div class="input-group-prepend">
						  	<span class="input-group-text">E</span>
					    	<div class="input-group-text">
					      		<input value="soal_jwb5" type="radio" name="soal_jawaban">
					    	</div>
					  	</div>
					  	<input name="soal_jwb5" required type="text" class="form-control" placeholder="Jawaban E">
					</div>	
					<input type="submit" name="submit" class="btn btn-success">
				</form>
        </div>
    </div>
</div>
<?php foreach($perSoal AS $data){ ?>
	<div class="card-body">
		<hr>
		<div class="float-right">
			<a href="<?php echo base_url("welcome/perSoalEdit/".$data->soal_id) ?>" class="btn btn-info" >Edit</a>
		</div>
		<!-- Gambar -->
		<!-- <div class="row">
            <div class="col-12 col-lg-9 align-self-center">
            	<img src="<?php //echo base_url('../assets/gambar2.png');?>" alt=".." class="img img-fluid">
        	</div>
		</div> -->
		<!-- akhir gambar -->
		<?php echo $data->soal_deskripsi."</br>" ?>
		<form>
			<label class="jawaban w-50"><?php echo $data->soal_jwb1 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb1 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb1){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">A</span>
    		</label>
    		<label class="jawaban w-50"><?php echo $data->soal_jwb2 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb2 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb2){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">B</span>
    		</label>
    		<label class="jawaban w-50"><?php echo $data->soal_jwb3 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb3 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb3){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">C</span>
    		</label>
    		<label class="jawaban w-50"><?php echo $data->soal_jwb4 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb4 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb4){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">D</span>
    		</label>
    		<label class="jawaban w-50"><?php echo $data->soal_jwb5 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb5 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb5){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">E</span>
    		</label>
		</form>
		<hr>
	</div>
<?php } ?>