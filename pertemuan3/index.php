<?php
//koneksi ke functions atau database
include 'function/functions.php';

//ambil data dari tabel buku
$buku = query("SELECT id_buku, gambar, judul, pengarang, penerbit, tahun_terbit, kategori from buku");
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>pertemuan 3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- custom font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pixelify+Sans" />
    

    <style>
        .card {
            margin: 10px;
        }
        .rounded-image {
        border-radius: 10px; 
        }
        
        .custom-font {
          font-family: 'Pixelify Sans', sans-serif;
        }
        .btn:hover {
          background-color: #213555; 
          color: #fff; 
        }
    </style>

  </head>
  <body>
    <!-- Navbar -->
    <nav class="navbar sticky-top bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand text-white custom-font" href="#">BUKUKUK</a>
      </div>
    </nav>
    

    <!-- Awal Section -->
    <section class="main">
        <div class="container my-3">
            <h1 class="mb-4 text-center ">Koleksi Buku</h1>
              <div class="container bg-light" style="border-radius: 15px;"> 
                <div class="row justify-content-center">
                  <?php foreach ($buku as $bk) : ?>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                      <div class="card mb-3" style="max-width: 300px; padding: 10px; min-height : 700px;"> 
                        <img src="img/<?= $bk['gambar']; ?>" class="card-img-top rounded-image" alt="<?= $bk['judul']; ?>">
                        <div class="card-body">
                          <h5 class="card-title">Judul Buku: <?= $bk['judul']; ?></h5>
                          <p class="card-text">Pengarang: <?= $bk['pengarang']; ?></p>
                          <p class="card-text">Penerbit: <?= $bk['penerbit']; ?></p>
                          <p class="card-text">Tahun: <?= $bk['tahun_terbit']; ?></p>
                          <p class="card-text">Kategori: <?= $bk['kategori']; ?></p>
                          
                        </div>
                        <div class="text-center card-footer bg-transparent">
                            <a href="#" class="btn btn-info btn:hover">Detail Buku</a>
                          </div>
                      </div>
                    </div>
                  <?php endforeach; ?>
                </div>
              </div>
        </div>
    </section>
    <!-- Section Akhir -->

    <!-- Footer -->
    <footer class="bg-dark py-2">
        <div class="container">
            <div class="row mt-2">
                <div class="col-md-12 text-center text-white">
                    &copy; 2023 Iqbal 213040061. All Rights Reserved.
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>