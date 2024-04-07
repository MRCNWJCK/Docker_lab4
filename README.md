# Docker_lab4

## Zawartość pliku DockerFile
![dockerfilepng](https://github.com/MRCNWJCK/Docker_lab4/assets/106474992/47c3d2be-4a12-46e9-a520-bfb9ae7937f7)

#### ```FROM ubuntu:latest``` - Wybiera obraz Ubuntu najnowszej wersji jako podstawowy obraz do budowy nowego kontenera.
#### ```LABEL org.opencontainers.image.authors="Marcin Wojcik <wojcikmarcin49@gmail.com>"``` - Dodaje metadane identyfikujące autora obrazu jako Marcin Wojcik z adresem e-mail wojcikmarcin49@gmail.com.
#### ```RUN apt-get update && apt-get upgrade -y```- Aktualizuje listę pakietów i instaluje wszystkie dostępne aktualizacje systemowe.
#### ```RUN apt-get install -y apache2``` - Instaluje serwer Apache
#### ```COPY index.html /var/www/html/index.html``` - Kopiuje plik o nazwie index.html z bieżącego katalogu do katalogu docelowego /var/www/html/ w kontenerze.
#### ```EXPOSE 8080``` - Eksponuje port 8080 na zewnątrz kontenera, umożliwiając dostęp do serwera Apache przez ten port.
#### ```CMD ["apachectl", "-D", "FOREGROUND"]``` - Uruchamia serwer Apache w trybie planu FOREGROUND.

## Wynik działania polecenia docker build
#### Polecenie to buduje obraz na podstawie Dockerfile w bieżącym katalogu i nadaje mu tag local/web100
![dockerbuild](https://github.com/MRCNWJCK/Docker_lab4/assets/106474992/31bac57f-ef1d-4a60-aa38-a4f0a4e5723c)

## Wynik działania polecenia docker run
#### Polecenie to uruchamia kontener o nazwie "lab4" na porcie 8080 hosta, korzystając z obrazu "local/web100", który działa na porcie 80 wewnątrz kontenera.
![dockerrun](https://github.com/MRCNWJCK/Docker_lab4/assets/106474992/8aec536b-f663-40aa-ab56-e4520f4208bf)

## Wynik działania polecenia docker history
#### Polecenie to wyświetla historię budowy obrazu, obraz posiada 4 warstwy z niezerową wartością
![dockerhistory](https://github.com/MRCNWJCK/Docker_lab4/assets/106474992/a39257cf-c178-4437-be69-2d24f655eb49)

## Index.html działający na porcie 8080
![zdjecie](https://github.com/MRCNWJCK/Docker_lab4/assets/106474992/30db3176-cbbf-4148-8f94-e536d3ca8336)
