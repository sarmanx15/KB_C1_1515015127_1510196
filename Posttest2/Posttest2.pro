
/*****************************************************************************************
Nama	: Muhammad Sarman Noorlah
NIM	: 1515015127
*****************************************************************************************/
nowarnings

domains
nama=symbol
praktikum=string
pretest, posttest, uas ,nilai=integer

predicates
nondeterm mengambilpraktikum(nama,praktikum)
nondeterm nilai(nama,praktikum,pretest,posttest,uas)
nondeterm luluspraktikum(nama, praktikum,nilai)

clauses
mengambilpraktikum(ana,"Pemrograman Visual").
mengambilpraktikum(ani,"Pemrograman Visual").
mengambilpraktikum(intan,"Pemrograman Visual").
mengambilpraktikum(nia,"Pemrograman Visual").
mengambilpraktikum(dina,"Pemrograman Visual").
mengambilpraktikum(rudi,"Pemrograman Visual").
mengambilpraktikum(sugeng,"Pemrograman Visual").

mengambilpraktikum(ana,"Kecerdasan Buatan").
mengambilpraktikum(ani,"Kecerdasan Buatan").
mengambilpraktikum(intan,"Kecerdasan Buatan").
mengambilpraktikum(nia,"Kecerdasan Buatan").
mengambilpraktikum(dina,"Kecerdasan Buatan").
mengambilpraktikum(rudi,"Kecerdasan Buatan").
mengambilpraktikum(sugeng,"Kecerdasan Buatan").

mengambilpraktikum(ana,"Pemrograman Framework").
mengambilpraktikum(ani,"Pemrograman Framework").
mengambilpraktikum(intan,"Pemrograman Framework").
mengambilpraktikum(nia,"Pemrograman Framework").
mengambilpraktikum(dina,"Pemrograman Framework").
mengambilpraktikum(rudi,"Pemrograman Framework").
mengambilpraktikum(sugeng,"Pemrograman Framework").

mengambilpraktikum(ana,"SMBD").
mengambilpraktikum(ani,"SMBD").
mengambilpraktikum(intan,"SMBD").
mengambilpraktikum(nia,"SMBD").
mengambilpraktikum(dina,"SMBD").
mengambilpraktikum(rudi,"SMBD").
mengambilpraktikum(sugeng,"SMBD").

% DAFTAR NILAI

nilai(ana,"Pemrograman Visual",54,76,56).
nilai(ani,"Pemrograman Visual",76,87,66).
nilai(intan,"Pemrograman Visual",56,76,55).
nilai(nia,"Pemrograman Visual",76,65,55).
nilai(dina,"Pemrograman Visual",77,54,87).
nilai(rudi,"Pemrograman Visual",86,76,56).
nilai(sugeng,"Pemrograman Visual",75,87,66).

nilai(ana,"Kecerdasan Buatan",67,65,77).
nilai(ani,"Kecerdasan Buatan",55,76,88).
nilai(intan,"Kecerdasan Buatan",78,78,99).
nilai(nia,"Kecerdasan Buatan",87,77,87).
nilai(dina,"Kecerdasan Buatan",65,79,78).
nilai(rudi,"Kecerdasan Buatan",89,91,74).
nilai(sugeng,"Kecerdasan Buatan",87,75,93).

nilai(ana,"Pemrograman Framework",77,76,54).
nilai(ani,"Pemrograman Framework",90,89,65).
nilai(intan,"Pemrograman Framework",76,87,65).
nilai(nia,"Pemrograman Framework",89,98,77).
nilai(dina,"Pemrograman Framework",90,87,65).
nilai(rudi,"Pemrograman Framework",78,76,98).
nilai(sugeng,"Pemrograman Framework",54,87,89).

nilai(ana,"SMBD",57,78,65).
nilai(ani,"SMBD",76,76,54).
nilai(intan,"SMBD",80,88,67).
nilai(nia,"SMBD",90,87,75).
nilai(dina,"SMBD",74,60,54).
nilai(rudi,"SMBD",54,54,76).
nilai(sugeng,"SMBD",76,89,50).


luluspraktikum(Nama,Praktikum,NilaiAkhir) :-
	write("======= Program Data Nilai Mahasiswa ========"),nl,
	write("Daftar Nama Praktikum"),nl,
	write("Pemrograman Visual"),nl,
	write("Pemrograman Framework"),nl,
	write("Kecerdasan Buatan"),nl,
	write("SMBD"),nl,
	write("=====  Program ini bersifat Case Sensitive ======"),nl,
	write("Tulis Nama Matakuliah Praktikum: "),
	readln(Praktikum),nl,
	write("Berikut adalah Nama Mahasiswa yang Lulus Mata Kuliah Praktikum "),
	write(Praktikum),nl,
	mengambilpraktikum(Nama,Praktikum), 
	nilai(Nama,Praktikum,Pretest,Posttest,UAS), 
	NilaiAkhir = (Pretest+Posttest+UAS)/3,
	NilaiAkhir>55.

goal
luluspraktikum(Nama,_,NilaiAkhir).