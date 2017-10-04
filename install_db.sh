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
        [Yy]* ) psql -c "CREATE ROLE war superuser"; createdb warriors -U war; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Create a new table? (please do so if you haven't done so)" yn
    case $yn in
        [Yy]* ) psql -U war -f create_tables.txt ; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
