<div class="container">
<div class="row">
    <?php
        if($url==""){
            $url=0;
        }
        $soal_id=$soal[0]->soal_id;
        $ujian_id=$soal[0]->id_ujian;
        $siswa_id=$soal[0]->id_siswa;
        $cek_jawaban= $this->db->query("SELECT jawaban FROM ujian_jawaban WHERE ujian_id='$ujian_id' AND siswa_id='$siswa_id' AND soal_id='$soal_id'")->num_rows();
        $jawaban=$this->db->query("SELECT * FROM ujian_jawaban WHERE soal_id='$soal_id' AND ujian_id='$ujian_id' AND siswa_id='$siswa_id'")->row();

    ?>
    <div id="slideMenu" class="container sidebar sidebar-right" v-bind:style="sidebar">
    	<div class="contente">
    	    <div class="text-center" style="padding-bottom:20px; font-size:14px; color:#0066CC;">Soal Pilihan Ganda</div>
            <div class="items">
                <?php for($i=0; $i<count($soalSemua); $i++){ ?>
                    <a class="link-pag <?php if($url==$i){echo "aktif";}else{if($soalSemua[$i]->jawaban!=null){echo "terjawab";}else{echo "biasa";}} ?>" href="<?php echo base_url('welcome/soal/'.$i); ?>"><?php echo $i+1; ?></a>
                <?php } ?>            
            </div>      
            
    	</div>
        <div @click="sidebar.right='0'" v-if="sidebar.right=='-300px'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-left"></i>
        </div>
        <div @click="sidebar.right='-300px'" v-if="sidebar.right=='0'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-right"></i>
        </div>
    </div>
	<div class="col-12">
		<div class="card" style="margin-top:70px;">
			<div class="card-header">
                Selamat Ujian <?php echo $soal[0]->nama ?>
			</div>
			<div class="card-body">
            <?php $url1=$url+1; ?>
            <!-- gambar -->
            <!-- <div class="row justify-content-center">
                <div class="col-12 col-lg-9 align-self-center">
                    <img src="
                    <?php
                    //  echo base_url('./assets/gambar.png');
                     ?>
                     " alt=".." class="img img-fluid">
                </div>
            </div> -->
            <!-- akhir gambar -->
				<?php foreach ($soal as $data) {
                    echo $url1.'.'.$data->soal_deskripsi.'</br>';
                    if($cek_jawaban>0){ ?>
                        <label class="jawaban"><?php echo $data->soal_jwb1 ?>
                            <input <?php if($jawaban->jawaban==$data->soal_jwb1){echo "checked";} ?> @change="jawab_update('<?php echo $data->soal_jwb1?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">A</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb2 ?>
                            <input <?php if($jawaban->jawaban==$data->soal_jwb2){echo "checked";} ?> @change="jawab_update('<?php echo $data->soal_jwb2?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">B</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb3 ?>
                            <input <?php if($jawaban->jawaban==$data->soal_jwb3){echo "checked";} ?> @change="jawab_update('<?php echo $data->soal_jwb3?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">C</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb4 ?>
                            <input <?php if($jawaban->jawaban==$data->soal_jwb4){echo "checked";} ?> @change="jawab_update('<?php echo $data->soal_jwb4?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">D</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb5 ?>
                            <input <?php if($jawaban->jawaban==$data->soal_jwb5){echo "checked";} ?> @change="jawab_update('<?php echo $data->soal_jwb5?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">E</span>
                        </label>
                <?php }else{ ?>
                        <label class="jawaban"><?php echo $data->soal_jwb1 ?>
                            <input @change="jawab('<?php echo $data->soal_jwb1?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">A</span>
                            <!-- gambar -->
                            <!-- <div class="row">
                                <div class="col-12 col-lg-5">
                                    <img src="
                                    <?php 
                                    // echo base_url('./assets/gambar.png');
                                    ?>
                                    " alt=".." class="img img-fluid">
                                </div>
                            </div> -->
                            <!-- akhir gambar -->
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb2 ?>
                            <input @change="jawab('<?php echo $data->soal_jwb2?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">B</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb3 ?>
                            <input @change="jawab('<?php echo $data->soal_jwb3?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">C</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb4 ?>
                            <input @change="jawab('<?php echo $data->soal_jwb4?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">D</span>
                        </label>
                        <label class="jawaban"><?php echo $data->soal_jwb5 ?>
                            <input @change="jawab('<?php echo $data->soal_jwb5?>',<?php echo $data->id_ujian?>,<?php echo $data->id_siswa?>,<?php echo $data->soal_id?>)"  type="radio" name="pilgan" >
                            <span class="checkmark">E</span>
                        </label>
                <?php } ?>
                <?php } ?>
            </div>
            <div class="card-footer">
                <div class="row">
                    
                    <div class="col-6 col-md-6">
                        <?php
                        if($url==0){ ?>
                            <p class="w-100 btn btn-info disabled">Prev</a>    
                        <?php
                        }else{ 
                            
                            $url_previous=$url-1;
                            ?>
                            <a href="<?php echo base_url('welcome/soal/'.$url_previous) ?>" class="w-100 btn btn-info">Prev</a>    
                        <?php
                        }
                        ?>
                        
                    </div>
                    <!-- <div class="col-md-4">
                        <a href="" class="w-100 btn btn-success">Selesai</a>
                    </div> -->
                    <div class="col-6 col-md-6">
                    <?php
                        if($url+1<count($soalSemua)){ 
                            $url_next=$url+1;
                        ?>

                            <a href="<?php echo base_url('welcome/soal/'.$url_next) ?>" class="w-100 btn btn-primary">Next</a>    
                        <?php }else if($url+1==count($soalSemua)){ 
                            ?>
                            <button class="btn btn-success w-100" @click="yakin.form=true">Selesai</button>
                        <?php } 
                        ?>       
                    </div>
                </div>
    	    </div>
    	</div>
    </div>
</div>
</div>

        <transition name="form">
        <div v-if="yakin.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-y">
        		    <div class="modal-body">
        		        <h2 style="text-align: center;vertical-align: middle;  ">
                            Anda yakin ingin mengakhiri ujian ini !!
						</h2>
        		    </div>
        		    <div class="modal-footer">
                            <button class="btn btn-success w-50" @click="selesaiButton(<?php echo $ujian_id?>,<?php echo $siswa_id?>,<?php echo count($soalSemua)?>,<?php echo $kkm->kkm ?>,<?php echo $record->id_record ?>)">Akhiri</button>
                            <button class="btn btn-danger w-50" @click="yakin.form=false">Batal</button>
        		    </div>
        		</div>
			</div>
        </div>
        </transition>
        <transition name="form">
		<div v-if="selesai.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-c">
        		    <div class="modal-body">
                            <table class="table">
                                <tr>
                                    <td>Benar</td>
                                    <td style="color:#28a745;">{{selesai.benar}}</td>
                                </tr>
                                <tr>
                                    <td>Salah</td>
                                    <td style="color:#dc3545;">{{selesai.salah}}</td>
                                </tr>
                                <tr>
                                    <td>Tidak Terjawab</td>
                                    <td>{{selesai.kosong}}</td>
                                </tr>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <div :style="nilaiStyle" class="nilai">{{selesai.nilai}}</div>
                                    </td>
                                </tr>
                            </table>
                    </div>
                    <div class="model-footer">
                        <button class="w-100 btn btn-danger" @click="logout()">Logout</button>
                    </div>
        		</div>
			</div>
    	</div>
        </transition>