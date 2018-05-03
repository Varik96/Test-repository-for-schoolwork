### Test-repository-for-schoolwork
Tässä on raportti Haaga-Helian kurssilta Palvelinten hallinta ict4tn022-5. Tehtävä oli harjoitus 5:stä kohdat b) ja c).


# Harjoitus 5


## C) Aja oma Salt-tila suoraa git-varastosta. Voit joko tehdä tilan alusta lähtien itse tai forkata sirottimen.

Päätin siirtää vanhat salt-tilani GitHub:in. Vanhat tilat ja tehtävät löytyvät [täältä](https://rikuvaurio.wordpress.com/). Tein uuden repository:n käyttäjälleni ja annoin tälle GPL-3.0 lisenssin.

Sitten tiputin koneeni /srv/ kansion tänne. Jätin sinne osan tiloista testattavaksi. Top.sls:in avulla saan highstate komennolla kaikki tilat suoraan asennettua. Tein highstate.sh tiedoston skriptille, joka tekee highstate komennon paikallisesti. Otin mallia tähän Tero Karvisen sirotin git-varastosta.

highstate.sh
  sudo sudo salt-call --local --file-root srv/salt/ state.highstate

Sitten valmiina kokeilemaan.

Käynnistin koneeni xubuntu live-tikulta. Tein seuraavat komennot:

  $ sudo setxkbmap fi
  $ sudo apt-get update
  $ sudo apt-get -y install git salt-minion

Sitten etsin GitHub:ista "clone" kohdasta osoitteen ja copy/pastesin sen komentoon:

  $ git clone https://github.com/Varik96/Test-repository-for-schoolwork.git

Nyt minulla oli repository ja sen sisällä salt-tilat. Menin saamaani kansioon.

  $ cd/ Test-repository-for-schoolwork/

Käytin komentoa:

  $ sudo bash highstate.sh
  
Siten ajoin skriptin, joka teki tila määrityksien mukaan muutokset. Testi oli onnistunut, eli Succeeded: 13 (changed=13) ja Failed: 0.

Lähteet:
https://github.com/terokarvinen/sirotin
http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-4-ti-5-ke-5-loppukevat-2018-5p
http://terokarvinen.com/2016/publish-your-project-with-github
