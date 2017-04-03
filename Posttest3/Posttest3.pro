/*
Nama : Muhammad Sarman Noorlah
NIM  : 1515015127
*/

predicates
nondeterm mengambilmk(symbol,symbol)
%pendeklarasian predicate mengambilmk bertipe data symbol dan symbol

nondeterm mk(symbol)
%pendeklarasian predicate mk dengan parameter bertipe data symbol

nondeterm nilaimk(symbol,symbol)
%pendeklarasian predicate nilaimk dengan parameter bertipe data symbol

nondeterm lulus(symbol,symbol)
%pendeklarasian predicate lulus dengan parameter bertipe data symbol dan symbol
nondeterm tdklulus(symbol,symbol)
%pendeklarasian predicate tdklulus dengan parameter bertipe data symbol dan symbol

clauses

mk("Intelejensi Buatan").
mk("PDE").
mk("Sistem Operasi").
%fakta untuk nama matakuliah

mengambilmk("irfan","Intelejensi Buatan").
mengambilmk("Komeng","Intelejensi Buatan").
mengambilmk("Dati","Intelejensi Buatan").
mengambilmk("Fatima","Intelejensi Buatan").
mengambilmk("Maspion","Intelejensi Buatan").
%fakta untuk mahasiswa yang mengambil matakuliah intelejensi buatan

mengambilmk("Ricky","PDE").
mengambilmk("Embang","PDE").
mengambilmk("Salmin","PDE").
mengambilmk("Vina","PDE").
mengambilmk("sondang","PDE").
%fakta untuk mahasiswa yang mengambil matakuliah PDE

mengambilmk("Pamuji","Sistem Operasi").
mengambilmk("Luki","Sistem Operasi").
mengambilmk("Sadek","Sistem Operasi").
mengambilmk("Yusida","Sistem Operasi").
mengambilmk("Eka","Sistem Operasi").
%fakta untuk mahasiswa yang mengambil matakuliah Sistem Operasi

nilaimk("irfan","A").
nilaimk("Komeng","D").
nilaimk("Dati","C").
nilaimk("Fatima","B").
nilaimk("Maspion","C").
%fakta untuk nilai mahasiswa dari matakuliah intelejen sibuatan


nilaimk("Ricky","E").
nilaimk("Embang","A").
nilaimk("Salmin","D").
nilaimk("Vina","B").
nilaimk("sondang","C").
%fakta untuk nilai mahasiswa dari matakuliah PDE

nilaimk("Pamuji","D").
nilaimk("Luki","E").
nilaimk("Sadek","B").
nilaimk("Yusida","A").
nilaimk("Eka","A").
%fakta untuk nilai mahasiswa dari matakuliah Sistem Operasi

lulus(X,Y):-
	nilaimk(X,Y),
	Y<>"D",
	Y<>"E".
%aturan mahasiswa yang lulus adalah mahasiswa yang lulus matakuliah jika nilai mahasiswa bukan D dan bukan E
	
tdklulus(X,Y):-
	nilaimk(X,Y),
	Y<>"A",
	Y<>"B",
	Y<>"C".
%aturan mahasiswa yang lulus adalah mahasiswa yang lulus matakuliah jika nilai mahasiswa bukan A, B, dan C	
	
goal
mengambilmk(Nama,"Intelejensi Buatan");	%menampilkan mahasiswa yang mengambil matakuliah Intelejensi Buatan
tdklulus(Nama,TidakLulus);		%menampilkan mahasiswa yang tidak lulus	
lulus(Nama,Lulus);			%menampilkan mahasiswa yang lulus	
mk(Matakuliah);				%menampilkan matakuliah yang ada
mengambilmk(NamaMahasiswa,_).		%menampilkan mahasiswa yang ada

	

