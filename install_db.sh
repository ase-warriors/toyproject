#!/bin/sh
while true; do
    read -p "Mac: Install PostgreSQL? (please install if you don't have it yet)" yn
    case $yn in
        [Yy]* ) brew install postgresql; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Ubuntu/Debian Users: Install PostgreSQL? (please install if you don't have it yet)" yn
    case $yn in
        [Yy]* ) sudo apt install postgresql; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Create a new database? (please do so if you haven't done so)" yn
    case $yn in
        [Yy]* ) createdb warriors; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Create a new table? (please do so if you haven't done so)" yn
    case $yn in
        [Yy]* ) psql -f create_tables.txt ; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
