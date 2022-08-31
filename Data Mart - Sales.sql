create view as sales
select j.tanggal,j.id_invoice,p.grup as tipe,p.nama as pelanggan,b.nama_barang,j.jumlah_barang,j.harga,(j.jumlah_barang * j.harga) as total_pembelian
from penjualan j
join pelanggan p on j.id_customer=p.id_customer
join barang b on j.id_barang=b.kode_barang