#!/bin/bash
rm -fr *json
rm -fr packages
mkdir packages
echo "root dir" > package.json
echo "root dir" > tsconfig.json
echo "root dir list"
ls -al
echo "---------------"
cd packages
mkdir @wk
mkdir @wk-app
mkdir @wk-test
echo "dir packages list"
ls -al
echo "---------------"
cd @wk
echo "file creation" > README.md
echo "another" > package2.json
## ln -s existing_source_file optional_symbolic_link
echo "------------------------HERE23------------------------------"
for VARIABLE in {1..500}
do
    mkdir dir_$VARIABLE
    echo "another file" > dir_$VARIABLE/file.json
    ln -s ../../../tsconfig.json dir_$VARIABLE/linkUp_$VARIABLE.json
    ln -s ../../tsconfig.json dir_$VARIABLE/tsclink_2$VARIABLE.json
done
echo "dir @wk list"
ls -al
echo "---------------"
cd dir_1
echo "dir dir_1 list"
ls -al
echo "---------------"
