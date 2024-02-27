<!-- ABOUT THE PROJECT -->
# ABOUT THE PROJECT
![oauth](https://i.imgur.com/wBDVjf7.png)


    Database design for an online Gift Shop. 
    The database is populated with data with some scripts.
    That data is then displayed using 2 methods:
        - Microsoft PowerBI
        - Python script
    

    The main.py calls stored procedures and displays text results with tabulete library. 
    For visual reports to analyze data, PowerBI was used.


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

2. Install Oracle Database, Oracle Client and SQL Developer

3. Install Python and cx_Oracle library
   ```sh
   pip install cx_Oracle
   ```
 
4. Install PowerBI


<!-- USAGE EXAMPLES -->
## Usage

1. Open SQL Developer. Click New Connection, enter the data:
	    my-oracle-db, username, password, SID; then press Test, Save, Connect.
2. Copy-paste the sql scripts into SQL Developer, first create.sql, then insert_data.sql and commit 
    from the top button with the green tick.
3. From the left pane of SQL Developer, under Packages, add a new package. Copy-paste from the 
    pck_gift_shop.sql file, create the package header, then the package body (separated by a 
    commented line in my file) and after each one, compile (the button with the grey wheels) and finally commit.
4. Run the "python main.py" command. The results of the 3 queried procedures will be displayed.


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

* [Python with cx_Oracle](https://oracle.github.io/python-cx_Oracle/samples/tutorial/Python-and-Oracle-Database-Scripting-for-the-Future.html)



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
