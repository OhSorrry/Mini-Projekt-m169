# Basis-Image: Apache-Image
FROM httpd:latest

# System aktualisieren und unnötige Daten löschen
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Apache starten
CMD ["httpd-foreground"]
