<h1>SOAL DAN JAWABAN</h1>
<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
                <form class="form-group">
                    <div class="input-group">
                        <input v-model="kelas.nama" type="text" placeholder="Nama Kelas" class="form-control">
                    </div>
				</form>
                <div class="form-actions form-group">
                    <input @click="addClass()" class="btn btn-secondary btn-sm" type="button" value="Submit">
                </div>
        </div>
    </div>
</div>
<?php foreach($perSoal AS $data){ ?>
	<div class="card-body">
		<?php echo $data->soal_deskripsi."</br>" ?>
		<form>
			<label class="jawaban"><?php echo $data->soal_jwb1 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb1 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb1){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">A</span>
    		</label>
    		<label class="jawaban"><?php echo $data->soal_jwb2 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb2 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb2){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">B</span>
    		</label>
    		<label class="jawaban"><?php echo $data->soal_jwb3 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb3 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb3){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">C</span>
    		</label>
    		<label class="jawaban"><?php echo $data->soal_jwb4 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb4 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb4){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">D</span>
    		</label>
    		<label class="jawaban"><?php echo $data->soal_jwb5 ?>
    		    <input @change="updateJawaban(<?php echo $data->soal_id ?>,'<?php echo $data->soal_jwb5 ?>')" <?php if($data->soal_jawaban==$data->soal_jwb5){echo "checked";} ?> type="radio" name="pilgan" >
    		    <span class="checkmark">E</span>
    		</label>
		</form>
	</div>
<?php } ?>