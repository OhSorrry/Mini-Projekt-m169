# Mini-Projekt-m169

Im Rahmen des "Mini-Projekts" bestand die Aufgabe darin, einen Webserver mit einer einfachen Webseite bereitzustellen. Dafür sollte ein eigenes Image erstellt und als Container ausgeführt werden. Der Container muss dabei sowohl die Log-Dateien als auch die index.html-Datei lokal speichern. Nachfolgend gibt es eine Schritt-für-Schritt-Anleitung zur Umsetzung. [Dokumentation]




# Webserver mit Seite
Ein passendes Image auf hub.docker.com recherchieren

Ein eigenes Dockerfile erstellen → [Dockerfile]

Eine index.html-Datei anlegen und im Verzeichnis /public-html abspeichern

Das Image mit folgendem Befehl erstellen:

nginx
Kopieren
Bearbeiten
docker build -t "Dockerfile"
Ein lokales Verzeichnis für die Log-Dateien erstellen

Den Container starten:

swift
Kopieren
Bearbeiten
docker run -d -p 8080:80 \
-v /home/vmadmin/mein-apache-projekt/logs:/usr/local/apache2/logs \
-v /home/vmadmin/public-html:/usr/local/apache2/htdocs \
--name mein_webserver httpd
