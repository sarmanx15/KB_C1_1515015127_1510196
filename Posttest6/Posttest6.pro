/*****************************************************************************
 Nama	: Muhammad Sarman Noorlah
 NIM	: 1515015127
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) % Pendeklarasian predicate factorial dengan argumen bertipe data unsigned dan real dimana unsigned merupakan bilangan yang hanya memuat bilangan positif dan real adalah bilangan yg >=0 dan berupa bilangan desimal
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %pendeklarasian predicate factorial dengan argumen bertipe unsigned, real, unsigned, real dimana unsigned merupakan bilangan yang hanya memuat bilangan positif dan real adalah bilangan yg >=0 dan berupa bilangan desimal

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):-
	factorial(N,FactN,1,1.0).
	/* 
	pada klausa ini memiliki 2 argumen dengan satu syarat, dia akan memanggil dirinya sendiri dengan memuat 4 argumen,
	karena clausa ini memuat 2 argumen saja, maka akan di unifikasi dengan clausa lain yg memiliki 4 argumen.
	*/

  factorial(N,FactN,N,FactN):-!. 
  	/*
  	Pada klausa ini memiliki 4 argumen, ketika argumen pertama dengan argumen ketiga bernilai sama dan argumen kedua dengan argumen keempat bernilai sama, maka operasi akan dihentikan
 	*/
  factorial(N,FactN,I,P):-
	NewI = I+1,
	NewP = P*NewI,
	factorial(N, FactN, NewI, NewP).
	/*
	pada klausa ini memiliki 4 argumen dengan 3 syarat, yang pertama mencari nilai NewI, yg kedia mencari nilai NewP, yg ketiga yaitu memanggil dirinya sendiri dengan memuat 4 argumen
	yang diisi oleh nilai N, FactN, NewI, NewP. kemudian melakukan unifikasi pada rule pertama, jika gagal akan dilanjutkan unifikasi pada rule kedua, jika gagal maka akan dilanjutkan ke rule ke tiga.
	proses rekursif akan terus berlangsung sampai berhenti pada rule kedua dimana jika nilai argumennya telah terpenuhi.
	*/
goal
  factorial(3,X).
  /*
  pada goal ini goal akan melakukan unifikasi ke klausa diatas, dengan membawa 2 argumen maka pada rule pertama memenuhi syarat maka
  prolog akan melakukan rekursi pada dirinya sendiri atau rule pertama, karena membawa 4 argumen, maka unifikasi tidak berhasil pada rule pertama.
  kemudian melakukan unifikasi pada rule kedua, jumlah argumennya sama tetapi nilai argumennya tidak memenuhi syatat maka dilanjutkan ke rule tiga.
  pada rule tiga argumennya sama lalu melakukan perhitungan mencari nilai NewI, dan New P. lalu melakukan pemanggilan terhadap dirinya sendiri dimana dia akan melakukan unifikasi dengan
  rule pertama, argument tidak sama maka dilanjut ke rule kedua, nilai argumen masih tidak sesuai maka dilanjut ke rule ke tiga. dimana akan mencari nilai NewI, NewP lalu melakukan rekursi
  dengan nilai argumen yang lebih baru hingga memenuhi syarat pada argumen kedua lalu proses dihentikan. dan didapatkan nilai x = 6.
  */
  /*
  berikut adalah rincian perhitungan dan rekursi program
  goal -> factorial(3,X).
  unifikasi -> factorial(N,FactN):-
  		rekursif -> factorial(3,FactN,1,1.0).
  unifikasi -> factorial(N,FactN,N,FactN)
  		tidak memenuhi syarat. lanjut ke rule berikutnya.
  
  unifikasi -> factorial(3. FactN, 1, 1.0):-
  		NewI = 1+1
  		     = 2
  		NewP = 1.0*2
  		     = 2.0
  		rekursif -> factorial(3,FactN, 2, 2.0).
 
 unifikasi -> factorial(N,FactN)
 		tidak memenuhi syarat. lanjut ke rule berikutnya.
 unifikasi -> factorial(N,FactN,N,FactN)
  		tidak memenuhi syarat. lanjut ke rule berikutnya.
 unifikasi -> factorial(4, FactN, 2,2.0)
 		NewI = 2+1
  		     = 3
  		NewP = 2.0*3
  		     = 6.0
  		rekursif -> factorial(3,FactN, 3, 6.0).
  		
 unifikasi -> factorial(N,FactN)
 		tidak memenuhi syarat. lanjut ke rule berikutnya.  		

  unifikasi -> factorial(N,FactN,N,FactN)
  		factorial(3, factN, 3, 6.0)
  		FactN = 6.0
  		unifikasi memenuhi syarat dan proses dihentikan maka didapatkan nilai X = 6 		
  */ 
