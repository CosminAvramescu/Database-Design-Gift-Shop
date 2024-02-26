<!-- ABOUT THE PROJECT -->
# ABOUT THE PROJECT
![oauth](https://i.imgur.com/wBDVjf7.png)

        Software necesar pentru rularea aplicatiei:
    Client Oracle
    SQL Developer

        Fisierul python apeleaza procedurile stocate si afiseaza rezultate text. 
        Pentru grafice, am folosit PowerBI.


### Built With
* [![Oracle][Oracle]][Oracle-url]
* [![Python][Python]][Python-url]
* [![PowerBI][PowerBI]][PowerBI-url]


<!-- GETTING STARTED -->
## Getting Started

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/CosminAvramescu/Database-Design-Gift-Shop.git
   ```


<!-- USAGE EXAMPLES -->
## Usage

1. Se stocheaza package-ul pck_gift_shop in baza de date prin intermediul SQL Developer. Se apasa New Connection, se introduc datele
my-oracle-db, system, parolaAiaPuternic4, XE, se apasa Test, Save, Connect.
2. Se da copy-paste la scripturile sql in SQL Developer, intai la create.sql, apoi la insert_data.sql si commit din butonul de sus cu bifa verde.
3. Din panoul din stanga al SQL Developer, de la Packages, se adauga un pachet nou. Se introduc pe rand, copy-paste, din fisierul pck_gift_shop.sql, crearea antetului pachetului, apoi body-ul pachetului (sunt despartite de o linie comentata) si dupa fiecare se compileaza (butonul cu rotitele gri) si in final se da commit.
4. Se ruleaza comanda python main.py. Se vor afisa rezultatele celor 3 proceduri interogate.


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.



<!-- CONTACT -->
## Contact

Cosmin-Alexandru Avramescu - [@my_linkedin](https://www.linkedin.com/in/cosmin-avramescu/)

Project Link: [https://github.com/CosminAvramescu/Database-Design-Gift-Shop)


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [rpcgen](https://docs.oracle.com/cd/E19683-01/816-1435/rpcgenpguide-21470/index.html)
* [OAuth](https://www.soapui.org/docs/oauth1/oauth1-overview/)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Oracle]: https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white
[Oracle-url]: https://docs.oracle.com/en/database/oracle/oracle-database/19/lnpls/index.html#Oracle%C2%AE-Database
[Python]: https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54
[Python-url]: https://docs.python.org/3.10/
[PowerBI]: https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black
[PowerBI-url]: https://learn.microsoft.com/en-us/power-bi/
