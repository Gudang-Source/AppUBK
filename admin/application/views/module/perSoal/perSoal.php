<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Create Soal</h1>
	<div class="btn-toolbar mb-2 mb-md-0">
		<div class="btn-group mr-2">
			<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
			<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
		</div>
		<button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
			<span data-feather="calendar"></span>
			This week
		</button>
	</div>
</div>
<!-- Form Soal -->
<form action="" class="form mb-5" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label>Isi Soal</label>
		<textarea name="soal_deskripsi" class="form-control" cols="50" rows="10"></textarea>
	</div>
	<label>Jawaban</label><br>
	<small class="text-muted">*Isi jawaban dan pilih salah satu jawaban yang benar</small>
	<div class="input-group input-group-sm mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">A</span>
			<div class="input-group-text">
				<input value="soal_jwb1" required type="radio" name="soal_jawaban">
			</div>
		</div>
		<textarea name="soal_jwb1" class="form-control"></textarea>
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">B</span>
			<div class="input-group-text">
				<input value="soal_jwb2" type="radio" name="soal_jawaban">
			</div>
		</div>
		<textarea name="soal_jwb2" class="form-control"></textarea>
		<!-- <input name="soal_jwb2" required type="text" class="form-control" placeholder="Jawaban B"> -->
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">C</span>
			<div class="input-group-text">
				<input value="soal_jwb3" type="radio" name="soal_jawaban">
			</div>
		</div>
		<textarea name="soal_jwb3" class="form-control"></textarea>
		<!-- <input name="soal_jwb3" required type="text" class="form-control" placeholder="Jawaban C"> -->
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">D</span>
			<div class="input-group-text">
				<input value="soal_jwb4" type="radio" name="soal_jawaban">
			</div>
		</div>
		<textarea name="soal_jwb4" class="form-control"></textarea>
		<!-- <input name="soal_jwb4" required type="text" class="form-control" placeholder="Jawaban D"> -->
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">E</span>
			<div class="input-group-text">
				<input value="soal_jwb5" type="radio" name="soal_jawaban">
			</div>
		</div>
		<textarea name="soal_jwb5" class="form-control"></textarea>
		<!-- <input name="soal_jwb5" required type="text" class="form-control" placeholder="Jawaban E"> -->
	</div>	
	<input type="submit" name="submit" class="btn btn-success">
</form>

<!-- Daftar List Soal -->
<?php $no=1; foreach($perSoal AS $data) { ?>
	<div class="card bg-light">
		<div class="card-header">
			<?php echo "<b>Soal No. ".$no."</b>" ?>
			<div class="float-right">
				<a href="<?php echo base_url("welcome/perSoalEdit/".$data->soal_id.'/'.$data->soal_pelajaran) ?>" class="btn btn-info btn-sm" >Edit</a>
			</div>
		</div>
		<div class="card-body">
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
		</div>
	</div>
<?php $no++; } ?>