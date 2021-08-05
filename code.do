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
replace nueva = subinstr(nueva,",","",20)
replace nueva = subinstr(nueva,".","",20)
replace nueva = subinstr(nueva,"%","",20)

replace nueva = subinstr(nueva,"CORTE SINTETICO","COR SINT",20)
replace nueva = subinstr(nueva,"SUELA SINTETICA","SUE SINT",20)
replace nueva = subinstr(nueva,"CORTE PIEL","COR PIEL",20)
replace nueva = subinstr(nueva,"ZAPATOS","ZAP",20)
replace nueva = subinstr(nueva,"ZAPATO","ZAP",20)
replace nueva = subinstr(nueva,"PANUELOS DESECHABLES","PAN DESECH",20)
replace nueva = subinstr(nueva,"SANDALIAS","SAND",20)
replace nueva = subinstr(nueva,"SANDALIA","SAN",20)
replace nueva = subinstr(nueva,"COCA COLA","COCACOLA",20)
replace nueva = subinstr(nueva,"TOSTADAS ONDULADAS","TOSTADAS",20)
replace nueva = subinstr(nueva,"E PURA","EPURA",20)
replace nueva = subinstr(nueva,"ULTRADESLIZANTE","",20)
replace nueva = subinstr(nueva,"MODELO","MOD",20)
replace nueva = subinstr(nueva,"VARIOS","",20)
replace nueva = subinstr(nueva,"POLIESTER","POL",20)
replace nueva = subinstr(nueva," &","&",20)
replace nueva = subinstr(nueva,"& ","&",20)
replace nueva = subinstr(nueva,"POLIESTE","POL",20)
replace nueva = subinstr(nueva,"ACCESORIOS","ACC",20)
replace nueva = subinstr(nueva,"ELASTANO","ELA",20)
replace nueva = subinstr(nueva,"PULGADAS","",20)

replace nueva = ltrim(nueva)
replace nueva = rtrim(nueva)
replace nueva = itrim(nueva)

* WE FIX 2 THINGS HERE:
* 1) Exact same product followed in city the same time (therefore we would average these)
* 2) Falsely separated (unchained) through time but its actually the same product
preserve
collapse (min) min_date (max) max_date (sum) count_price, by(city generic nueva)
gen perro = max_date-min_date+1
gen dif = count_price-perro
keep if dif>=-2
drop dif perro
save "$raw\fix.dta", replace
restore

* WATCH OUT. GENERIC ID MIGHT BE DIFFERENT AMONG SAME GENERICS!

merge m:1 city generic nueva using "$raw\fix.dta", update replace
duplicates drop city generic nueva if _merge!=1, force
drop _merge
* PIERDE SENTIDO EL ID
* SOLO LO MANTENGO PARA ID de RECLINK


* We only keep time series that end 2017 or after
*drop if max_date<=tm(2017m1)

* We only keep time series with 24 months of observations or longer
*sort count_price
keep if count_price>=12

compress
save "$raw\pseudoclean.dta", replace




forvalues i = 1/55 {
	clear all
	use "$raw\pseudoclean.dta"
	keep idcity generic min_date max_date nueva count_price idcitsubcgenconsectime
	keep if idcity==`i'
	rename idcitsubcgenconsectime idcitsubcgenconsectime`i'
	rename count_price count_price`i'
	rename idcity idcity`i'
	rename min_date min_date`i'
	rename max_date max_date`i'
	compress
	save "$raw\\`i'.dta", replace
}

************ SUPER HARD

clear all
use "$raw\1.dta"

forvalues j = 2/55 {
	reclink2 generic nueva using "$raw\\`j'.dta", idmaster(idcitsubcgenconsectime1) idusing(idcitsubcgenconsectime`j') gen(match`j') wmatch(1 20) orblock(generic) required(generic) _merge(merge`j') minscore(0.7) minbigram(1)
	compress
	rename Ugeneric generic`j'
	rename Unueva nueva`j'
	strdist nueva nueva`j', g(lev`j')
	gsort lev`j'
	duplicates drop idcitsubcgenconsectime1, force
}

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








































