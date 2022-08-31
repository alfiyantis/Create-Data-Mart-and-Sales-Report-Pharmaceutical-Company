CREATE DATABASE kimiafarma
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;
	
CREATE TABLE public.barang
(
    kode_barang varchar(50),
    sektor varchar(5),
	nama_barang varchar(50),
	tipe varchar(10),
	nama_tipe varchar(50),
	kode_lini int,
	lini varchar(25),
	kemasan varchar(25)
);

COPY public.barang
FROM 'D:\Data Science - Rakamin\Virtual Internship\Kimia Farma\barang.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE public.category
(
    CategoryID varchar(10),
    Category varchar(100),
	CreationDate date,
	ModifiedDate date,
	Status varchar(20)
);

COPY public.category
FROM 'D:\Data Science - Rakamin\Virtual Internship\Kimia Farma\category.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE public.company
(
    CompanyID varchar(10),
    Company varchar(100),
	Category varchar(10),
	Sales int,
	Profit int,
	UpdateDate date,
	PRIMARY KEY (CompanyID)
);

COPY public.company
FROM 'D:\Data Science - Rakamin\Virtual Internship\Kimia Farma\company.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE public.pelanggan
(
    id_customer varchar(20),
    level varchar(50),
	nama varchar(50),
	id_cabang_sales varchar(10),
	cabang_sales varchar(50),
	id_group varchar(5),
	grup varchar(10),
);

COPY public.pelanggan
FROM 'D:\Data Science - Rakamin\Virtual Internship\Kimia Farma\pelanggan.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE public.penjualan
(
    id_distributor varchar(5),
    id_cabang varchar(10),
	id_invoice varchar(15),
	tanggal date,
	id_customer varchar(20),
	id_barang varchar(50),
	jumlah_barang int,
	unit varchar(10),
	harga numeric,
	mata_uang varchar(5),
	brand_id varchar(10),
	lini varchar(25)
);

COPY public.penjualan
FROM 'D:\Data Science - Rakamin\Virtual Internship\Kimia Farma\penjualan.csv' 
DELIMITER ',' 
CSV HEADER;