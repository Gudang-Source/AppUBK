<div class="col-lg-12">
    <div class="card">
        <div class="card-body card-block">
            <form action="#" method="POST">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" name="Nama" placeholder="Nama" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                        <div class="input-group">
                            <input type="number" name="NIP" placeholder="NIP" class="form-control">
                        </div>
                </div>
                <div class="form-actions form-group"><button type="submit" class="btn btn-secondary btn-sm" name="submit">Submit</button></div>
            </form>
        </div>
    </div>
</div>
<div class="table-responsive">
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <th scope="col" class="text-center">No</th>
                <th scope="col">Nama</th>
                <th scope="col">NIP</th>
            </thead>
            <?php
            $no=1;
            foreach ($guru->result() as $row)
            {
            ?>
            <tbody>
                <tr>
                    <th scope="row" class="text-center"><?php echo $no; ?></th>
                    <td><?php echo $row->nama;?></td>
                    <td><?php echo $row->NIP;?></td>
                </tr>
            </tbody>
            <?php 
            $no++;
            }
            ?>
        </table>
    </div>
</div>