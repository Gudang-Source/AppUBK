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