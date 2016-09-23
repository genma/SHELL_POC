#!/bin/sh
# URL IMAGES :
# http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png

for i in `seq 1 9`
do
	echo "mkdir Volume$i" >>Script.sh
	for j in `seq 1 9`
	do
	echo "mkdir Volume$i/Chapitre$j">>Script.sh
			for k in `seq 0 9`
			do
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/00$i/00$j/00$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_00$i-00$j-00$k.png" >>Script.sh
			done
			
			for k in `seq 10 40`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/00$i/00$j/0$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_00$i-00$j-0$k.png" >>Script.sh
			done
	done
	echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/00$i/001/000-cover.jpg -O ./Volume$i/Chapitre1/rurouni-kenshin_1-2_00$i-001-000-cover.jpg" >>Script.sh
	for j in `seq 10 12`
	do
			echo "mkdir Volume$i/Chapitre$j">>Script.sh
			for k in `seq 1 9`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/00$i/0$j/00$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_00$i-0$j-00$k.png" >>Script.sh
			done
			
			for k in `seq 10 23`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/00$i/0$j/0$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_0$i-0$j-0$k.png" >>Script.sh
			done
	done
done

for i in `seq 10 28`
do
	echo "mkdir Volume$i">>Script.sh
	for j in `seq 1 9`
	do
			echo "mkdir Volume$i/Chapitre$j">>Script.sh
			for k in `seq 1 9`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/0$i/00$j/00$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_0$i-00$j-00$k.png" >>Script.sh
			done
			
			for k in `seq 10 23`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/0$i/00$j/0$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_0$i-00$j-0$k.png" >>Script.sh
			done
	done
	echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/0$i/001/000-cover.jpg -O ./Volume$i/Chapitre1/rurouni-kenshin_1-2_00$i-001-000-cover.jpg" >>Script.sh
	for j in `seq 10 11`
	do
			echo "mkdir Volume$i/Chapitre$j">>Script.sh
			for k in `seq 1 9`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/0$i/0$j/00$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_0$i-0$j-00$k.png" >>Script.sh
			done
			for k in `seq 10 23`
			do
			#http://bimg.anymanga.com/manga/rurouni-kenshin/010/011/003.png
			echo "wget http://bimg.anymanga.com/manga/rurouni-kenshin/0$i/0$j/0$k.png -O ./Volume$i/Chapitre$j/rurouni-kenshin_1-2_0$i-0$j-0$k.png" >>Script.sh
			done
	done
done

#Recherche des fichiers vides pour suppression 
echo "find . -type f -size 0 -delete" >>Script.sh
#Recherche de dossiers vides pour suppression 
echo "find . -type d -empty -delete -print" >>Script.sh

chmod +x Script.sh
./Script.sh