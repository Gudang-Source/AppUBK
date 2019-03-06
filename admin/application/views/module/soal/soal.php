<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h3>Mata Pelajaran</h3>
        </div>
        <div class="card-body card-block">
            <form action="" class="form" @submit="">
                <div class="form-group" v-model="mataPelajaran.namaMataPelajaran">
                    <label for="">Nama Mata Pelajaran</label>
                    <input type="text" required placeholder="Nama Mata Pelajaran" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Nama Guru Mata Pelajaran</label>
                    <select class="form-control" v-model="mataPelajaran.idGuru">
                        <option v-for="dataGuru in data" :value="data.id_guru">{{data.nama}}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">KKM</label>
                    <input type="text" required placeholder="KKM" class="form-control" v-model="mataPelajaran.kkm">
                </div>
                <input type="submit" class="btn btn-secondary btn-sm" value="Submit">
            </form>
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
                        <a :href="url_soal+data.id_pelajaran" class="btn btn-info">View soal</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>