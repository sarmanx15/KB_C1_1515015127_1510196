%A membeli hp dengan spesifikasi () jika hape tersebut sama dengan hp B,

predicates
nondeterm membeli(symbol,symbol,integer)
nondeterm pengen_beli(symbol,symbol)
nondeterm harga(symbol,integer)

clauses

membeli(X,Y,Z):-
	pengen_beli(X,Y),
	harga(Y,Z).
	
pengen_beli(adi,xiaomi_mi5c).
pengen_beli(ari,iphone_6s).
pengen_beli(ani,oppo_f1_plus).
pengen_beli(abi,nokia_3310).

pengen_beli(dedi,Hp):-
	pengen_beli(adi,Hp).

harga(xiaomi_mi5c,2000000).
harga(iphone_6s,7000000).
harga(oppo_f1_plus,2000000).
harga(nokia_3310,3000000).


goal
membeli(Si,Beli,3000000);
membeli(Si,Beli,7000000).

