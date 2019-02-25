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
	<div class="col-12">
    <div id="slideMenu" class="container sidebar sidebar-right" v-bind:style="sidebar">
        <div class="row">
    	    <div class="sidebar col-xs-12 col-sm-12 col-md-12 col-lg-12">
    	        <div class="contente" style="">
    	            <div class="text-center" style="padding-bottom:20px; font-size:14px; color:#0066CC;">Soal Pilihan Ganda</div>
                    <div id="xslide" style="text-align: center; height: 1675px; position: relative;">
                        <div class='row' style='margin:0 auto;'>
                            <?php
                            for($i=0; $i<count($soalSemua); $i++){ ?>
                                <div style='margin-bottom:4px;padding:2px;width:60px;height:60px;'>
                                    <a class="align-middle text-center link-pag <?php if($url==$i){echo "aktif";}else{if($soalSemua[$i]->jawaban!=null){echo "terjawab";}else{echo "biasa";}} ?>" href="<?php echo base_url('welcome/soal/'.$i); ?>"><?php echo $i+1; ?></a>
                                </div>
                            <?php } ?>
                        </div>
    	            </div>          
    	        </div>	
            </div>
        </div>
        <div @click="sidebar.right='0'" v-if="sidebar.right=='-300px'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-left"></i>
        </div>
        <div @click="sidebar.right='-300px'" v-if="sidebar.right=='0'" style="font-size:40px; text-align:center;" class="toggler">
            <i class="fas fa-angle-right"></i>
        </div>
    </div>
		<div class="card" style="margin-top:70px;">
			<div class="card-header">
                Selamat Ujian Muhammad Syarif Hidayatullah
			</div>
			<div class="card-body">
            <?php $url1=$url+1; ?>
				<?php foreach ($soal as $data) {
                    if($cek_jawaban>0){
                        echo $url1.'.'.$data->soal_deskripsi; ?> <br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb1){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb1?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb1 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb2){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb2?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb2 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb3){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb3?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb3 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb4){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb4?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb4 ?><br>
                        <input <?php if($jawaban->jawaban==$data->soal_jwb5){echo "checked";} ?> @click="jawab_update('<?php echo $data->soal_jwb5?>',<?php echo $jawaban->id ?>)"  type="radio" name="pilgan" > <?php echo $data->soal_jwb5 ?>
                <?php }else{
                        echo $url1.'.'.$data->soal_deskripsi; ?> <br>
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
                            <button class="btn btn-success w-50" @click="selesaiButton(<?=$ujian_id?>,<?=$siswa_id?>,<?=count($soalSemua)?>)">Akhiri</button>
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
                                    <td>{{selesai.benar}}</td>
                                </tr>
                                <tr>
                                    <td>Salah</td>
                                    <td>{{selesai.salah}}</td>
                                </tr>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <h1>{{selesai.nilai}}</h1>
                                    </td>
                                </tr>
                            </table>
        		    </div>
        		</div>
			</div>
    	</div>
        </transition>