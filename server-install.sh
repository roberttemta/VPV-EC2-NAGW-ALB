#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo bash -c 'echo "<html><body style=\"background-color: 47D34F;\"><h1><p> Welcome to Utrains the place to learn DevOps, Cloud, Linux!!.<br> This traffic