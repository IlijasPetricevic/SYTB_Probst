## Übung (Tage bis zum Ball)
Schreibe ein Shell-Skript das die Anzahl der Tage bis zum HTL Ball ermittelt. Das Datum des Balls soll am Anfang des Skripts in einer Variable stehen. Die Ausgabe soll in der folgenden Form sein:
```
Es sind noch 94 Tage bis zum HTL Ball (2027-01-15)
```
Hinweise:
 
Rechne mit dem date Format seconds since the Epoch (1970-01-01 00:00 UTC), siehe date +%s.
Mit date --date=... kann ein beliebiges Datum statt dem aktuellen verwendet werden, z.B. date --date=2027-01-15 +%s.
 
**In dayDueProm.sh**
```sh
#!/bin/bash
 
ball_date="2027-01-15"
 
today=$(date +%s)
ball=$(date --date="$ball_date" +%s)
 
days=$(( (ball - today) / 86400))
 
echo "Es sind noch $days Tage bis zum HTL Ball ($ball_date)"
```
 
**In Terminal**
```sh
chmod +x dayDueProm.sh
./dayDueProm.sh
```
 
## Übung (Zufälliger Satz)
Erstelle ein Skript das einen Satz aus 5 zufälligen Wörtern bildet, z.B.:
```
richtig ganzen Kilometer auf Mittel
```
Wähle die Wörter aus dieser Wortliste: Wörter
 
Lade die Wortliste mit wget herunter.
Das Skript soll auch die Anzahl der in der Wortliste enthaltenen Wörter ermitteln. D.h. die Konstante 1000 soll im Skript nicht vorkommen.
Hinweise:
 
Das Kommando sed -n 5p datei.txt gibt bspw. nur die 5. Zeile aus.
$RANDOM liefert eine Zufallszahl. Achtung: #!/bin/bash in der she-bang Zeile verwenden, sh unterstützt kein $RANDOM.
$(( RANDOM % N )) liefert Werte von 0 bis N-1 – die Zeilennummern bei sed beginnen aber bei 1.
 
**In Terminal**
```sh
wget https://raw.githubusercontent.com/HTL-Braunau-probst/testdata/refs/heads/main/wordlist.txt
```
 
**randomSentence.sh**
```sh
#!/bin/bash
 
anzahl=$(wc -l < wordlist.txt)
 
wort1=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort2=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort3=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort4=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort5=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
 
echo "$wort1 $wort2 $wort3 $wort4 $wort5"
```
 
**In Terminal**
```sh
chmod +x randomSentence.sh
./randomSentence.sh
```
 
## Übung (Datierte Kopie V1)
Schreibe ein Skript, das einen Dateinamen als erstes Argument übernimmt und eine datierte Kopie der Datei anlegt. Heißt die Datei z.B. file1.txt und ist heute der 2026-10-13, so soll die Kopie 2026-10-13_file1.txt heißen.
 
Hinweis: Verwende command substitution und das Kommando date.
has context menu