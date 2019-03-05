<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Ujian</h3>
        </div>
        <div class="card-body card-block">
            <form action="" @submit="tambahUjian()" >
                <div class="form-group">
                    <label for="">Pilih Kelas</label>
                    <div class="input-group">
                        <select class="form-control" required v-model="ujian.id_kelas">
                            <option v-for="kelas in dataKelas" :value="kelas.id_kelas">{{kelas.nama_kelas}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Pilih Mapel</label>
                    <div class="input-group">
                        <select class="form-control" required v-model="ujian.id_pelajaran">
                            <option v-for="pelajaran in dataPelajaran" :value="pelajaran.id_pelajaran">{{pelajaran.nama}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-actions form-group">
                    <input class="btn btn-secondary btn-sm" type="submit" value="Tambah Ujian">
                </div>
                </div>
            </form>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
    <h4 class="d-inline mr-3">Refresh untuk melihat token terbaru</h4><img @click="reload()" style="cursor:pointer;" src="../assets/icon/refresh-cw.svg" alt="">
        <table class="mt-3 table table-bordered">
            <thead class="thead-dark text-center">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Kelas</th>
                <th scope="col">Mapel</th>
                <th scope="col">Token</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <?php $i=1; ?>
                <?php foreach($ujian AS $data){ ?>
                    <tr>
                        <td class="text-center"><?php echo $i++ ?></td>
                        <td><?php echo $data->nama_kelas ?></td>
                        <td><?php echo $data->nama ?></td>
                        <td>
                            <?php
                                if($data->token!=""){
                                    echo $data->token;
                                }else{
                                    echo "Tidak ada Token";
                                }
                            ?>
                        </td>
                        <td class="text-center">
                        <?php if($data->status==0){ ?>
                            <div class="badge badge-success text-wrap" style="width: 6rem;">
                                Aktif
                            </div>
                        <?php }else{ ?>
                            <div class="badge badge-danger text-wrap" style="width: 6rem;">
                                Tidak Aktif
                            </div>
                        <?php } ?>
                        </td>
                        <td>
                        <?php if($data->status==0 && $data->token==''){ ?>
                            <button @click="genToken(<?php echo $data->id_ujian ?>)" class="btn btn-primary">Generate Token</button>
                        <?php }?>
                        <?php if($data->status!=0){ ?>
                            <button @click="genToken(<?php echo $data->id_ujian ?>)" class="btn btn-success">Mulai Ujian</button>
                        <?php }else{ ?>
                            <button @click="stopUjian(<?php echo $data->id_ujian ?>)" class="btn btn-danger">Stop Ujian</button>
                        <?php } ?>
                        <button class="btn btn-info">Edit</button>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>