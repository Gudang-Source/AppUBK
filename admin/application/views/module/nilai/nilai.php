<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Rekap Nilai</h3>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama Pelajaran</th>
                <th scope="col">Nama Guru</th>
                <th scope="col">KKM</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataPelajaran">
                    <td>{{key+1}}</td>
                    <td>{{data.nama}}</td>
                    <td>{{data.nama_guru}}</td>
                    <td>{{data.KKM}}</td>
                    <td>
                        <button @click="listKelas(data.id_pelajaran,data.KKM,data.nama)">List Kelas</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<transition name="formEdit">
        <div v-if="nilai.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c" style="height:600px;">
        		    <div class="modal-body" style="overflowY:scroll;"> 
                    <button type="button" class="close" aria-label="Close" @click="nilai.form=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Kelas</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(data,key) in nilai.kelas">
                                <td>{{key+1}}</td>
                                <td>{{data.nama_kelas}}</td>
                                <td><button class="btn btn-success" @click="listSiswa(data.id_kelas,data.nama_kelas)">Download Rekap Nilai</button></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    <div class="model-footer">
                        
                    </div>
        		</div>
        	</div>
        </div>
    </transition>
    <transition name="formEdit">
        <div v-if="nilai.formSiswa" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c" style="height:600px;">
        		    <div class="modal-body" style="overflowY:scroll;"> 
                    <button type="button" class="close" aria-label="Close" @click="nilai.formSiswa=false">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <button @click="exportTableToExcel(nilai.nama_pelajaran,nilai.nama_kelas)">
                        export
                    </button>
                    <table class="table" ref="table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Nilai</th>
                                <th>Status Lulus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(dataBaru,keys) in siswaNilai">
                                <td>{{keys+1}}</td>
                                <td>{{dataBaru.nama}}</td>
                                <td>{{dataBaru.nilai}}</td>
                                <td v-if="dataBaru.nilai>=nilai.kkm">Lulus</td>
                                <td v-if="dataBaru.nilai<nilai.kkm">Tidak Lulus</td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    <div class="model-footer">
                        
                    </div>
        		</div>
        	</div>
        </div>
    </transition>