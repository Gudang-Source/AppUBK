<div class="container" style="margin-top: 70px;">
    <div class="row">
        <div class="col-md-4">
        <div class="card card-default">
                <img src="" class="card-img-top rounded mx-auto d-block" alt="...">
                <div class="card-body">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="font-weight-bold">Nama :</td>
                                <td><?php echo $siswa->nama; ?></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold">Kelas :</td>
                                <td><?php echo $ujian->nama_kelas; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-default">
                <div class="card-header">
                    Info Ujian
                </div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>Mata Pelajaran</td>
                            <td><?php echo $ujian->nama; ?></td>
                        </tr>
                        <tr>
                            <td>KKM</td>
                            <td><?php echo $ujian->KKM; ?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="alert alert-info" style="background-color:#00c0ef !important;color:white;padding:30px;">
                <h4>
                    <i class="icon fa fa-info"></i> Perhatian!
                </h4>
                Silahkan klik tombol mulai ujian dibawah ini, jika anda telah siap melaksanakan ujian.
            </div>
            <a class="btn btn-success btn-lg btn-block" href="<?=base_url('welcome/soal')?>">Mulai Ujian</a>
        </div>
    </div>
</div>