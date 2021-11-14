#!/bin/bash

if which zenity >/dev/null;
then echo "Zenity ist installiert"
else echo "Zenity ist nicht installiert. Um V-GUI-deo verwenden zu können, muss Zenity installiert werden." && xterm -e "sudo zypper ln  -l -y zenity"
fi

if which youtube-dl >/dev/null;
then echo "youtube-dl ist installiert"
else echo "youtube-dl ist nicht installiert. Um V-GUI-deo verwenden zu können, muss youtube-dl installiert werden." && xterm -e "sudo zypper ln  -l -y youtube-dl"
fi

#!/bin/bash

DOWNDIR=$HOME/Videos/Heruntergeladen/
mkdir $DOWNDIR

EINGABE=$(zenity --list --title "V-GUI-deo" --width 500 --height 460 --text "In welcher Qualität soll das Video heruntergeladen werden? Das Video sollte in der Qualität verfügbar sein. \nHinweis! Aktuell hat youtube-dl Probleme mit der Herunterladegeschwindigkeit von Videos. Das ist kein Fehler von V-GUI-deo." --column "Auswahl" --column "Qualität" --column "Definition" --radiolist TRUE "144p" "Low-Definition" FALSE "240p" "Low-Definition" FALSE "360p" "Low-Definition" FALSE "480p" "Standard-Definition" FALSE "720p" "High-Definition" FALSE "720p60fps" "High-Definition + 60fps" FALSE "1080p" "Full-High-Definition" FALSE "1080p60fps" "Full-High-Definition + 60fps" \ FALSE "1440p" "Quad-High-Definition" FALSE "1440p60fps" "Quad-High-Definition + 60fps" FALSE "2160p" "Ultra-High-Definition 4K" FALSE "2160p60fps" "Ultra-High-Definition 4K + 60fps" FALSE "Beste Qualität" "Video+Audio" FALSE "Dailymotion" "Beste Qualität" FALSE "Über")



if [ "$EINGABE" == "144p" ]
then

LINK144P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 160+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK144P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 144p (Low-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "240p" ]
then

LINK240P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 133+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK240P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 240p (Low-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "360p" ]
then

LINK360P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 134+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK360P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 360p (Low-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "480p" ]
then

LINK480P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 135+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK480P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 480p (Low-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "720p" ]
then

LINK720P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 136+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK720P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 720p (High-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "720p60fps" ]
then

LINK720P60FPS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 136+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK720P60FPS" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 720p60fps (High-Definition + 60fps) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "1080p" ]
then

LINK1080P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK1080P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 1080p (Full-High-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "1080p60fps" ]
then

LINK1080P60FPS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 299+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK1080P60FPS" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 1080p60fps (Full-High-Definition + 60fps) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "1440p" ]
then

LINK1440P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK1440P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 1440p (Quad-High-Definition) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "1440p60fps" ]
then

LINK1440P60FPS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK1440P60FPS" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 1440p60fps (Quad-High-Definition + 60fps) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "2160p" ]
then

LINK2160P=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK2160P" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 2160p (Ultra-High-Definition 4K) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "2160p60fps" ]
then

LINK2160P60FPS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINK2160P60FPS" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität mit einer Auflösung von 2160p60fps (Ultra-High-Definition 4K + 60fps) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "Beste Qualität" ]
then

LINKBESTEQUALI=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINKBESTEQUALI" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität in der besten Qualität (Video+Audio) heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "Dailymotion" ]
then

LINKDAILYMOTION=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Video einfügen und auf Ok klicken.")

youtube-dl -f 137+bestaudio --merge-output-format mp4 -o "$DOWNDIR%(title)s.%(ext)s" "$LINKDAILYMOTION" | zenity --progress --title "Herunterladen" --text "Das gewünschte Video wird in der Qualtität in der besten Qualität (Video+Audio) von Dailymotion heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "Über" ]
then

zenity --info --title "Über" --width 500 --height 100 --text "V-GUI-deo ist eine Grafische Benutzerobefläche für das Programm youtube-dl. \nV-GUI-deo gibt es für GNU/Linux. \nAktuelle Version: <b>1.0</b> <i>20211106</i>. \nLink zu V-GUI-deo: <a href='https://github.com/Monstanner/V-GUI-deo'>V-GUI-deo</a>. \nV-GUI-deo ist eine weiterentwicklung von dem CLI-Skript <a href='https://github.com/Monstanner/V-CLI-o'>V-CLI-deo</a>." && sh V-GUI-deo.sh && exit 0

fi
