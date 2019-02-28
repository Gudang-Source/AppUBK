<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
                <div class="form-group">
                    <div class="input-group">
                        <select class="form-control" v-model="soal.id_pelajaran">
                            <option v-for="" value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-actions form-group">
                    <input @click="addClass()" class="btn btn-secondary btn-sm" type="button" value="Submit">
                </div>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama Pelajaran</th>
                <th scope="col">Action</th>
            </thead>
            <tbody>
                <tr v-for="(data,key) in dataPelajaran">
                    <td>{{key+1}}</td>
                    <td>{{data.nama}}</td>
                    <td>
                        <a :href="url_soal+data.id_pelajaran" class="btn btn-info">View soal</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>