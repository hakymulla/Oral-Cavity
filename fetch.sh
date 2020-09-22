 #!/bin/bash
echo 'Downloading data'
mkdir data/;
curl https://md-datasets-cache-zipfiles-prod.s3.eu-west-1.amazonaws.com/ftmp4cvtmb-1.zip -o data/alldata;
unzip data/alldata -d data/;

mkdir data/images

mv data/'First Set'/'100x Normal Oral Cavity Histopathological Images'/* data/images
mv data/'First Set'/'100x OSCC Histopathological Images'/* data/images
mv data/'Second Set'/'400x Normal Oral Cavity Histopathological Images'/* data/images
mv data/'Second Set'/'400x OSCC Histopathological Images'/* data/images
rm -rf data/'First Set'/ data/'First Set'/
