<?php  
// menghubungkan ke DB
include "../../koneksi.php";
session_start();

$id  = $_GET['id'];
$selesai = mysqli_query($kon, "UPDATE tb_order SET statusPesanan = 'cooked' WHERE id_order = '$id';
");
// echo ("UPDATE tb_order SET statusOrder = 'cooked' WHERE id_order = '$id'");exit;
header("location: ../index.php?order");