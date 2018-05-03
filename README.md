### Test-repository-for-schoolwork
Tässä on raportti Haaga-Helian kurssilta Palvelinten hallinta ict4tn022-5. Tehtävä oli harjoitus 5:stä kohdat b) ja c).


# Harjoitus 5


## C) Aja oma Salt-tila suoraa git-varastosta. Voit joko tehdä tilan alusta lähtien itse tai forkata sirottimen.

Päätin siirtää vanhat salt-tilani GitHub:in. Vanhat tilat ja tehtävät löytyvät [täältä](https://rikuvaurio.wordpress.com/). Tein uuden repository:n käyttäjälleni ja annoin tälle GPL-3.0 lisenssin.

Sitten tiputin koneeni /srv/ kansion tänne.

Käynnistin koneeni sen jälkeen xubuntu live-tikulta. Tein seuraavat komennot:

  $ sudo setxkbmap fi
  $ sudo apt-get update
  $ sudo apt-get -y install git salt-minion

