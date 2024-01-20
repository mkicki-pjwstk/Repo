#!/bin/bash
git config --global user.name "Imie i nazwisko"
git config --global user.email "adres@email.com"
ssh-keygen -t ed25519 -C "adres@email.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519
