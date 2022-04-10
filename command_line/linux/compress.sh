#!/bin/bash

#7z create an archive
7z a folder.7z folder

#7z extract an archive
7z x folder.7z

#zip create an archive
zip -r folder.zip folder

#zip extract an archive
unzip folder.zip

#zip extract many zip files
unzip '*.zip'

#tar create an archive
tar -cvf folder.tar folder

#tar.gz create an archive
tar -czvf folder.tar.gz folder

#tar extract an archive
tar -xvf folder.tar

#tar.gz/tgz extract an archive
tar -zxvf folder.tar.gz
tar -zxvf folder.tgz

#tar extract an archive created from a folder to a folder 
#NOTE: if you don't add --strip-components=1, then the structure will be folder/folder/file1.txt
#instead of folder/file1.txt
mkdir folder && tar -xvf folder.tar -C folder --strip-components=1

#tar.gz extract an archive created from a folder to a folder 
#NOTE: if you don't add --strip-components=1, then the structure will be folder/folder/file1.txt
#instead of folder/file1.txt
mkdir folder && tar -zxvf folder.tar.gz -C folder --strip-components=1

#Extract multiple tar files into folder with the tar name and remove the tar file
find . -name "*.tar" | while read NAME ; do mkdir -p "${NAME%.tar}"; tar -xvf "${NAME}" -C "${NAME%.tar}"; rm -f "${NAME}"; done

