<?php
require'koneksi.php';
 ?>
 <!DOCTYPE html>
<html>

<head>
    <title>TUGAS 3 - JSON INDEX</title>

</head>

<body>
    
        <div class="row">
            <h3>Menampilkan Data Barang Menggunakan JSON :</h3>
            <?php

$query = mysqli_query($conn, "select * from barang");
 
if (mysqli_num_rows($query) > 0) {
	# buat array
	$responsistem = array();
	$responsistem["data"] = array();
	while ($row = mysqli_fetch_assoc($query)) {
		# kerangka format penampilan data json
		$data['id'] = $row["id"];
		$data['id_barang'] = $row["id_barang"];
		$data['nama'] = $row["nama"];
		$data['kategori'] = $row["kategori"];
		$data['stok'] = $row["stok"];
		$data['satuan'] = $row["satuan"];
		$data['isi'] = $row["isi"];
		$data['harga_beli'] = $row["harga_beli"];
		$data['harga_jual'] = $row["harga_jual"];
		$data['expired'] = $row["expired"];
		array_push($responsistem["data"], $data);
 
	}
	echo json_encode($responsistem);
} else {
	# menmapilkan pesan jika tidak ada data dalam tabel
	$responsistem["message"]="tidak ada data";
	echo json_encode($responsistem);
}
?>
<div class="row">
            <h3>Menampilkan Data Jual Menggunakan JSON :</h3>
            <?php

$query = mysqli_query($conn, "select * from jual");
 
if (mysqli_num_rows($query) > 0) {
	# buat array
	$responsistem = array();
	$responsistem["data"] = array();
	while ($row = mysqli_fetch_assoc($query)) {
		# kerangka format penampilan data json
		$data['id'] = $row["id"];
		$data['faktur'] = $row["faktur"];
		$data['barang'] = $row["barang"];
		$data['jumlah'] = $row["jumlah"];
		$data['tanggal'] = $row["tanggal"];
		$data['customer'] = $row["customer"];
		$data['total'] = $row["total"];
		$data['sesjual'] = $row["sesjual"];
		array_push($responsistem["data"], $data);
 
	}
	echo json_encode($responsistem);
} else {
	# menmapilkan pesan jika tidak ada data dalam tabel
	$responsistem["message"]="tidak ada data";
	echo json_encode($responsistem);
}
?>
<div class="row">
            <h3>Menampilkan Data Barang Menggunakan JSON :</h3>
            <?php

$query = mysqli_query($conn, "select * from kategori");
 
if (mysqli_num_rows($query) > 0) {
	# buat array
	$responsistem = array();
	$responsistem["data"] = array();
	while ($row = mysqli_fetch_assoc($query)) {
		# kerangka format penampilan data json
		$data['id'] = $row["id"];
		$data['id_kategori'] = $row["id_kategori"];
		$data['kategori'] = $row["kategori"];
		array_push($responsistem["data"], $data);
 
	}
	echo json_encode($responsistem);
} else {
	# menmapilkan pesan jika tidak ada data dalam tabel
	$responsistem["message"]="tidak ada data";
	echo json_encode($responsistem);
}
?>