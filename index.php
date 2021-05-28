<html>
   <head>
      <title>Menampilkan Data Tabel MySQL</title>
      <style>
         body {font-family:tahoma, arial}
         table {border-collapse: collapse}
         th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
         th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
      </style>
   </head>
   <body>
      <center><h1>Database Akademik</h1></center>
     <center> <h3>Tabel Perkuliahan</h3></center>
      <center><table></center>
         <thead>
            <tr>
               <th>NIM</th>
               <th>Kode_mk</th>
               <th>NIP</th>
               <th>Nilai</th>
            </tr>
         </thead>
         <?php
            include 'koneksi.php';		
            $sql = 'SELECT  * FROM perkuliahan';
            $query = mysqli_query($koneksi, $sql);		
            while ($row = mysqli_fetch_array($query))
            {
            	?>
         <tbody>
            <tr>
               <td><?php echo $row['nim'] ?></td>
               <td><?php echo $row['kode_mk'] ?></td>
               <td><?php echo $row['nip'] ?></td>
               <td><?php echo $row['nilai'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      <center><h3>Tabel Mahasiswa </h3></center>
      <center><table></center>
         <thead>
            <tr>
               <th>NIM</th>
               <th>Nama_mhs</th>
               <th>Tgl_lahir</th>
               <th>Alamat</th>
               <th>Jenis_kelamin</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT  * FROM mahasiswa';
            $query = mysqli_query($koneksi, $sql);		
            while ($row = mysqli_fetch_array($query))
            {
            	?>
         <tbody>
            <tr>
               <td><?php echo $row['nim'] ?></td>
               <td><?php echo $row['nama_mhs'] ?></td>
               <td><?php echo $row['tgl_lahir'] ?></td>
               <td><?php echo $row['alamat'] ?></td>
               <td><?php echo $row['jenis_kelamin'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      </table>
    
   </body>
</html>