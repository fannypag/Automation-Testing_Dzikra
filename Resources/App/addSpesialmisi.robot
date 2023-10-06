# Program    : Tambah Spesial Misi_App
# Deskripsi  : Menambahkan spesial misi valid
# Nama       : Fanny Putria Aguutsina
# Tanggal    : 27 September 2023
# Compiler   : Visual Studio Code

*** Settings ***
Library   Selenium2Library
Resource    ../PO/addSpesialmisi.robot

*** Keywords ***
user add spesial misi success    #memanggil modul login
    Login Add Spesial Misi Success
    
user go to menu misi    #memanggil modul masuk menu misi
    Navigate To Menu Misi

user add spesial misi    #memanggil modul tambah spesial misi
    [Arguments]    ${namamisi}    ${durasimisi}    ${deskripsi}    ${tgl_aktivasi}    ${media}    ${gambar_badge}    ${namabadge}    ${deskripsi_badge} 
    Add Spesial Misi    ${namamisi}    ${durasimisi}    ${deskripsi}    ${tgl_aktivasi}    ${media}    ${gambar_badge}    ${namabadge}    ${deskripsi_badge}

user add spesial misi item    #memanggil modul tambah item spesial misi
    [Arguments]    ${target}    ${keterangan}    ${reward_XP}    ${reward_DZ}
    Add Item Spesial Misi    ${target}    ${keterangan}    ${reward_XP}    ${reward_DZ}

user verify add spesial misi success    #memanggil modul verifikasi 
    Verify Add Spesial Misi Success



