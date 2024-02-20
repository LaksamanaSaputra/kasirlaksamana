<?php
include("header.php");
?>
<body>
  <div class="p-4 col-6">
    <div class="card mt-5">
      <div class="card-body">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>No</th>
              <th>Tanggal Transaksi</th>
              <th>Nama Pemesan</th>
              <th>Menu</th>
            </tr>
          </thead>
          <tbody>
        <?php
            include("conn/koneksi.php");

            $sql = $koneksi->query("SELECT * FROM penjualan ORDER BY idpenjualan DESC LIMIT 1");
            while ($data= $sql->fetch_assoc()) {
        ?>
              <tr>


                <td><?php echo $data['idpenjualan']?></td>
                <td><?php echo $data['tanggal']?></td>
                <td>
                  <?php
                    $sql2 = $koneksi->query("SELECT * FROM pelanggan WHERE idpelanggan = '".$data['idpenjualan']."'");
                    while ($data2= $sql2->fetch_assoc()) {
                      echo $data2['nama'];
                    }
                  ?>
                </td>
                <td>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Produk</th>
                                <th class="col-1">Jumlah</th>
                                <th class="col-1">Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                          // Fetch details for the current Penjualan
                          $sql3 = $koneksi->query("SELECT * FROM detail WHERE iddetail = '" . $data['idpenjualan'] . "'");
                            
                          $totalharga = 0;

                          while ($data3= $sql3->fetch_assoc()) {
                        ?>
                            <tr>
                              <td>
                              <?php
                                $sql4 = $koneksi->query("SELECT * FROM produk WHERE idproduk = '" . $data3['idproduk'] . "' ");
                                while ($data4= $sql4->fetch_assoc()) {
                                    echo $data4['nama'];
                                }
                              ?>
                              </td>
                              <td><?php echo $data3['jumlahproduk']?> Pcs</td>
                              <td>RP.<?php echo number_format($data3['total']) ?></td>
                              
                            </tr>

                            <?php
                              $totalproduk = $data3['jumlahproduk'] * $data3['total'];
                              $totalharga += $totalproduk;
                            }
                            ?>

                            <tr>
                            <td colspan='2'><strong>Total Harga:</strong></td>
                            <td colspan='2'><strong>RP.<?php echo number_format("$totalharga") ?></strong></td>
                            </tr>
                            

                        </tbody>
                        <?php }?>
        </table>
      </div>
    </div>
  </div>
  <script>
    window.print();
  </script>
</body>
