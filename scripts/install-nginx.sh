#!/usr/bin/env bash

echo "++++++++++++++++++++++++++++++++"
echo "Before Update"
echo "++++++++++++++++++++++++++++++++"

sudo apt-get update

echo "++++++++++++++++++++++++++++++++"
echo "Update Completed Successfully"
echo "Now install nginx Web Server"
echo "++++++++++++++++++++++++++++++++"

sudo apt-get install -y nginx

echo "++++++++++++++++++++++++++++++++"
echo "Completed nginx Installation "
echo "+++++++++++++++++++++++++++++++++"
