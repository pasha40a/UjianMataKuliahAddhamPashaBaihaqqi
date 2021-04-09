-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2021 pada 14.05
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_user`
--

CREATE TABLE `admin_user` (
  `id_admin` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` bigint(20) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `password`, `username`) VALUES
(1, 'Chelsea Monica', 'catur', 'monica'),
(2, 'asdd', '123', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` bigint(20) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `jenis_kelamin`, `nama_mahasiswa`, `nim`, `password`) VALUES
(1, 'Pria', 'Aqil', '67890', 'gelap'),
(4, 'Laki - laki ', 'Pasha', '1611503267', '123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_mata_kuliah` bigint(20) NOT NULL,
  `nama_mata_kuliah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_mata_kuliah`, `nama_mata_kuliah`) VALUES
(1, 'Strategy Catur Terapan'),
(2, 'coba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` bigint(20) NOT NULL,
  `nilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nilai`) VALUES
(1, '80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` bigint(20) NOT NULL,
  `jawaban1` varchar(255) DEFAULT NULL,
  `jawaban2` varchar(255) DEFAULT NULL,
  `jawaban3` varchar(255) DEFAULT NULL,
  `jawaban4` varchar(255) DEFAULT NULL,
  `jawaban_benar` varchar(255) DEFAULT NULL,
  `pertanyaan1` varchar(255) DEFAULT NULL,
  `status_gambar` varchar(255) DEFAULT NULL,
  `id_soal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban_benar`, `pertanyaan1`, `status_gambar`, `id_soal`) VALUES
(1, 'Sidiq', 'Dadang', 'Jouzu', 'Tidak ada yang benar', '2', 'Siapa Dewa Kipas', 'https://akcdn.detik.net.id/community/media/visual/2021/03/19/dadang-subur-dewa-kipas-1_169.jpeg', 2),
(2, '1', '2', '3', '4', '3', 'coba', '/user-photos/download.png', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `plot_mata_kuliah`
--

CREATE TABLE `plot_mata_kuliah` (
  `id_plot_mata_kuliah` bigint(20) NOT NULL,
  `id_dosen` bigint(20) DEFAULT NULL,
  `id_mahasiswa` bigint(20) DEFAULT NULL,
  `id_matakuliah` bigint(20) DEFAULT NULL,
  `id_soal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `plot_mata_kuliah`
--

INSERT INTO `plot_mata_kuliah` (`id_plot_mata_kuliah`, `id_dosen`, `id_mahasiswa`, `id_matakuliah`, `id_soal`) VALUES
(1, 1, 1, 1, 1),
(2, 1, NULL, NULL, NULL),
(10, 1, 1, 1, 1),
(11, 1, 1, 1, 1),
(12, 1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` bigint(20) NOT NULL,
  `nama_soal` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `id_nilai` bigint(20) DEFAULT NULL,
  `id_plotmatakuliah` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `nama_soal`, `status`, `id_nilai`, `id_plotmatakuliah`) VALUES
(1, 'Skakmat Aqil', 1, 1, 1),
(2, 'biasa aja lah', 2, NULL, NULL),
(3, 'gak jago', 3, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_mata_kuliah`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjwdowj1x79y78oj4nbbu1idug` (`id_soal`);

--
-- Indeks untuk tabel `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  ADD PRIMARY KEY (`id_plot_mata_kuliah`),
  ADD KEY `FKqftn4db8rdya7afgu757rscge` (`id_dosen`),
  ADD KEY `FKtm2yc8xqhodxstiyebv1m847k` (`id_mahasiswa`),
  ADD KEY `FK2xouaqquvpbajpic1h2e7racj` (`id_matakuliah`),
  ADD KEY `FK954bklruq1opfh1xmwabi3p1t` (`id_soal`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcdpdmkfk4efhb22a2ir180b57` (`id_nilai`),
  ADD KEY `FKlvcq4gxs24jts3bodikupqfe3` (`id_plotmatakuliah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id_admin` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_mata_kuliah` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  MODIFY `id_plot_mata_kuliah` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `FKjwdowj1x79y78oj4nbbu1idug` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`);

--
-- Ketidakleluasaan untuk tabel `plot_mata_kuliah`
--
ALTER TABLE `plot_mata_kuliah`
  ADD CONSTRAINT `FK2xouaqquvpbajpic1h2e7racj` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_mata_kuliah`),
  ADD CONSTRAINT `FK954bklruq1opfh1xmwabi3p1t` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`),
  ADD CONSTRAINT `FKqftn4db8rdya7afgu757rscge` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `FKtm2yc8xqhodxstiyebv1m847k` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `FKcdpdmkfk4efhb22a2ir180b57` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`),
  ADD CONSTRAINT `FKlvcq4gxs24jts3bodikupqfe3` FOREIGN KEY (`id_plotmatakuliah`) REFERENCES `plot_mata_kuliah` (`id_plot_mata_kuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
