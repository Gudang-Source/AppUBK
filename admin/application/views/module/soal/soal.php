<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Mata Pelajaran</h3>
        </div>
        <div class="card-body card-block">
            <div class="form">
                <div class="form-group">
                    <label for="">Nama Mata Pelajaran</label>
                    <input v-model="mataPelajaran.namaMataPelajaran" type="text" required placeholder="Nama Mata Pelajaran" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Nama Guru Mata Pelajaran</label>
                    <select class="form-control" v-model="mataPelajaran.id_guru">
                        <option v-for="data in dataGuru" :value="data.id_guru">{{data.nama}}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">KKM</label>
                    <input type="number" required placeholder="KKM" class="form-control" v-model="mataPelajaran.kkm">
                </div>
                <input type="button" @click="tambahMapel()" class="btn btn-secondary btn-sm" value="Submit">
            </div>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
    <table class="table table-striped table-hover table-bordered table-sm">
            <thead class="thead-light">
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
                        <a :href="url_soal+data.id_pelajaran" class="btn btn-info">View soal</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>