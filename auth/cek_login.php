<?php
// memulai session
session_start();
include '../koneksi.php';

// menerima data username dan password dari form
$username = $_POST['username'];
$password = $_POST['password'];

// cek database
$login = mysqli_query($kon, "SELECT * FROM tb_user WHERE username ='$username' AND password='$password'");
$cek = mysqli_num_rows($login);

// cek privilege dan set session
if ($cek > 0) {
	$data = mysqli_fetch_assoc($login);

	if ($data['id_level']==1) {
		$_SESSION['nama_user'] = $data['nama_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['level'] = "Admin";
		header("location:../dashboard/index.php?dashboard");

	} elseif ($data['id_level']==2) {
		$_SESSION['nama_user'] = $data['nama_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['level'] = "Pelayan";
		header("location:../dashboard/index.php?beranda");

	} elseif ($data['id_level']==3) {
		$_SESSION['nama_user'] = $data['nama_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['level'] = "Kasir";
		header("location:../dashboard/index.php?beranda");

	} elseif ($data['id_level']==4) {
		$_SESSION['nama_user'] = $data['nama_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['level'] = "Gudang";
		header("location:../dashboard/index.php?beranda");

	} elseif ($data['id_level']==5) {
		$_SESSION['nama_user'] = $data['nama_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['level'] = "Koki";
		header("location:../dashboard/index.php?beranda");
	} else {
		header("location:index.php?pesan=gagal");
	}
} else {
	header("location:index.php?pesan=gagal");
}
?>