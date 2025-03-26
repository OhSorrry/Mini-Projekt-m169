# Webserver mit Seite
Ein passendes Image auf hub.docker.com recherchieren

Ein eigenes Dockerfile erstellen → [Dockerfile(https://github.com/OhSorrry/Mini-Projekt-m169/blob/main/Dockerfile)]

[Index.html(https://github.com/OhSorrry/Mini-Projekt-m169/blob/main/Index.html)] anlegen und im Verzeichnis /public-html abspeichern

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
