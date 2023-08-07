<?php  
$date = date('d-m-Y');

$total_bayar = mysqli_query($kon, "SELECT SUM(totbar_transaksi) AS totbar FROM tb_transaksi WHERE aTanggal_transaksi = '$date' ");
$total = mysqli_fetch_assoc($total_bayar);
$sudahbayar = mysqli_query($kon, "SELECT COUNT(*) AS sudah_bayar FROM tb_order WHERE status_order = '1' AND aTanggal_order = '$date' ");
$sudah = mysqli_fetch_assoc($sudahbayar);
$belumbayar = mysqli_query($kon, "SELECT COUNT(*) AS belum_bayar FROM tb_order WHERE status_order = '0' AND aTanggal_order = '$date' ");
$belum = mysqli_fetch_assoc($belumbayar);
$jumlahmakanan = mysqli_query($kon, "SELECT COUNT(*) AS makanan FROM tb_masakan ");
$makanan = mysqli_fetch_assoc($jumlahmakanan);
$jumlahkoki = mysqli_query($kon, "SELECT COUNT(*) AS Koki FROM tb_user WHERE id_level='5' ");
$koki = mysqli_fetch_assoc($jumlahkoki);
$jumlahwaiter = mysqli_query($kon, "SELECT COUNT(*) AS Pelayan FROM tb_user WHERE id_level='2' ");
$pelayan = mysqli_fetch_assoc($jumlahwaiter);
$jumlahkasir = mysqli_query($kon, "SELECT COUNT(*) AS kasir FROM tb_user WHERE id_level='3' ");
$kasir = mysqli_fetch_assoc($jumlahkasir);
$jumlahgudang = mysqli_query($kon, "SELECT COUNT(*) AS Gudang FROM tb_user WHERE id_level='4' ");
$gudang = mysqli_fetch_assoc($jumlahgudang);
?>

<div class="container mt-3">
	


	<!-- BARU -->
	<div class="row">
		<div class="col-4">
			<div class="card shadow-lg bg-light" style="height: 407px;">
			<center>
				<img src="assets/image/admin.png" class="pt-5" alt="foto" width="150">

				<div class="card-body">
					<h5 class="card-title">Selamat Datang <?= $_SESSION['level'] ?></h5>
					<p class="card-text"><?= $_SESSION['nama_user'] ?></p>
				</div>
			</center>
				
			</div>
		</div>
		<div class="col-8">
			<div class="row ">
				<div class="col">
					<div class="card shadow-lg bg-light mb-3">
						<div class="row">
							<div class="col-md-3">
								<i class="fas fa-chart-bar p-4 mt-2 fa-4x" ></i>
							</div>
							<div class="col-md-9">
								<div class="card-body">
									<h5 class="card-title">Total Penjualan hari ini : <?= $date ?></h5>
									<div class="row">
										<span class="btn btn-success btn-sm text-small"><?= $sudah['sudah_bayar'] ?> Terbayar</span>&nbsp;
										<span class="btn btn-danger btn-sm text-small"><?= $belum['belum_bayar'] ?> Belum bayar</span>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-lg bg-light mb-3">
						<div class="row">
							<div class="col-md-3">
								<i class="fas fa-coins p-4 mt-2 fa-4x"></i>
							</div>
							<div class="col-md-9">
								<div class="card-body">
									<h5 class="card-title">Total Pendapatan hari ini : <?= $month; ?></h5>
									<span class="btn btn-success btn-sm text-small">Rp. <?= rupiah($total['totbar']) ?></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="card shadow-lg bg-light mb-3 d-flex align-items-center">
						<div class="row">
							<div class="col-md-2">
								<i class="fas fa-user-tie p-4 mt-2 fa-4x"></i>
							</div>
							<div class="col-md-10">
								<div class="ml-4 card-body ">
									<h6 class="card-title">Total Pegawai :</h6>
									<span class="btn btn-primary btn-sm text-small"><?= $pelayan['Pelayan'] ?> Pelayan</span>
									<span class="btn btn-secondary btn-sm text-small"><?= $kasir['kasir'] ?> Kasir</span>
									<br>
									<span class="btn btn-primary btn-sm text-small mt-2"><?= $koki['Koki'] ?> Koki</span>
									<span class="btn btn-warning text-white btn-sm text-small mt-2"><?= $gudang['Gudang'] ?> Gudang</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="card shadow-lg bg-light mb-3">
						<div class="row">
							<div class="col-md-2">
								<i class="fas fa-utensils p-3 mt-2 fa-4x"></i>
							</div>
							<div class="col-md-10">
								<div class="ml-4 card-body">
									<h6 class="card-title">Total Menu : </h6>
									<span class="btn btn-warning text-white btn-sm text-small"><?= $makanan['makanan'] ?> menu</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-lg bg-light mb-3">
						<div class="row">
							<div class="col-md-2">
								<i class="fas fa-file-pdf p-3 mt-2 fa-4x"></i>
							</div>
							<div class="col-md-10">
								<div class="ml-4 card-body">
									<h6 class="card-title">Laporan</h6>
									<a href="index.php?laporan">
										<span class="btn btn-danger btn-sm text-small"><i class="fa fa-eye"></i> Lihat laporan</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	
</div>