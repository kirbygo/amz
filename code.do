* Amz

*Preamble
* Directories
cd "D:\Temp\Amz_data\INEGI_prices"
global raw : pwd
cd "D:\0kirbygo\Desktop\amzn\work\dta"
global dta : pwd
cd "D:\0kirbygo\Desktop\amzn\work\grp"
global grp : pwd


* Average prices to dta
clear all
cd $raw
import delimited "alcoholtabaco11-18.CSV", varnames(nonames) rowrange(7)
save "alcoholtabaco11-18.dta", replace

clear all
import delimited "alimentos11-18.CSV", varnames(nonames) rowrange(7)
save "alimentos11-18.dta", replace

clear all
import delimited "esparcimiento11-18.CSV", varnames(nonames) rowrange(7)
save "esparcimiento11-18.dta", replace

clear all
import delimited "higiene11-18.CSV", varnames(nonames) rowrange(7)
save "higiene11-18.dta", replace

clear all
import delimited "ropa11-18.CSV", varnames(nonames) rowrange(7)
save "ropa11-18.dta", replace

* Additional work
clear all
import delimited "mueblesaparatoslimpiezahogar11-18.CSV", varnames(nonames) rowrange(7)
sort v14

*Juntamos
replace v16 = v16 + " " + v17 in 1/45
replace v17 = "" in 1/45
replace v15 = v15 + " " + v16 in 1/45
replace v16 = "" in 1/45
replace v14 = v14 + " " + v15 in 1/45
replace v15 = "" in 1/45
replace v13 = v13 + " " + v14 in 1/45
replace v14 = "" in 1/45

*Ajustamos
replace v13 = ltrim(v13)
replace v13 = rtrim(v13)
replace v13 = itrim(v13)
replace v13 = subinstr(v13,`" ,""',`"",""',1) in 1/45

*Separamos chido
gen temp = strpos(v13,`"",""')
replace v14 = substr(v13,temp,50) in 1/45
replace v13 = subinstr(v13,v14,"",1) in 1/45
replace v14 = subinstr(v14,`"",""',"",1) in 1/45
drop temp
gen temp = strpos(v14,`"",""')
replace v15 = substr(v14,temp,40) in 1/45
replace v14 = subinstr(v14,v15,"",1) in 1/45
replace v15 = subinstr(v15,`"",""',"",1) in 1/45
drop temp
gen temp = strpos(v15,`"",""')
replace v16 = substr(v15,temp,30) in 1/45
replace v15 = subinstr(v15,v16,"",1) in 1/45
replace v16 = subinstr(v16,`"",""',"",1) in 1/45
drop temp
gen temp = strpos(v16,`"",""')
replace v17 = substr(v16,temp,20) in 1/45
replace v16 = subinstr(v16,v17,"",1) in 1/45
replace v17 = subinstr(v17,`"",""',"",1) in 1/45
drop temp
replace v17="DESENCADENADO" if v17==`"DESENCADENADO""'

save "mueblesaparatoslimpiezahogar11-18.dta", replace


clear all
import delimited "calzadoyaccesorios11-18.CSV", varnames(nonames) rowrange(7)
sort v14

*Juntamos
replace v16 = v16 + " " + v17 in 1/12
replace v17 = "" in 1/12
replace v15 = v15 + " " + v16 in 1/12
replace v16 = "" in 1/12
replace v14 = v14 + " " + v15 in 1/12
replace v15 = "" in 1/12
replace v13 = v13 + " " + v14 in 1/12
replace v14 = "" in 1/12

*Ajustamos
replace v13 = ltrim(v13)
replace v13 = rtrim(v13)
replace v13 = itrim(v13)
replace v13 = subinstr(v13,`" ,""',`"",""',1) in 1/12

*Separamos chido
gen temp = strpos(v13,`"",""')
replace v14 = substr(v13,temp,50) in 1/12
replace v13 = subinstr(v13,v14,"",1) in 1/12
replace v14 = subinstr(v14,`"",""',"",1) in 1/12
drop temp
gen temp = strpos(v14,`"",""')
replace v15 = substr(v14,temp,40) in 1/12
replace v14 = subinstr(v14,v15,"",1) in 1/12
replace v15 = subinstr(v15,`"",""',"",1) in 1/12
drop temp
gen temp = strpos(v15,`"",""')
replace v16 = substr(v15,temp,30) in 1/12
replace v15 = subinstr(v15,v16,"",1) in 1/12
replace v16 = subinstr(v16,`"",""',"",1) in 1/12
drop temp
gen temp = strpos(v16,`"",""')
replace v17 = substr(v16,temp,20) in 1/12
replace v16 = subinstr(v16,v17,"",1) in 1/12
replace v17 = subinstr(v17,`"",""',"",1) in 1/12
drop temp
replace v17="DESENCADENADO" if v17==`"DESENCADENADO""'

save "calzadoyaccesorios11-18.dta", replace


clear all
import delimited "todo18-21.CSV", varnames(nonames) rowrange(7)
sort v14
drop v19

*Juntamos
replace v17 = v17 + " " + v18 in 1/1035
replace v18 = "" in 1/1035
replace v16 = v16 + " " + v17 in 1/1035
replace v17 = "" in 1/1035
replace v15 = v15 + " " + v16 in 1/1035
replace v16 = "" in 1/1035
replace v14 = v14 + " " + v15 in 1/1035
replace v15 = "" in 1/1035
replace v13 = v13 + " " + v14 in 1/1035
replace v14 = "" in 1/1035
drop v18

*Ajustamos
replace v13 = ltrim(v13)
replace v13 = rtrim(v13)
replace v13 = itrim(v13)
replace v13 = subinstr(v13,`" ,""',`"",""',1) in 1/1035

*957
replace v13=`"SAMSUNG, 32 SAMSUNG PANTALLA DE 32 PULG,SKU 1003478","5399","1","UNIDAD"' in 957

*Separamos chido
gen temp = strpos(v13,`"",""')
replace v14 = substr(v13,temp,50) in 1/1035
replace v13 = subinstr(v13,v14,"",1) in 1/1035
replace v14 = subinstr(v14,`"",""',"",1) in 1/1035
drop temp
gen temp = strpos(v14,`"",""')
replace v15 = substr(v14,temp,40) in 1/1035
replace v14 = subinstr(v14,v15,"",1) in 1/1035
replace v15 = subinstr(v15,`"",""',"",1) in 1/1035
drop temp
gen temp = strpos(v15,`"",""')
replace v16 = substr(v15,temp,30) in 1/1035
replace v15 = subinstr(v15,v16,"",1) in 1/1035
replace v16 = subinstr(v16,`"",""',"",1) in 1/1035
drop temp
gen temp = strpos(v16,`"",""')
replace v17 = substr(v16,temp,20) in 1/1035
replace v16 = subinstr(v16,v17,"",1) in 1/1035
replace v17 = subinstr(v17,`"",""',"",1) in 1/1035
drop temp
replace v17="DESENCADENADO" if v17==`"DESENCADENADO""'

save "$raw\todo18-21.dta", replace

*********************************************************************************** Append total
clear all
use "$raw\todo18-21.dta"
append using "$raw\calzadoyaccesorios11-18.dta"
append using "$raw\mueblesaparatoslimpiezahogar11-18.dta"
destring v14, replace
destring v15, replace
append using "$raw\ropa11-18.dta"
append using "$raw\higiene11-18.dta"
append using "$raw\esparcimiento11-18.dta"
append using "$raw\alimentos11-18.dta"
append using "$raw\alcoholtabaco11-18.dta"

*Renaming
rename v1 year
rename v2 month
rename v3 datepub
rename v4 idcity
rename v5 city
rename v6 div
rename v7 group
rename v8 clas
rename v9 subclass
rename v10 idgeneric
rename v11 generic
rename v12 consecutive
rename v13 description
rename v14 price
rename v15 quantity
rename v16 unit
rename v17 status

*Dates
gen datestring = string(year) + "-" + string(month)
gen date = monthly(datestring,"YM")
gen datenumber = date
format date %tm
drop datepub

*String cleaning
replace div = ltrim(div)
replace div = rtrim(div)
replace div = itrim(div)
replace group = ltrim(group)
replace group = rtrim(group)
replace group = itrim(group)
replace clas = ltrim(clas)
replace clas = rtrim(clas)
replace clas = itrim(clas)
replace subclass = ltrim(subclass)
replace subclass = rtrim(subclass)
replace subclass = itrim(subclass)
replace generic = ltrim(generic)
replace generic = rtrim(generic)
replace generic = itrim(generic)
replace description = ltrim(description)
replace description = rtrim(description)
replace description = itrim(description)
replace unit = ltrim(unit)
replace unit = rtrim(unit)
replace unit = itrim(unit)

*Generate ids
gen iddiv = substr(div,1,1)
destring iddiv, replace
gen idgroup = substr(group,1,1) + substr(group,3,1)
destring idgroup, replace
gen idclas = substr(clas,1,1) + substr(clas,3,1) + substr(clas,5,1)
destring idclas, replace
gen idsubclass = substr(subclass,1,2)
destring idsubclass, replace

*Save
compress
save "$raw\db.dta", replace


************************************************************************************* Creating a list of products
clear all
use "$raw\db.dta"

*tab subclass, m
* 1 a 73
*tab idgeneric, m
* 1 a 332

*ID to the product level
gen double idcitsubcgenconsec = idcity*100000000000 + idsubclass*100000000 + idgeneric*10000 + consecutive

*When an ID changes in time
gen statusnum = 0
replace statusnum = 1 if status=="DESENCADENADO"
* Watch out, this is not perfect. Some products are unchained but still the same

*Grup by new products
gen perro = statusnum
bysort idcitsubcgenconsec (date): replace perro = cond(statusnum[_n]==1,perro[_n-1]+1,max(perro[_n-1],0),.)
replace perro = perro+1

*The real ID considering products change across time
gen double idcitsubcgenconsectime = idcitsubcgenconsec*1000 + perro
drop perro

format idcitsubcgenconsectime idcitsubcgenconsec %20.0f

collapse (count) count_price=price (first) idcitsubcgenconsec idcity city iddiv div idgroup group idclas clas idsubclass subclass idgeneric generic consecutive description (min) min_date=date (max) max_date=date,by(idcitsubcgenconsectime)

compress
save "$raw\listprod.dta", replace

************************************************************************************* INPC weights
clear all
*Some adjustments were needed to paste data, as there are 32 generics with different names, but most are easily traceable.
import excel "D:\Temp\Amz_data\INEGI_prices\pond_INPC.xlsx", sheet("stata2") cellrange(A4:B334) firstrow
compress
save "$raw\pond.dta", replace

************************************************************************************* Creating a list of products
clear all
use "$raw\listprod.dta"

*Merge weights
merge m:1 generic using "$raw\pond.dta"
keep if _merge==3
drop _merge

* We remove products that are not able to be found online
gen malo = strpos(description,"GRANEL")
drop if malo>0
drop malo
gen malo = strpos(description,"SERVICIO")
drop if malo>0
drop malo
gen malo = strpos(description,"REVELADO")
drop if malo>0
drop malo

sort pond description

* Cleaning manual
drop if generic == "Tortilla de maíz"
drop if generic == "Otros alimentos cocinados"
drop if generic == "Pan dulce"
drop if generic == "Huevo"
drop if generic == "Papa y otros tubérculos"
drop if generic == "Jamón"
drop if generic == "Queso fresco"
drop if generic == "Pescado"
drop if generic == "Equipo terminal de comunicación"
*Puro índice
drop if generic == "Uniformes escolares"
drop if generic == "Pollos rostizados"
drop if generic == "Pan blanco"
drop if generic == "Computadoras"
* Computadoras porque no vienen precios individuales
drop if generic == "Carnes secas, procesadas y otros embutidos"
drop if generic == "Carnes secas y otros embutidos"
drop if generic == "Yogurt"
drop if generic == "Manzana"
drop if generic == "Otras frutas"
drop if generic == "Chorizo"
drop if generic == "Otras verduras y legumbres"
drop if generic == "Salchichas"
drop if generic == "Naranja"
drop if generic == "Cebolla"
drop if generic == "Queso Oaxaca y asadero"
drop if generic == "Crema y otros productos a base de leche"
drop if generic == "Crema de leche"
drop if generic == "Tomate verde"
drop if generic == "Recámaras"
*No venden en amz
drop if generic == "Barbacoa o birria"
drop if generic == "Pastelillos y pasteles a granel"
drop if generic == "Salas"
*ni salas
drop if generic == "Lechuga y col"
drop if generic == "Pizzas"
drop if generic == "Carnitas"
drop if generic == "Camarón"
drop if generic == "Helados"
drop if generic == "Helados, nieves y paletas de hielo"
drop if generic == "Otros quesos"
drop if generic == "Tortillas de harina de trigo"
drop if generic == "Plantas y flores"
drop if generic == "Papaya"
drop if generic == "Chile seco"
drop if generic == "Queso manchego o Chihuahua"
drop if generic == "Comedores y antecomedores"
drop if generic == "Otros chiles frescos"
drop if generic == "Limón"
drop if generic == "Nopales"
drop if generic == "Servicio de tintorería"
drop if generic == "Otras legumbres"
drop if generic == "Servicio de lavandería"
drop if generic == "Melón"
drop if generic == "Periódicos"
drop if generic == "Pepino"
drop if generic == "Piña"
drop if generic == "Otros pescados y mariscos en conserva"
drop if generic == "Mantequilla"
drop if generic == "Manteca de cerdo"
drop if generic == "Tocino"
drop if generic == "Queso amarillo"
drop if generic == "Revistas"
drop if generic == "Otros mariscos"
drop if generic == "Leche de soya"
drop if generic == "Alfombras y otros materiales para pisos"
drop if generic == "Dulces, cajetas y miel"
drop if generic == "Aparatos de telefonía fija"
drop if generic == "Otros utensilios de cocina"
drop if generic == "Calentadores para agua"
drop if generic == "Chícharo"
drop if generic == "Queso manchego y Chihuahua"
drop if generic == "Otras Frutas"
drop if generic == "Queso Oaxaca o asadero"
drop if generic == "Pollo"
drop if generic == "Carne de cerdo"
drop if generic == "Carne de res"
drop if generic == "Zanahoria"
drop if generic == "Vísceras de res"
drop if generic == "Sandía"
drop if generic == "Uva"
drop if generic == "Jitomate"
drop if generic == "Plátanos"
drop if generic == "Durazno"
drop if generic == "Ejotes"
drop if generic == "Chayote"
drop if generic == "Calabacita"
drop if generic == "Chile serrano"
drop if generic == "Aguacate"
drop if generic == "Pera"
drop if generic == "Chile poblano"
drop if description=="."

keep idcity city idgeneric generic description min_date max_date count_price pond idcitsubcgenconsectime

gen nueva=description
clean_name nueva ,case(upper)
trimblnk nueva

replace nueva = ltrim(nueva)
replace nueva = rtrim(nueva)
replace nueva = itrim(nueva)

replace nueva = subinstr(nueva,"Á","A",20)
replace nueva = subinstr(nueva,"É","E",20)
replace nueva = subinstr(nueva,"Í","I",20)
replace nueva = subinstr(nueva,"Ó","O",20)
replace nueva = subinstr(nueva,"Ú","U",20)

replace nueva = subinstr(nueva,"ALGODON","ALG",20)
replace nueva = subinstr(nueva,"PAQUETES","PAQ",20)
replace nueva = subinstr(nueva,"PAQUETE","PAQ",20)
replace nueva = subinstr(nueva,"PIEZAS","PZ",20)
replace nueva = subinstr(nueva,"PIEZA","PZ",20)
replace nueva = subinstr(nueva,"PZS","PZ",20)
replace nueva = subinstr(nueva,"PZAS","PZ",20)
replace nueva = subinstr(nueva,"PZA","PZ",20)
replace nueva = subinstr(nueva,"LITROS","LT",20)
replace nueva = subinstr(nueva,"LITRO","LT",20)
replace nueva = subinstr(nueva,"(","",20)
replace nueva = subinstr(nueva,")","",20)
replace nueva = subinstr(nueva,"'","",20)
replace nueva = subinstr(nueva,"`","",20)
replace nueva = subinstr(nueva,"¨","",20)
replace nueva = subinstr(nueva,"´","",20)
replace nueva = subinstr(nueva,"*","",20)
replace nueva = subinstr(nueva,"}","",20)
replace nueva = subinstr(nueva,"{","",20)
replace nueva = subinstr(nueva,"~","",20)
replace nueva = subinstr(nueva,"[","",20)
replace nueva = subinstr(nueva,"]","",20)
replace nueva = subinstr(nueva,":","",20)
replace nueva = subinstr(nueva,";","",20)
replace nueva = subinstr(nueva,"/","",20)
replace nueva = subinstr(nueva,"?","",20)
replace nueva = subinstr(nueva,"\","",20)
replace nueva = subinstr(nueva,"¡","",20)
replace nueva = subinstr(nueva,"!","",20)
replace nueva = subinstr(nueva,"$","",20)
replace nueva = subinstr(nueva,"#","",20)
replace nueva = subinstr(nueva,"<","",20)
replace nueva = subinstr(nueva,">","",20)
replace nueva = subinstr(nueva,"Ñ","N",20)
replace nueva = subinstr(nueva," ,",",",20)
replace nueva = subinstr(nueva,"LTS","LT",20)
replace nueva = subinstr(nueva,".","",20)
replace nueva = subinstr(nueva,"%","",20)
replace nueva = subinstr(nueva,"Ð","N",20)
replace nueva = subinstr(nueva,"+","",20)
replace nueva = subinstr(nueva,`"""',"",20)
replace nueva = subinstr(nueva,"@","",20)
replace nueva = subinstr(nueva,"&","",20)

*replace nueva = subinstr(nueva,",","",20)

replace nueva = subinstr(nueva,"C1","1",20)
replace nueva = subinstr(nueva,"C2","2",20)
replace nueva = subinstr(nueva,"C3","3",20)
replace nueva = subinstr(nueva,"C4","4",20)
replace nueva = subinstr(nueva,"C5","5",20)
replace nueva = subinstr(nueva,"C6","6",20)
replace nueva = subinstr(nueva,"C7","7",20)
replace nueva = subinstr(nueva,"C8","8",20)
replace nueva = subinstr(nueva,"C9","9",20)
replace nueva = subinstr(nueva,"C0","0",20)
replace nueva = subinstr(nueva,"C 1","1",20)
replace nueva = subinstr(nueva,"C 2","2",20)
replace nueva = subinstr(nueva,"C 3","3",20)
replace nueva = subinstr(nueva,"C 4","4",20)
replace nueva = subinstr(nueva,"C 5","5",20)
replace nueva = subinstr(nueva,"C 6","6",20)
replace nueva = subinstr(nueva,"C 7","7",20)
replace nueva = subinstr(nueva,"C 8","8",20)
replace nueva = subinstr(nueva,"C 9","9",20)
replace nueva = subinstr(nueva,"C 0","0",20)

replace nueva = subinstr(nueva,"CORTE SINTETICO","COR SINT",20)
replace nueva = subinstr(nueva,"SUELA SINTETICA","SUE SINT",20)
replace nueva = subinstr(nueva,"CORTE PIEL","COR PIEL",20)
replace nueva = subinstr(nueva,"ZAPATOS","ZAP",20)
replace nueva = subinstr(nueva,"ZAPATO","ZAP",20)
replace nueva = subinstr(nueva,"PANUELOS DESECHABLES","PAN DES",20)
replace nueva = subinstr(nueva,"SANDALIAS","SAN",20)
replace nueva = subinstr(nueva,"SANDALIA","SAN",20)
replace nueva = subinstr(nueva,"COCA COLA","COCACOLA",20)
replace nueva = subinstr(nueva,"ONDULADAS","",20)
replace nueva = subinstr(nueva,"E PURA","EPURA",20)
replace nueva = subinstr(nueva,"ULTRADESLIZANTE","",20)
replace nueva = subinstr(nueva,"MODELO","MOD",20)
replace nueva = subinstr(nueva,"VARIOS","",20)
replace nueva = subinstr(nueva,"POLIESTER","POL",20)
replace nueva = subinstr(nueva,"POLIESTE","POL",20)
replace nueva = subinstr(nueva,"ACCESORIOS","ACC",20)
replace nueva = subinstr(nueva,"ELASTANO","ELA",20)
replace nueva = subinstr(nueva,"PULGADAS","",20)
replace nueva = subinstr(nueva,"PULGS","",20)
replace nueva = subinstr(nueva,"PULG","",20)
replace nueva = subinstr(nueva,"A PARTIR DE LOS","",20)
replace nueva = subinstr(nueva,"A PARTIR DE","",20)
replace nueva = subinword(nueva,"DE","",20)
replace nueva = subinstr(nueva,"PAPEL HIGIENICO","PAPEL",20)
replace nueva = subinstr(nueva,"JUEGOS","JGO",20)
replace nueva = subinstr(nueva,"JUEGO","JGO",20)
replace nueva = subinstr(nueva,"DIDACTICO","",20)
replace nueva = subinstr(nueva,"BOTELLAS","BOT",20)
replace nueva = subinstr(nueva,"PAÐUELOS DESECHABLES","PAN DES",20)
replace nueva = subinword(nueva,"HOJAS","H",20)
replace nueva = subinstr(nueva,"ACABADO","",20)
replace nueva = subinstr(nueva,"FORJADO","",20)
replace nueva = subinword(nueva,"HOJA","H",20)
replace nueva = subinword(nueva,"HOJ","H",20)
replace nueva = subinword(nueva,"HO","H",20)
replace nueva = subinstr(nueva,"ESMERILADO","",20)
replace nueva = subinstr(nueva,"SUAVIZANTE","SUAV",20)
replace nueva = subinstr(nueva,"MAQUILLAJE","MAQ",20)
replace nueva = subinstr(nueva,"MESES","M",20)
replace nueva = subinstr(nueva,"IMPRESION DIGITAL","IMP DIG",20)
replace nueva = subinstr(nueva,"PAPEL","PAP",20)
replace nueva = subinstr(nueva,"FOTOGRAFIA","FOTO",20)
replace nueva = subinstr(nueva,"TRADICIONAL","TRAD",20)
replace nueva = subinstr(nueva,"BOLSAS","BOL",20)
replace nueva = subinstr(nueva,"BOLSA","BOL",20)
replace nueva = subinstr(nueva,"BOTELLA","BOT",20)
replace nueva = subinstr(nueva,"RETORNABLE","RET",20)
replace nueva = subinstr(nueva,"ROLLOS","ROL",20)
replace nueva = subinstr(nueva,"ROLLO","ROL",20)
replace nueva = subinstr(nueva,"DIFERENTES","DIF",20)
replace nueva = subinstr(nueva,"DIFERENTE","DIF",20)
replace nueva = subinword(nueva,"PARA","",20)
replace nueva = subinstr(nueva,"AEROSOL","AER",20)
replace nueva = subinstr(nueva,"ULTRAPASTEURIZADA","",20)
replace nueva = subinstr(nueva,"PASTEURIZADA","",20)
replace nueva = subinstr(nueva,"DESLACTOZADA","DESLAC",20)
replace nueva = subinstr(nueva,"ENVASES","",20)
replace nueva = subinstr(nueva,"ENVASE","",20)
replace nueva = subinstr(nueva,"CONCENTRADO","CONC",20)
replace nueva = subinstr(nueva,"WALT DISNEY","WALTDISNEY",20)
replace nueva = subinstr(nueva,"BLU RAY","BLURAY",20)
replace nueva = subinstr(nueva,"EN POLVO","POL",20)
replace nueva = subinstr(nueva,"POLVO","POL",20)
replace nueva = subinstr(nueva,"DIDACTICO","DID",20)
replace nueva = subinword(nueva,"CHICA","",20)
replace nueva = subinstr(nueva,"CORPORALLIQUIDA","CORPORAL LIQ",20)
replace nueva = subinstr(nueva,"LIQUIDA","LIQ",20)
replace nueva = subinstr(nueva,"LIQUIDO","LIQ",20)
replace nueva = subinword(nueva,"NATURAL","NAT",20)
replace nueva = subinstr(nueva,"PLASTICO","PLAST",20)
replace nueva = subinstr(nueva,"GRANDE","",20)
replace nueva = subinword(nueva,"GDE","",20)
replace nueva = subinstr(nueva,"ELECTRICA","ELECT",20)
replace nueva = subinword(nueva,"BOTE","",20)
replace nueva = subinstr(nueva,"DESHIDRATADA","DESHID",20)
replace nueva = subinstr(nueva,"DESHIDRATADO","DESHID",20)
replace nueva = subinstr(nueva,"FUJI FILM","FUJIFILM",20)
replace nueva = subinstr(nueva,"FOTOGRAFICA","FOTO",20)
replace nueva = subinstr(nueva,"INSTANTANEA","INST",20)
replace nueva = subinstr(nueva,"INSTANTANEO","INST",20)
replace nueva = subinstr(nueva,"VIDRIO","VID",20)
replace nueva = subinword(nueva,"COLOR","",20)
replace nueva = subinstr(nueva,"PICADOS","PIC",20)
replace nueva = subinstr(nueva,"PICADO","PIC",20)
replace nueva = subinstr(nueva,"AUTOMATICA","AUT",20)
replace nueva = subinstr(nueva,"AUTOMATICO","AUT",20)
replace nueva = subinstr(nueva,"PUERTAS","PTAS",20)
replace nueva = subinstr(nueva,"CAMARA FOTO","CAM",20)
replace nueva = subinstr(nueva,"CAMARA","CAM",20)
replace nueva = subinstr(nueva,"SHAMPOO","CHAMPU",20)
replace nueva = subinstr(nueva,"FORTIFICANTE","FORT",20)
replace nueva = subinstr(nueva,"CUBICOS","",20)
replace nueva = subinstr(nueva,"CUBICO","",20)
replace nueva = subinstr(nueva," TIPO","",20)
replace nueva = subinstr(nueva,"CJUG","JUG",20)
replace nueva = subinstr(nueva,"JUGOS","JGO",20)
replace nueva = subinstr(nueva,"JUGO","JGO",20)
replace nueva = subinstr(nueva,"JUG","JGO",20)
replace nueva = subinstr(nueva,"PHOT","HOT",20)
replace nueva = subinstr(nueva,"HOT CAKES","HOTCAKES",20)
replace nueva = subinstr(nueva,"COMPACTO","COMP",20)
replace nueva = subinstr(nueva,"COMPACTA","COMP",20)
replace nueva = subinword(nueva,"D","",20)
replace nueva = subinstr(nueva,"ANTI HONGOS","ANTIHONGOS",20)
replace nueva = subinstr(nueva,"PESTANAS","PEST",20)
replace nueva = subinstr(nueva,"PESTANA","PEST",20)
replace nueva = subinstr(nueva,"MIUSIC","MUSIC",20)
replace nueva = subinstr(nueva,"VELADORAS","VEL",20)
replace nueva = subinstr(nueva,"VELADORA","VEL",20)
replace nueva = subinstr(nueva,"DURACION","DUR",20)
replace nueva = subinstr(nueva,"DESECHABLES","DESECH",20)
replace nueva = subinstr(nueva,"DESECHABLE","DESECH",20)
replace nueva = subinstr(nueva,"POLIAMIDA","POL",20)
replace nueva = subinstr(nueva,"PNINA","NINA",20)
replace nueva = subinstr(nueva,"REFRESCO","",20)
replace nueva = subinstr(nueva,"JELL O","JELLO",20)
replace nueva = subinstr(nueva,"SOBER","SOBRE",20)
replace nueva = subinstr(nueva,"PNINO","NINO",20)
replace nueva = subinstr(nueva,"ESPECIAL","ESP",20)
replace nueva = subinstr(nueva,"MATRIMONIALES","MAT",20)
replace nueva = subinstr(nueva,"MATRIMONIAL","MAT",20)
replace nueva = subinstr(nueva,"VISCOSA","VIS",20)
replace nueva = subinstr(nueva,"ACRILICO","ACR",20)
replace nueva = subinstr(nueva,"PAN DULCE","",20)
replace nueva = subinstr(nueva,"ENTERAS","ENT",20)
replace nueva = subinstr(nueva,"ENTEROS","ENT",20)
replace nueva = subinstr(nueva,"ENTERA","ENT",20)
replace nueva = subinstr(nueva,"ENTERO","ENT",20)
replace nueva = subinstr(nueva,"CHOCOLATE","CHOC",20)
replace nueva = subinstr(nueva,"REGULAR","REG",20)
replace nueva = subinword(nueva,"G","GR",20)
replace nueva = subinstr(nueva,"MC CORMICK","MCCORMICK",20)
replace nueva = subinstr(nueva,"SUVE","SUAVE",20)
replace nueva = subinstr(nueva,"SABORES","SAB",20)
replace nueva = subinstr(nueva,"SABOR","SAB",20)
replace nueva = subinstr(nueva,"NUTRI LECHE","NUTRI",20)
replace nueva = subinstr(nueva,"NUTRILECHE","NUTRI",20)
replace nueva = subinstr(nueva,"RECONSTITUIDA","RECON",20)
replace nueva = subinstr(nueva,"RECONSTITUIDO","RECON",20)
replace nueva = subinword(nueva,"CU","",20)
replace nueva = subinstr(nueva,"CCAFEINA","CAF",20)
replace nueva = subinstr(nueva,"SCAFEINA","DESCAF",20)
replace nueva = subinstr(nueva,"DESCAFEINADO","DESCAF",20)
replace nueva = subinstr(nueva,"SWEATER","SUETER",20)
replace nueva = subinstr(nueva,"PADULTO","ADULTO",20)
replace nueva = subinstr(nueva,"CORPORAL","CORP",20)
replace nueva = subinstr(nueva,"PANTALETAS","PANTALETA",20)
replace nueva = subinstr(nueva,"CLORALEX CLORO","CLORALEX",20)
replace nueva = subinstr(nueva,"NUTRICION","NUT",20)
replace nueva = subinstr(nueva,"INTENSIVO","INT",20)
replace nueva = subinstr(nueva,"INTENSIVA","INT",20)
replace nueva = subinstr(nueva,"PASTILLA","PZ",20)
replace nueva = subinstr(nueva,"FACIALES","FAC",20)
replace nueva = subinstr(nueva,"FACIAL","FAC",20)
replace nueva = subinstr(nueva,"ULTRA GRIP","ULTRAGRIP",20)
replace nueva = subinword(nueva,"MP","MARCA PROPIA",20)
replace nueva = subinword(nueva,"GE","GENERAL ELECTRIC",20)
replace nueva = subinstr(nueva,"RASTRILLO","",20)
replace nueva = subinstr(nueva,"SERVILLETAS","SERV",20)
replace nueva = subinstr(nueva,"SERVILLETA","SERV",20)
replace nueva = subinstr(nueva,"CHAMARRA","CHAM",20)
replace nueva = subinstr(nueva,"PAPAS FRITAS","",20)
replace nueva = subinstr(nueva," ATUN EN","",20)
replace nueva = subinstr(nueva," ATUN","",20)
replace nueva = subinstr(nueva,"MAYONESA","",20)

replace nueva = subinstr(nueva,"AIR WICK","AIRWICK,",20)
replace nueva = subinword(nueva,"P","",20)
replace nueva = subinword(nueva,"SM","SIN MARCA,",20)
replace nueva = subinstr(nueva,"1,2,3","123,",20)
replace nueva = subinstr(nueva,"1 2 3","123,",20)
replace nueva = subinstr(nueva,"ENERGIZER","ENERGIZER,",20)
replace nueva = subinstr(nueva,"3 CORONAS","3 CORONAS,",20)
replace nueva = subinstr(nueva,"MCCORMICK","MCCORMICK,",20)
replace nueva = subinstr(nueva,"RIDERS","RIDERS,",20)
replace nueva = subinstr(nueva,"WHIRPOOL","WHIRPOOL,",20)
replace nueva = subinstr(nueva,"HAVA CLUB","HAVA CLUB,",20)
replace nueva = subinstr(nueva,"KOBLENZ","KOBLENZ,",20)
replace nueva = subinstr(nueva,"HAGGAR","HAGGAR,",20)
replace nueva = subinstr(nueva,"PONDS","PONDS,",20)
replace nueva = subinstr(nueva,"DONA MARIA","DONA MARIA,",20)
replace nueva = subinstr(nueva,"VOLTECH","VOLTECH,",20)
replace nueva = subinstr(nueva,"LREAL","LOREAL,",20)
replace nueva = subinstr(nueva,"DRENNE","DRENNE,",20)
replace nueva = subinstr(nueva,"MILPA REAL","MILPA REAL,",20)
replace nueva = subinstr(nueva,"PRESIDENTE","PRESIDENTE,",20)
replace nueva = subinstr(nueva,"LA IDEAL","LA IDEAL,",20)
replace nueva = subinstr(nueva,"US POLO","US POLO,",20)
replace nueva = subinstr(nueva,"SEAMLESS","SEAMLESS,",20)
replace nueva = subinstr(nueva,"SAHARA","SAHARA,",20)
replace nueva = subinstr(nueva,"BIMBO","BIMBO,",20)
replace nueva = subinstr(nueva,"ELEGANCE","ELEGANCE,",20)
replace nueva = subinstr(nueva,"VIANNEY","VIANNEY,",20)
replace nueva = subinstr(nueva,"CARTERS","CARTERS,",20)
replace nueva = subinstr(nueva,"GRAFITO","GRAFITO,",20)
replace nueva = subinstr(nueva,"ROYAL PRESTIGE","ROYAL PRESTIGE,",20)
replace nueva = subinstr(nueva,"CINSA","CINSA,",20)
replace nueva = subinstr(nueva,"ZOTE","ZOTE,",20)
replace nueva = subinstr(nueva,"DGARI","DGARI,",20)
replace nueva = subinstr(nueva,"YALE","YALE,",20)
replace nueva = subinstr(nueva,"LEE","LEE,",20)
replace nueva = subinstr(nueva,"LG","LG,",20)
replace nueva = subinstr(nueva,"TRUPER","TRUPER,",20)
replace nueva = subinstr(nueva,"GIANNI AND FERAUD","GIANNI AND FERAUD,",20)
replace nueva = subinstr(nueva,"CARNATION","CARNATION,",20)
replace nueva = subinstr(nueva,"CHUCHINS","CHUCHINS,",20)
replace nueva = subinstr(nueva,"ADORABLE","ADORABLE,",20)
replace nueva = subinstr(nueva,"OPTIMA","OPTIMA,",20)
replace nueva = subinstr(nueva,"GIANELA","GIANELA,",20)
replace nueva = subinstr(nueva,"TANG","TANG,",20)
replace nueva = subinstr(nueva,"ZAGA","ZAGA,",20)
replace nueva = subinstr(nueva,"CLAUDIA COLECTION","CLAUDIA COLECTION,",20)
replace nueva = subinstr(nueva,"BUSH BEST","BUSH BEST,",20)
replace nueva = subinstr(nueva,"LA COSTENA","LA COSTENA,",20)
replace nueva = subinstr(nueva,"ZETS","ZETS,",20)
replace nueva = subinstr(nueva,"EUFORIA","EUFORIA,",20)
replace nueva = subinstr(nueva,"HERSHEYS","HERSHEYS,",20)
replace nueva = subinstr(nueva,"CONTEMPO","CONTEMPO,",20)
replace nueva = subinstr(nueva,"FOCA","FOCA,",20)
replace nueva = subinstr(nueva,"PERICO","PERICO,",20)
replace nueva = subinstr(nueva,"MISTY JEANS","MISTY JEANS,",20)
replace nueva = subinstr(nueva,"KIMBERLY CLARK","KIMBERLY CLARK,",20)
replace nueva = subinstr(nueva,"AXE","AXE,",20)
replace nueva = subinstr(nueva,"CAMAY","CAMAY,",20)
replace nueva = subinstr(nueva,"NESCAFE","NESCAFE,",20)
replace nueva = subinstr(nueva,"DODYS","DODYS,",20)
replace nueva = subinstr(nueva,"LOREAL","LOREAL,",20)
replace nueva = subinstr(nueva,"DOVE","DOVE,",20)
replace nueva = subinstr(nueva,"PERLA","PERLA,",20)
replace nueva = subinstr(nueva,"OMEGA","OMEGA,",20)
replace nueva = subinstr(nueva,"DISNEY","DISNEY,",20)
replace nueva = subinstr(nueva,"BACARDI","BACARDI,",20)
replace nueva = subinstr(nueva,"CLORALEX","CLORALEXM",20)
replace nueva = subinstr(nueva,"VIANNEY","VIANNEY,",20)
replace nueva = subinstr(nueva,"PHARAON","PHARAON,",20)
replace nueva = subinstr(nueva,"DAROMA","DAROMA,",20)
replace nueva = subinstr(nueva,"VICTORIA","VICTORIA,",20)
replace nueva = subinstr(nueva,"CLORALEXM","CLORALEX,",20)
replace nueva = subinstr(nueva,"CARIOCAS","CARIOCAS,",20)
replace nueva = subinstr(nueva,"EL CONTINENTAL","EL CONTINENTAL",20)
replace nueva = subinstr(nueva,"MAYBLLINE RIMEL LARGA DUR,","MAYBELLINE, RIMEL LARGA DUR",20)
replace nueva = subinstr(nueva,"NESTLE","NESTLE,",20)
replace nueva = subinstr(nueva,"OROWEAT","OROWEAT,",20)
replace nueva = subinstr(nueva,"MARINELA","MARINELA,",20)
replace nueva = subinstr(nueva,"FRAICHE","FRAICHE,",20)
replace nueva = subinstr(nueva,"GERBER","GERBER,",20)
replace nueva = subinstr(nueva,"CALVIN KLEIN","CALVIN KLEIN,",20)
replace nueva = subinstr(nueva,"LADY SPEED STICK","LADY SPEED STICK,",20)
replace nueva = subinstr(nueva,"LABELLO","LABELLO,",20)
replace nueva = subinstr(nueva,"725 ORIGINALS","725 ORIGINALS,",20)
replace nueva = subinstr(nueva,"VICTORIAS SECRET","VICTORIAS SECRET,",20)
replace nueva = subinstr(nueva,"HUSH PUPPIES","HUSH PUPPIES,",20)
replace nueva = subinstr(nueva,"CARLO ROSSETTI","CARLO ROSSETTI,",20)
replace nueva = subinstr(nueva,"ANTHELIOS","ANTHELIOS,",20)
replace nueva = subinstr(nueva,"0STER","OSTER,",20)
replace nueva = subinword(nueva,"ACEITE","",20)
replace nueva = subinstr(nueva,"COLG,ATE","COLGATE,",20)
replace nueva = subinstr(nueva,"MP,","MARCA PROPIA,",20)
replace nueva = subinword(nueva,"CHICO","",20)
replace nueva = subinword(nueva,"GRAMOS","GR",20)
replace nueva = subinword(nueva,"GRAMO","GR",20)
replace nueva = subinstr(nueva,"KLEE,NEX","KLEENEX,",20)
replace nueva = subinstr(nueva,",,",",",20)

replace nueva = ltrim(nueva)
replace nueva = rtrim(nueva)
replace nueva = itrim(nueva)

gen temp = strpos(nueva,",")
sort temp

gen marca = substr(nueva,1,temp-1)
drop if marca==""

gen resto = substr(nueva,temp+1,.)
drop if resto==""
drop temp

replace marca = subinstr(marca,",","",20)
replace resto = subinstr(resto,",","",20)

replace marca = ltrim(marca)
replace marca = rtrim(marca)
replace marca = itrim(marca)

replace resto = ltrim(resto)
replace resto = rtrim(resto)
replace resto = itrim(resto)


replace resto = subinword(resto,"BOTE","",20)
replace resto = subinword(resto,"CHICA","",20)
replace resto = subinword(resto,"COLOR","",20)
replace resto = subinword(resto,"CU","",20)
replace resto = subinword(resto,"D","",20)
replace resto = subinword(resto,"DE","",20)
replace resto = subinword(resto,"G","GR",20)
replace resto = subinword(resto,"CHICO","",20)
replace resto = subinword(resto,"GRAMOS","GR",20)
replace resto = subinword(resto,"GRAMO","GR",20)
replace resto = subinword(resto,"GDE","",20)
replace resto = subinword(resto,"GE","GENERAL ELECTRIC",20)
replace resto = subinword(resto,"HO","H",20)
replace resto = subinword(resto,"HOJ","H",20)
replace resto = subinword(resto,"HOJA","H",20)
replace resto = subinword(resto,"HOJAS","H",20)
replace resto = subinword(resto,"MP","MARCA PROPIA",20)
replace resto = subinword(resto,"NATURAL","NAT",20)
replace resto = subinword(resto,"PARA","",20)

replace marca = subinword(marca,"BOTE","",20)
replace marca = subinword(marca,"CHICA","",20)
replace marca = subinword(marca,"CHICO","",20)
replace marca = subinword(marca,"GRAMOS","GR",20)
replace marca = subinword(marca,"GRAMO","GR",20)
replace marca = subinword(marca,"COLOR","",20)
replace marca = subinword(marca,"CU","",20)
replace marca = subinword(marca,"D","",20)
replace marca = subinword(marca,"DE","",20)
replace marca = subinword(marca,"G","GR",20)
replace marca = subinword(marca,"GDE","",20)
replace marca = subinword(marca,"GE","GENERAL ELECTRIC",20)
replace marca = subinword(marca,"HO","H",20)
replace marca = subinword(marca,"HOJ","H",20)
replace marca = subinword(marca,"HOJA","H",20)
replace marca = subinword(marca,"HOJAS","H",20)
replace marca = subinword(marca,"MP","MARCA PROPIA",20)
replace marca = subinword(marca,"NATURAL","NAT",20)
replace marca = subinword(marca,"PARA","",20)

replace marca = ltrim(marca)
replace marca = rtrim(marca)
replace marca = itrim(marca)

replace resto = ltrim(resto)
replace resto = rtrim(resto)
replace resto = itrim(resto)

* WE FIX 2 THINGS HERE:
* 1) Exact same product followed in city the same time (therefore we would average these)
* 2) Falsely separated (unchained) through time but its actually the same product
preserve
collapse (min) min_date (max) max_date (sum) count_price, by(city generic marca resto)
gen perro = max_date-min_date+1
gen dif = count_price-perro
keep if dif>=-2
drop dif perro
save "$raw\fix.dta", replace
restore

* WATCH OUT. GENERIC ID MIGHT BE DIFFERENT AMONG SAME GENERICS!

merge m:1 city generic marca resto using "$raw\fix.dta", update replace
duplicates tag city generic marca resto, gen(dup)
drop if _merge!=1 & dup>0
drop _merge dup

* PIERDE SENTIDO EL ID
* SOLO LO MANTENGO PARA ID de RECLINK


* We only keep time series that end 2017 or after
*drop if max_date<=tm(2017m1)

* We only keep time series with 24 months of observations or longer
*sort count_price
keep if count_price>=12

gsort - count_price
duplicates drop city generic marca resto, force
compress

* Ya no tiene sentido el ID, no usarlo para pegar NADA idcitsubcgenconsectime ************

save "$raw\pseudoclean.dta", replace


forvalues i = 1/55 {
	clear all
	use "$raw\pseudoclean.dta"
	keep idcity generic min_date max_date nueva marca resto count_price idcitsubcgenconsectime
	keep if idcity==`i'
	rename idcitsubcgenconsectime idcitsubcgenconsectime`i'
	rename count_price count_price`i'
	rename idcity idcity`i'
	rename min_date min_date`i'
	rename max_date max_date`i'
	rename nueva nueva`i'
	compress
	save "$raw\\`i'.dta", replace
}


* BEST APPROACH
clear all
use "$raw\1.dta"

forvalues j = 2/55 {
	reclink2 generic marca resto using "$raw\\`j'.dta", idmaster(idcitsubcgenconsectime1) idusing(idcitsubcgenconsectime`j') gen(match`j') wmatch(1 18 14) orblock(generic) required(generic) _merge(merge`j') minscore(0.7) minbigram(1)
	rename generic tempgeneric
	rename marca tempmarca
	rename resto tempresto
	rename Ugeneric generic
	rename Umarca marca
	rename Uresto resto
	merge m:1 generic marca resto max_date`j' min_date`j' using "$raw\\`j'.dta", gen(presence`j')
	rename generic generic`j'
	rename marca marca`j'
	rename resto resto`j'
	rename tempgeneric generic
	rename tempmarca marca
	rename tempresto resto
	gsort - match`j'
	duplicates drop idcitsubcgenconsectime1 if idcitsubcgenconsectime1!=., force
	replace idcitsubcgenconsectime1=idcitsubcgenconsectime`j' if idcitsubcgenconsectime1==.
	replace generic = generic`j' if presence`j'==2
	replace marca = marca`j' if presence`j'==2
	replace resto = resto`j' if presence`j'==2
}
compress

replace marca="" if max_date1==.
replace resto="" if max_date1==.
replace generic="" if max_date1==.
replace idcitsubcgenconsectime1=. if max_date1==.

save "$raw\thebest2.dta", replace


clear all
use "$raw\thebest2.dta"
egen num_cities = rownonmiss(generic*), strok
gsort - num_cities
keep if num_cities>=15
rename marca marca1
rename resto resto1
rename generic generic1

keep marca* resto* match* generic* nueva*

gen prod=_n
reshape long marca resto match generic nueva, i(prod) j(city)

sort prod marca resto

drop if marca==""

*duplicates tag city marca resto, generate(perro)
*drop perro
replace match = 999 if match==.
gsort - match
duplicates drop city marca resto, force
replace match = . if match ==999

bysort prod : egen conteo = count(city)

keep if conteo>=15
*duplicates drop prod, force
*594 if minscore == .75 y city<= 15
*606 if minscore == .7 y city<= 15
gsort - conteo prod - match

rename city idcity

save "$raw/products.dta", replace













clear all
use "$raw\db.dta"

*ID to the product level
gen double idcitsubcgenconsec = idcity*100000000000 + idsubclass*100000000 + idgeneric*10000 + consecutive

*When an ID changes in time
gen statusnum = 0
replace statusnum = 1 if status=="DESENCADENADO"
* Watch out, this is not perfect. Some products are unchained but still the same

*Grup by new products
gen perro = statusnum
bysort idcitsubcgenconsec (date): replace perro = cond(statusnum[_n]==1,perro[_n-1]+1,max(perro[_n-1],0),.)
replace perro = perro+1

*The real ID considering products change across time
gen double idcitsubcgenconsectime = idcitsubcgenconsec*1000 + perro
drop perro

format idcitsubcgenconsectime idcitsubcgenconsec %20.0f

*Merge weights
merge m:1 generic using "$raw\pond.dta"
keep if _merge==3
drop _merge

* We remove products that are not able to be found online
gen malo = strpos(description,"GRANEL")
drop if malo>0
drop malo
gen malo = strpos(description,"SERVICIO")
drop if malo>0
drop malo
gen malo = strpos(description,"REVELADO")
drop if malo>0
drop malo

sort pond description

* Cleaning manual
drop if generic == "Tortilla de maíz"
drop if generic == "Otros alimentos cocinados"
drop if generic == "Pan dulce"
drop if generic == "Huevo"
drop if generic == "Papa y otros tubérculos"
drop if generic == "Jamón"
drop if generic == "Queso fresco"
drop if generic == "Pescado"
drop if generic == "Equipo terminal de comunicación"
*Puro índice
drop if generic == "Uniformes escolares"
drop if generic == "Pollos rostizados"
drop if generic == "Pan blanco"
drop if generic == "Computadoras"
* Computadoras porque no vienen precios individuales
drop if generic == "Carnes secas, procesadas y otros embutidos"
drop if generic == "Carnes secas y otros embutidos"
drop if generic == "Yogurt"
drop if generic == "Manzana"
drop if generic == "Otras frutas"
drop if generic == "Chorizo"
drop if generic == "Otras verduras y legumbres"
drop if generic == "Salchichas"
drop if generic == "Naranja"
drop if generic == "Cebolla"
drop if generic == "Queso Oaxaca y asadero"
drop if generic == "Crema y otros productos a base de leche"
drop if generic == "Crema de leche"
drop if generic == "Tomate verde"
drop if generic == "Recámaras"
*No venden en amz
drop if generic == "Barbacoa o birria"
drop if generic == "Pastelillos y pasteles a granel"
drop if generic == "Salas"
*ni salas
drop if generic == "Lechuga y col"
drop if generic == "Pizzas"
drop if generic == "Carnitas"
drop if generic == "Camarón"
drop if generic == "Helados"
drop if generic == "Helados, nieves y paletas de hielo"
drop if generic == "Otros quesos"
drop if generic == "Tortillas de harina de trigo"
drop if generic == "Plantas y flores"
drop if generic == "Papaya"
drop if generic == "Chile seco"
drop if generic == "Queso manchego o Chihuahua"
drop if generic == "Comedores y antecomedores"
drop if generic == "Otros chiles frescos"
drop if generic == "Limón"
drop if generic == "Nopales"
drop if generic == "Servicio de tintorería"
drop if generic == "Otras legumbres"
drop if generic == "Servicio de lavandería"
drop if generic == "Melón"
drop if generic == "Periódicos"
drop if generic == "Pepino"
drop if generic == "Piña"
drop if generic == "Otros pescados y mariscos en conserva"
drop if generic == "Mantequilla"
drop if generic == "Manteca de cerdo"
drop if generic == "Tocino"
drop if generic == "Queso amarillo"
drop if generic == "Revistas"
drop if generic == "Otros mariscos"
drop if generic == "Leche de soya"
drop if generic == "Alfombras y otros materiales para pisos"
drop if generic == "Dulces, cajetas y miel"
drop if generic == "Aparatos de telefonía fija"
drop if generic == "Otros utensilios de cocina"
drop if generic == "Calentadores para agua"
drop if generic == "Chícharo"
drop if generic == "Queso manchego y Chihuahua"
drop if generic == "Otras Frutas"
drop if generic == "Queso Oaxaca o asadero"
drop if generic == "Pollo"
drop if generic == "Carne de cerdo"
drop if generic == "Carne de res"
drop if generic == "Zanahoria"
drop if generic == "Vísceras de res"
drop if generic == "Sandía"
drop if generic == "Uva"
drop if generic == "Jitomate"
drop if generic == "Plátanos"
drop if generic == "Durazno"
drop if generic == "Ejotes"
drop if generic == "Chayote"
drop if generic == "Calabacita"
drop if generic == "Chile serrano"
drop if generic == "Aguacate"
drop if generic == "Pera"
drop if generic == "Chile poblano"
drop if description=="."

gen nueva=description
clean_name nueva ,case(upper)
trimblnk nueva

replace nueva = ltrim(nueva)
replace nueva = rtrim(nueva)
replace nueva = itrim(nueva)

replace nueva = subinstr(nueva,"Á","A",20)
replace nueva = subinstr(nueva,"É","E",20)
replace nueva = subinstr(nueva,"Í","I",20)
replace nueva = subinstr(nueva,"Ó","O",20)
replace nueva = subinstr(nueva,"Ú","U",20)

replace nueva = subinstr(nueva,"ALGODON","ALG",20)
replace nueva = subinstr(nueva,"PAQUETES","PAQ",20)
replace nueva = subinstr(nueva,"PAQUETE","PAQ",20)
replace nueva = subinstr(nueva,"PIEZAS","PZ",20)
replace nueva = subinstr(nueva,"PIEZA","PZ",20)
replace nueva = subinstr(nueva,"PZS","PZ",20)
replace nueva = subinstr(nueva,"PZAS","PZ",20)
replace nueva = subinstr(nueva,"PZA","PZ",20)
replace nueva = subinstr(nueva,"LITROS","LT",20)
replace nueva = subinstr(nueva,"LITRO","LT",20)
replace nueva = subinstr(nueva,"(","",20)
replace nueva = subinstr(nueva,")","",20)
replace nueva = subinstr(nueva,"'","",20)
replace nueva = subinstr(nueva,"`","",20)
replace nueva = subinstr(nueva,"¨","",20)
replace nueva = subinstr(nueva,"´","",20)
replace nueva = subinstr(nueva,"*","",20)
replace nueva = subinstr(nueva,"}","",20)
replace nueva = subinstr(nueva,"{","",20)
replace nueva = subinstr(nueva,"~","",20)
replace nueva = subinstr(nueva,"[","",20)
replace nueva = subinstr(nueva,"]","",20)
replace nueva = subinstr(nueva,":","",20)
replace nueva = subinstr(nueva,";","",20)
replace nueva = subinstr(nueva,"/","",20)
replace nueva = subinstr(nueva,"?","",20)
replace nueva = subinstr(nueva,"\","",20)
replace nueva = subinstr(nueva,"¡","",20)
replace nueva = subinstr(nueva,"!","",20)
replace nueva = subinstr(nueva,"$","",20)
replace nueva = subinstr(nueva,"#","",20)
replace nueva = subinstr(nueva,"<","",20)
replace nueva = subinstr(nueva,">","",20)
replace nueva = subinstr(nueva,"Ñ","N",20)
replace nueva = subinstr(nueva," ,",",",20)
replace nueva = subinstr(nueva,"LTS","LT",20)
replace nueva = subinstr(nueva,".","",20)
replace nueva = subinstr(nueva,"%","",20)
replace nueva = subinstr(nueva,"Ð","N",20)
replace nueva = subinstr(nueva,"+","",20)
replace nueva = subinstr(nueva,`"""',"",20)
replace nueva = subinstr(nueva,"@","",20)
replace nueva = subinstr(nueva,"&","",20)

*replace nueva = subinstr(nueva,",","",20)

replace nueva = subinstr(nueva,"C1","1",20)
replace nueva = subinstr(nueva,"C2","2",20)
replace nueva = subinstr(nueva,"C3","3",20)
replace nueva = subinstr(nueva,"C4","4",20)
replace nueva = subinstr(nueva,"C5","5",20)
replace nueva = subinstr(nueva,"C6","6",20)
replace nueva = subinstr(nueva,"C7","7",20)
replace nueva = subinstr(nueva,"C8","8",20)
replace nueva = subinstr(nueva,"C9","9",20)
replace nueva = subinstr(nueva,"C0","0",20)
replace nueva = subinstr(nueva,"C 1","1",20)
replace nueva = subinstr(nueva,"C 2","2",20)
replace nueva = subinstr(nueva,"C 3","3",20)
replace nueva = subinstr(nueva,"C 4","4",20)
replace nueva = subinstr(nueva,"C 5","5",20)
replace nueva = subinstr(nueva,"C 6","6",20)
replace nueva = subinstr(nueva,"C 7","7",20)
replace nueva = subinstr(nueva,"C 8","8",20)
replace nueva = subinstr(nueva,"C 9","9",20)
replace nueva = subinstr(nueva,"C 0","0",20)

replace nueva = subinstr(nueva,"CORTE SINTETICO","COR SINT",20)
replace nueva = subinstr(nueva,"SUELA SINTETICA","SUE SINT",20)
replace nueva = subinstr(nueva,"CORTE PIEL","COR PIEL",20)
replace nueva = subinstr(nueva,"ZAPATOS","ZAP",20)
replace nueva = subinstr(nueva,"ZAPATO","ZAP",20)
replace nueva = subinstr(nueva,"PANUELOS DESECHABLES","PAN DES",20)
replace nueva = subinstr(nueva,"SANDALIAS","SAN",20)
replace nueva = subinstr(nueva,"SANDALIA","SAN",20)
replace nueva = subinstr(nueva,"COCA COLA","COCACOLA",20)
replace nueva = subinstr(nueva,"ONDULADAS","",20)
replace nueva = subinstr(nueva,"E PURA","EPURA",20)
replace nueva = subinstr(nueva,"ULTRADESLIZANTE","",20)
replace nueva = subinstr(nueva,"MODELO","MOD",20)
replace nueva = subinstr(nueva,"VARIOS","",20)
replace nueva = subinstr(nueva,"POLIESTER","POL",20)
replace nueva = subinstr(nueva,"POLIESTE","POL",20)
replace nueva = subinstr(nueva,"ACCESORIOS","ACC",20)
replace nueva = subinstr(nueva,"ELASTANO","ELA",20)
replace nueva = subinstr(nueva,"PULGADAS","",20)
replace nueva = subinstr(nueva,"PULGS","",20)
replace nueva = subinstr(nueva,"PULG","",20)
replace nueva = subinstr(nueva,"A PARTIR DE LOS","",20)
replace nueva = subinstr(nueva,"A PARTIR DE","",20)
replace nueva = subinword(nueva,"DE","",20)
replace nueva = subinstr(nueva,"PAPEL HIGIENICO","PAPEL",20)
replace nueva = subinstr(nueva,"JUEGOS","JGO",20)
replace nueva = subinstr(nueva,"JUEGO","JGO",20)
replace nueva = subinstr(nueva,"DIDACTICO","",20)
replace nueva = subinstr(nueva,"BOTELLAS","BOT",20)
replace nueva = subinstr(nueva,"PAÐUELOS DESECHABLES","PAN DES",20)
replace nueva = subinword(nueva,"HOJAS","H",20)
replace nueva = subinstr(nueva,"ACABADO","",20)
replace nueva = subinstr(nueva,"FORJADO","",20)
replace nueva = subinword(nueva,"HOJA","H",20)
replace nueva = subinword(nueva,"HOJ","H",20)
replace nueva = subinword(nueva,"HO","H",20)
replace nueva = subinstr(nueva,"ESMERILADO","",20)
replace nueva = subinstr(nueva,"SUAVIZANTE","SUAV",20)
replace nueva = subinstr(nueva,"MAQUILLAJE","MAQ",20)
replace nueva = subinstr(nueva,"MESES","M",20)
replace nueva = subinstr(nueva,"IMPRESION DIGITAL","IMP DIG",20)
replace nueva = subinstr(nueva,"PAPEL","PAP",20)
replace nueva = subinstr(nueva,"FOTOGRAFIA","FOTO",20)
replace nueva = subinstr(nueva,"TRADICIONAL","TRAD",20)
replace nueva = subinstr(nueva,"BOLSAS","BOL",20)
replace nueva = subinstr(nueva,"BOLSA","BOL",20)
replace nueva = subinstr(nueva,"BOTELLA","BOT",20)
replace nueva = subinstr(nueva,"RETORNABLE","RET",20)
replace nueva = subinstr(nueva,"ROLLOS","ROL",20)
replace nueva = subinstr(nueva,"ROLLO","ROL",20)
replace nueva = subinstr(nueva,"DIFERENTES","DIF",20)
replace nueva = subinstr(nueva,"DIFERENTE","DIF",20)
replace nueva = subinword(nueva,"PARA","",20)
replace nueva = subinstr(nueva,"AEROSOL","AER",20)
replace nueva = subinstr(nueva,"ULTRAPASTEURIZADA","",20)
replace nueva = subinstr(nueva,"PASTEURIZADA","",20)
replace nueva = subinstr(nueva,"DESLACTOZADA","DESLAC",20)
replace nueva = subinstr(nueva,"ENVASES","",20)
replace nueva = subinstr(nueva,"ENVASE","",20)
replace nueva = subinstr(nueva,"CONCENTRADO","CONC",20)
replace nueva = subinstr(nueva,"WALT DISNEY","WALTDISNEY",20)
replace nueva = subinstr(nueva,"BLU RAY","BLURAY",20)
replace nueva = subinstr(nueva,"EN POLVO","POL",20)
replace nueva = subinstr(nueva,"POLVO","POL",20)
replace nueva = subinstr(nueva,"DIDACTICO","DID",20)
replace nueva = subinword(nueva,"CHICA","",20)
replace nueva = subinstr(nueva,"CORPORALLIQUIDA","CORPORAL LIQ",20)
replace nueva = subinstr(nueva,"LIQUIDA","LIQ",20)
replace nueva = subinstr(nueva,"LIQUIDO","LIQ",20)
replace nueva = subinword(nueva,"NATURAL","NAT",20)
replace nueva = subinstr(nueva,"PLASTICO","PLAST",20)
replace nueva = subinstr(nueva,"GRANDE","",20)
replace nueva = subinword(nueva,"GDE","",20)
replace nueva = subinstr(nueva,"ELECTRICA","ELECT",20)
replace nueva = subinword(nueva,"BOTE","",20)
replace nueva = subinstr(nueva,"DESHIDRATADA","DESHID",20)
replace nueva = subinstr(nueva,"DESHIDRATADO","DESHID",20)
replace nueva = subinstr(nueva,"FUJI FILM","FUJIFILM",20)
replace nueva = subinstr(nueva,"FOTOGRAFICA","FOTO",20)
replace nueva = subinstr(nueva,"INSTANTANEA","INST",20)
replace nueva = subinstr(nueva,"INSTANTANEO","INST",20)
replace nueva = subinstr(nueva,"VIDRIO","VID",20)
replace nueva = subinword(nueva,"COLOR","",20)
replace nueva = subinstr(nueva,"PICADOS","PIC",20)
replace nueva = subinstr(nueva,"PICADO","PIC",20)
replace nueva = subinstr(nueva,"AUTOMATICA","AUT",20)
replace nueva = subinstr(nueva,"AUTOMATICO","AUT",20)
replace nueva = subinstr(nueva,"PUERTAS","PTAS",20)
replace nueva = subinstr(nueva,"CAMARA FOTO","CAM",20)
replace nueva = subinstr(nueva,"CAMARA","CAM",20)
replace nueva = subinstr(nueva,"SHAMPOO","CHAMPU",20)
replace nueva = subinstr(nueva,"FORTIFICANTE","FORT",20)
replace nueva = subinstr(nueva,"CUBICOS","",20)
replace nueva = subinstr(nueva,"CUBICO","",20)
replace nueva = subinstr(nueva," TIPO","",20)
replace nueva = subinstr(nueva,"CJUG","JUG",20)
replace nueva = subinstr(nueva,"JUGOS","JGO",20)
replace nueva = subinstr(nueva,"JUGO","JGO",20)
replace nueva = subinstr(nueva,"JUG","JGO",20)
replace nueva = subinstr(nueva,"PHOT","HOT",20)
replace nueva = subinstr(nueva,"HOT CAKES","HOTCAKES",20)
replace nueva = subinstr(nueva,"COMPACTO","COMP",20)
replace nueva = subinstr(nueva,"COMPACTA","COMP",20)
replace nueva = subinword(nueva,"D","",20)
replace nueva = subinstr(nueva,"ANTI HONGOS","ANTIHONGOS",20)
replace nueva = subinstr(nueva,"PESTANAS","PEST",20)
replace nueva = subinstr(nueva,"PESTANA","PEST",20)
replace nueva = subinstr(nueva,"MIUSIC","MUSIC",20)
replace nueva = subinstr(nueva,"VELADORAS","VEL",20)
replace nueva = subinstr(nueva,"VELADORA","VEL",20)
replace nueva = subinstr(nueva,"DURACION","DUR",20)
replace nueva = subinstr(nueva,"DESECHABLES","DESECH",20)
replace nueva = subinstr(nueva,"DESECHABLE","DESECH",20)
replace nueva = subinstr(nueva,"POLIAMIDA","POL",20)
replace nueva = subinstr(nueva,"PNINA","NINA",20)
replace nueva = subinstr(nueva,"REFRESCO","",20)
replace nueva = subinstr(nueva,"JELL O","JELLO",20)
replace nueva = subinstr(nueva,"SOBER","SOBRE",20)
replace nueva = subinstr(nueva,"PNINO","NINO",20)
replace nueva = subinstr(nueva,"ESPECIAL","ESP",20)
replace nueva = subinstr(nueva,"MATRIMONIALES","MAT",20)
replace nueva = subinstr(nueva,"MATRIMONIAL","MAT",20)
replace nueva = subinstr(nueva,"VISCOSA","VIS",20)
replace nueva = subinstr(nueva,"ACRILICO","ACR",20)
replace nueva = subinstr(nueva,"PAN DULCE","",20)
replace nueva = subinstr(nueva,"ENTERAS","ENT",20)
replace nueva = subinstr(nueva,"ENTEROS","ENT",20)
replace nueva = subinstr(nueva,"ENTERA","ENT",20)
replace nueva = subinstr(nueva,"ENTERO","ENT",20)
replace nueva = subinstr(nueva,"CHOCOLATE","CHOC",20)
replace nueva = subinstr(nueva,"REGULAR","REG",20)
replace nueva = subinword(nueva,"G","GR",20)
replace nueva = subinstr(nueva,"MC CORMICK","MCCORMICK",20)
replace nueva = subinstr(nueva,"SUVE","SUAVE",20)
replace nueva = subinstr(nueva,"SABORES","SAB",20)
replace nueva = subinstr(nueva,"SABOR","SAB",20)
replace nueva = subinstr(nueva,"NUTRI LECHE","NUTRI",20)
replace nueva = subinstr(nueva,"NUTRILECHE","NUTRI",20)
replace nueva = subinstr(nueva,"RECONSTITUIDA","RECON",20)
replace nueva = subinstr(nueva,"RECONSTITUIDO","RECON",20)
replace nueva = subinword(nueva,"CU","",20)
replace nueva = subinstr(nueva,"CCAFEINA","CAF",20)
replace nueva = subinstr(nueva,"SCAFEINA","DESCAF",20)
replace nueva = subinstr(nueva,"DESCAFEINADO","DESCAF",20)
replace nueva = subinstr(nueva,"SWEATER","SUETER",20)
replace nueva = subinstr(nueva,"PADULTO","ADULTO",20)
replace nueva = subinstr(nueva,"CORPORAL","CORP",20)
replace nueva = subinstr(nueva,"PANTALETAS","PANTALETA",20)
replace nueva = subinstr(nueva,"CLORALEX CLORO","CLORALEX",20)
replace nueva = subinstr(nueva,"NUTRICION","NUT",20)
replace nueva = subinstr(nueva,"INTENSIVO","INT",20)
replace nueva = subinstr(nueva,"INTENSIVA","INT",20)
replace nueva = subinstr(nueva,"PASTILLA","PZ",20)
replace nueva = subinstr(nueva,"FACIALES","FAC",20)
replace nueva = subinstr(nueva,"FACIAL","FAC",20)
replace nueva = subinstr(nueva,"ULTRA GRIP","ULTRAGRIP",20)
replace nueva = subinword(nueva,"MP","MARCA PROPIA",20)
replace nueva = subinword(nueva,"GE","GENERAL ELECTRIC",20)
replace nueva = subinstr(nueva,"RASTRILLO","",20)
replace nueva = subinstr(nueva,"SERVILLETAS","SERV",20)
replace nueva = subinstr(nueva,"SERVILLETA","SERV",20)
replace nueva = subinstr(nueva,"CHAMARRA","CHAM",20)
replace nueva = subinstr(nueva,"PAPAS FRITAS","",20)
replace nueva = subinstr(nueva," ATUN EN","",20)
replace nueva = subinstr(nueva," ATUN","",20)
replace nueva = subinstr(nueva,"MAYONESA","",20)

replace nueva = subinstr(nueva,"AIR WICK","AIRWICK,",20)
replace nueva = subinword(nueva,"P","",20)
replace nueva = subinword(nueva,"SM","SIN MARCA,",20)
replace nueva = subinstr(nueva,"1,2,3","123,",20)
replace nueva = subinstr(nueva,"1 2 3","123,",20)
replace nueva = subinstr(nueva,"ENERGIZER","ENERGIZER,",20)
replace nueva = subinstr(nueva,"3 CORONAS","3 CORONAS,",20)
replace nueva = subinstr(nueva,"MCCORMICK","MCCORMICK,",20)
replace nueva = subinstr(nueva,"RIDERS","RIDERS,",20)
replace nueva = subinstr(nueva,"WHIRPOOL","WHIRPOOL,",20)
replace nueva = subinstr(nueva,"HAVA CLUB","HAVA CLUB,",20)
replace nueva = subinstr(nueva,"KOBLENZ","KOBLENZ,",20)
replace nueva = subinstr(nueva,"HAGGAR","HAGGAR,",20)
replace nueva = subinstr(nueva,"PONDS","PONDS,",20)
replace nueva = subinstr(nueva,"DONA MARIA","DONA MARIA,",20)
replace nueva = subinstr(nueva,"VOLTECH","VOLTECH,",20)
replace nueva = subinstr(nueva,"LREAL","LOREAL,",20)
replace nueva = subinstr(nueva,"DRENNE","DRENNE,",20)
replace nueva = subinstr(nueva,"MILPA REAL","MILPA REAL,",20)
replace nueva = subinstr(nueva,"PRESIDENTE","PRESIDENTE,",20)
replace nueva = subinstr(nueva,"LA IDEAL","LA IDEAL,",20)
replace nueva = subinstr(nueva,"US POLO","US POLO,",20)
replace nueva = subinstr(nueva,"SEAMLESS","SEAMLESS,",20)
replace nueva = subinstr(nueva,"SAHARA","SAHARA,",20)
replace nueva = subinstr(nueva,"BIMBO","BIMBO,",20)
replace nueva = subinstr(nueva,"ELEGANCE","ELEGANCE,",20)
replace nueva = subinstr(nueva,"VIANNEY","VIANNEY,",20)
replace nueva = subinstr(nueva,"CARTERS","CARTERS,",20)
replace nueva = subinstr(nueva,"GRAFITO","GRAFITO,",20)
replace nueva = subinstr(nueva,"ROYAL PRESTIGE","ROYAL PRESTIGE,",20)
replace nueva = subinstr(nueva,"CINSA","CINSA,",20)
replace nueva = subinstr(nueva,"ZOTE","ZOTE,",20)
replace nueva = subinstr(nueva,"DGARI","DGARI,",20)
replace nueva = subinstr(nueva,"YALE","YALE,",20)
replace nueva = subinstr(nueva,"LEE","LEE,",20)
replace nueva = subinstr(nueva,"LG","LG,",20)
replace nueva = subinstr(nueva,"TRUPER","TRUPER,",20)
replace nueva = subinstr(nueva,"GIANNI AND FERAUD","GIANNI AND FERAUD,",20)
replace nueva = subinstr(nueva,"CARNATION","CARNATION,",20)
replace nueva = subinstr(nueva,"CHUCHINS","CHUCHINS,",20)
replace nueva = subinstr(nueva,"ADORABLE","ADORABLE,",20)
replace nueva = subinstr(nueva,"OPTIMA","OPTIMA,",20)
replace nueva = subinstr(nueva,"GIANELA","GIANELA,",20)
replace nueva = subinstr(nueva,"TANG","TANG,",20)
replace nueva = subinstr(nueva,"ZAGA","ZAGA,",20)
replace nueva = subinstr(nueva,"CLAUDIA COLECTION","CLAUDIA COLECTION,",20)
replace nueva = subinstr(nueva,"BUSH BEST","BUSH BEST,",20)
replace nueva = subinstr(nueva,"LA COSTENA","LA COSTENA,",20)
replace nueva = subinstr(nueva,"ZETS","ZETS,",20)
replace nueva = subinstr(nueva,"EUFORIA","EUFORIA,",20)
replace nueva = subinstr(nueva,"HERSHEYS","HERSHEYS,",20)
replace nueva = subinstr(nueva,"CONTEMPO","CONTEMPO,",20)
replace nueva = subinstr(nueva,"FOCA","FOCA,",20)
replace nueva = subinstr(nueva,"PERICO","PERICO,",20)
replace nueva = subinstr(nueva,"MISTY JEANS","MISTY JEANS,",20)
replace nueva = subinstr(nueva,"KIMBERLY CLARK","KIMBERLY CLARK,",20)
replace nueva = subinstr(nueva,"AXE","AXE,",20)
replace nueva = subinstr(nueva,"CAMAY","CAMAY,",20)
replace nueva = subinstr(nueva,"NESCAFE","NESCAFE,",20)
replace nueva = subinstr(nueva,"DODYS","DODYS,",20)
replace nueva = subinstr(nueva,"LOREAL","LOREAL,",20)
replace nueva = subinstr(nueva,"DOVE","DOVE,",20)
replace nueva = subinstr(nueva,"PERLA","PERLA,",20)
replace nueva = subinstr(nueva,"OMEGA","OMEGA,",20)
replace nueva = subinstr(nueva,"DISNEY","DISNEY,",20)
replace nueva = subinstr(nueva,"BACARDI","BACARDI,",20)
replace nueva = subinstr(nueva,"CLORALEX","CLORALEXM",20)
replace nueva = subinstr(nueva,"VIANNEY","VIANNEY,",20)
replace nueva = subinstr(nueva,"PHARAON","PHARAON,",20)
replace nueva = subinstr(nueva,"DAROMA","DAROMA,",20)
replace nueva = subinstr(nueva,"VICTORIA","VICTORIA,",20)
replace nueva = subinstr(nueva,"CLORALEXM","CLORALEX,",20)
replace nueva = subinstr(nueva,"CARIOCAS","CARIOCAS,",20)
replace nueva = subinstr(nueva,"EL CONTINENTAL","EL CONTINENTAL",20)
replace nueva = subinstr(nueva,"MAYBLLINE RIMEL LARGA DUR,","MAYBELLINE, RIMEL LARGA DUR",20)
replace nueva = subinstr(nueva,"NESTLE","NESTLE,",20)
replace nueva = subinstr(nueva,"OROWEAT","OROWEAT,",20)
replace nueva = subinstr(nueva,"MARINELA","MARINELA,",20)
replace nueva = subinstr(nueva,"FRAICHE","FRAICHE,",20)
replace nueva = subinstr(nueva,"GERBER","GERBER,",20)
replace nueva = subinstr(nueva,"CALVIN KLEIN","CALVIN KLEIN,",20)
replace nueva = subinstr(nueva,"LADY SPEED STICK","LADY SPEED STICK,",20)
replace nueva = subinstr(nueva,"LABELLO","LABELLO,",20)
replace nueva = subinstr(nueva,"725 ORIGINALS","725 ORIGINALS,",20)
replace nueva = subinstr(nueva,"VICTORIAS SECRET","VICTORIAS SECRET,",20)
replace nueva = subinstr(nueva,"HUSH PUPPIES","HUSH PUPPIES,",20)
replace nueva = subinstr(nueva,"CARLO ROSSETTI","CARLO ROSSETTI,",20)
replace nueva = subinstr(nueva,"ANTHELIOS","ANTHELIOS,",20)
replace nueva = subinstr(nueva,"0STER","OSTER,",20)
replace nueva = subinword(nueva,"ACEITE","",20)
replace nueva = subinstr(nueva,"COLG,ATE","COLGATE,",20)
replace nueva = subinstr(nueva,"MP,","MARCA PROPIA,",20)
replace nueva = subinword(nueva,"CHICO","",20)
replace nueva = subinword(nueva,"GRAMOS","GR",20)
replace nueva = subinword(nueva,"GRAMO","GR",20)
replace nueva = subinstr(nueva,"KLEE,NEX","KLEENEX,",20)
replace nueva = subinstr(nueva,",,",",",20)

replace nueva = ltrim(nueva)
replace nueva = rtrim(nueva)
replace nueva = itrim(nueva)

gen temp = strpos(nueva,",")
sort temp

gen marca = substr(nueva,1,temp-1)
drop if marca==""

gen resto = substr(nueva,temp+1,.)
drop if resto==""
drop temp

replace marca = subinstr(marca,",","",20)
replace resto = subinstr(resto,",","",20)

replace marca = ltrim(marca)
replace marca = rtrim(marca)
replace marca = itrim(marca)

replace resto = ltrim(resto)
replace resto = rtrim(resto)
replace resto = itrim(resto)


replace resto = subinword(resto,"BOTE","",20)
replace resto = subinword(resto,"CHICA","",20)
replace resto = subinword(resto,"COLOR","",20)
replace resto = subinword(resto,"CU","",20)
replace resto = subinword(resto,"D","",20)
replace resto = subinword(resto,"DE","",20)
replace resto = subinword(resto,"G","GR",20)
replace resto = subinword(resto,"CHICO","",20)
replace resto = subinword(resto,"GRAMOS","GR",20)
replace resto = subinword(resto,"GRAMO","GR",20)
replace resto = subinword(resto,"GDE","",20)
replace resto = subinword(resto,"GE","GENERAL ELECTRIC",20)
replace resto = subinword(resto,"HO","H",20)
replace resto = subinword(resto,"HOJ","H",20)
replace resto = subinword(resto,"HOJA","H",20)
replace resto = subinword(resto,"HOJAS","H",20)
replace resto = subinword(resto,"MP","MARCA PROPIA",20)
replace resto = subinword(resto,"NATURAL","NAT",20)
replace resto = subinword(resto,"PARA","",20)

replace marca = subinword(marca,"BOTE","",20)
replace marca = subinword(marca,"CHICA","",20)
replace marca = subinword(marca,"CHICO","",20)
replace marca = subinword(marca,"GRAMOS","GR",20)
replace marca = subinword(marca,"GRAMO","GR",20)
replace marca = subinword(marca,"COLOR","",20)
replace marca = subinword(marca,"CU","",20)
replace marca = subinword(marca,"D","",20)
replace marca = subinword(marca,"DE","",20)
replace marca = subinword(marca,"G","GR",20)
replace marca = subinword(marca,"GDE","",20)
replace marca = subinword(marca,"GE","GENERAL ELECTRIC",20)
replace marca = subinword(marca,"HO","H",20)
replace marca = subinword(marca,"HOJ","H",20)
replace marca = subinword(marca,"HOJA","H",20)
replace marca = subinword(marca,"HOJAS","H",20)
replace marca = subinword(marca,"MP","MARCA PROPIA",20)
replace marca = subinword(marca,"NATURAL","NAT",20)
replace marca = subinword(marca,"PARA","",20)

replace marca = ltrim(marca)
replace marca = rtrim(marca)
replace marca = itrim(marca)

replace resto = ltrim(resto)
replace resto = rtrim(resto)
replace resto = itrim(resto)

compress
save "$raw\dbvf1.dta", replace




clear all
use "$raw\dbvf1.dta"
merge m:1 idcity generic marca resto using "$raw/products.dta"
keep if _merge==3
drop _merge

* Con esto me di cuenta que quizás no tengamos suficientes con presencia en 2017, pero bueno, se hace lo que se puede
/*
* Hay repetidos por día, habrá que sacar mean
*duplicates r idcity generic nueva marca resto date

collapse (max) max_date=date (min) min_date=date ,by(prod city)

bysort prod: egen num_city=count(city)

drop if min_date>tm(2017m12)
drop if max_date<tm(2017m1)

bysort prod: egen num_city2017=count(city)

duplicates drop prod, force
tab num_city
tab num_city2017
*/

rename prod idproduct

compress
save "$raw\VF_tot.dta", replace





clear all
use "$raw\VF_tot.dta"
keep idproduct generic description match
keep if match==.
duplicates drop
sort idproduct

duplicates drop idprod, force
drop match

export excel using "$raw\VF_prod_simple.xls", firstrow(variables) replace



clear all
use "$raw\VF_tot.dta"
keep idproduct generic description
duplicates drop
sort idproduct

export excel using "$raw\VF_prod_complete.xls", firstrow(variables) replace



clear all
use "$raw\VF_tot.dta"
keep generic pond
duplicates drop
gsort - pond

export excel using "$raw\INPC_weight.xls", firstrow(variables) replace



clear all
use "$raw\VF_tot.dta"

bysort idprod: histogram date, d

h histogram

*separate price, by(idproduct)
*tw sc price1 price10 price11 price12 price13 price14 price15 price19 price20  date, ms(Oh..)

tw sc price date






















*********** PROOF OF STAKE. PROBANDO A VER QUÉ TAN SENSIBLE ESTÁ EL PEDO
clear all
use "$raw\1.dta"


reclink2 generic marca resto using "$raw\2.dta", idmaster(idcitsubcgenconsectime1) idusing(idcitsubcgenconsectime2) gen(match2) wmatch(1 18 14) orblock(generic) required(generic) _merge(merge2) minscore(0.75) minbigram(1)
rename generic tempgeneric
rename marca tempmarca
rename resto tempresto
rename Ugeneric generic
rename Umarca marca
rename Uresto resto
merge m:1 generic marca resto max_date2 min_date2 using "$raw\2.dta", gen(presence2)
rename generic generic2
rename marca marca2
rename resto resto2
rename tempgeneric generic
rename tempmarca marca
rename tempresto resto
gsort - match2
duplicates drop idcitsubcgenconsectime1 if idcitsubcgenconsectime1!=., force
replace idcitsubcgenconsectime1=idcitsubcgenconsectime2 if idcitsubcgenconsectime1==.
replace generic = generic2 if presence2==2
replace marca = marca2 if presence2==2
replace resto = resto2 if presence2==2


replace marca="" if max_date1==.
replace resto="" if max_date1==.
replace generic="" if max_date1==.
replace idcitsubcgenconsectime1=. if max_date1==.

sort match2
































************ SUPER HARD

clear all
use "$raw\1.dta"

forvalues j = 2/55 {
	reclink2 generic nueva using "$raw\\`j'.dta", idmaster(idcitsubcgenconsectime1) idusing(idcitsubcgenconsectime`j') gen(match`j') wmatch(1 20) orblock(generic) required(generic) _merge(merge`j') minscore(0.7) minbigram(1)
	rename Ugeneric generic`j'
	rename Unueva nueva`j'
	strdist nueva nueva`j', g(lev`j')
	gsort lev`j'
	duplicates drop idcitsubcgenconsectime1, force
}
compress
save "$raw\total_join_uhard2.dta", replace


clear all
use "$raw\total_join_uhard2.dta"
egen num_cities = rownonmiss(generic*), strok
gsort - num_cities

keep num_cities generic nueva min_date* max_date*

save "$raw\preliminar2.dta", replace















*Cada par mergeado se puede checar uno por uno si sí
save "$raw\peg.dta"
clear all
clrevmatch using "$raw\peg.dta", idmaster(idcitsubcgenconsectime1) idusing(idcitsubcgenconsectime2) varM(nueva) varU(nueva2) clrev_result(input) clrev_note(notas) replace

* smerge merge datasets in Stata on long strings and less precise matching criterion

* matchit Matches two columns or two datasets based on similar text patterns 
* strgroup matches similar strings together

* jarowinkler Jaro-Winkler distance metric of strings 
* levenshtein Levenshtein edit distance of strings
* strdist Levenshtein edit distance of strings





********* PARA PEGAR AL FINAL CON LA BASE ORIGINAL NO USAR idcitsubcgenconsectime; PEGAR CON STRINGS producto y ciudad


















replace nueva = subinstr(nueva,"","",20)
replace nueva = subinword(nueva,"","",20)


cap drop perro
gen perro = strpos(nueva,"LT")
tab nueva if perro>0



************************************************************ CLEANING STRINGS
* replstr y replword change character/word in each obs of string
* trimblnk removes all leading and trailing blanks and removes all embedded multiple blanks.
* mixcase changes to be mostly lower case with the beginning of each word capitalized.
* exchstr exchanges the contents of two string variables.
* splitstr parses on character, moves the first token into newvar, and eliminates the token from the original.
* moss finds occurrences of substrings matching a pattern. count of occurrences, positions, and the exact substrings found
* lookand lists variables that contain all of some character strings
* lookfor lists variables that contain ony of some character strings

* clean_class removes blanks, accents, full stops, hyphens and apostrophes from a string variable.
* clean_name removes blanks, accents, full stops, hyphens, apostrophes and all uncommon characters.
* cleanchars remove unwanted characters in dataset. var names, labels, string, value label names and level-labels.

* map maps all the unique levels of a variable or list of variables to their associated values.

************************************************************ MATCHING STRINGS
* reclink uses record linkage methods to match observations between two datasets, fuzzy merge
* reclink2 probabilistic record linkage between two datasets that have no joint identifier
* clrevmatch review reclink was correct

* smerge merge datasets in Stata on long strings and less precise matching criterion

* matchit Matches two columns or two datasets based on similar text patterns 
* strgroup matches similar strings together

* jarowinkler Jaro-Winkler distance metric of strings 
* levenshtein Levenshtein edit distance of strings
* strdist Levenshtein edit distance of strings

************************************************************ ENGLISH
* extrname extract names in American, from strings
* stnd_compname standarize company names
* stnd_address standarize adresses

* Ancilliary of 2 before, but might be helpful alone
* stnd_commonwrd_all
* stnd_commonwrd_name
* stnd_entitytype
* stnd_nesw
* stnd_numbers
* stnd_secondaryadd
* stnd_smallwords remove "and" "the"
* stnd_specialchar Allows to place exceptions
* agg_acronym Create a new variable by removing spaces between two or more one-letter words
* stnd_streettype
* parsing_add_secondary
* parsing_entitytype
* parsing_namefield
* parsing_pobox








































