import cx_Oracle

class OracleConnection:
    def __init__(self, host, port, sid, username, password):
        self.host = host
        self.port = port
        self.sid = sid
        self.username = username
        self.password = password

    def openConnection(self):
        try:
            dsn_tns = cx_Oracle.makedsn(host=self.host, port=self.port, sid=self.sid)
            self.db = cx_Oracle.connect(user=self.username, password=self.password, dsn=dsn_tns)
            self.cursor = self.db.cursor()
            
            print("Connection open!")
        except Exception as e:
            print("Connection not open!")
            print(e)

    def closeConnection(self):
        try:
            self.cursor.close()
            self.db.close()
            print("Connection close!")
        except Exception as e:
            print("Connection not closed!")
            print(e)
    
    def get_users_with_reviews_for_other_products(self):
        try :
            reviews = self.cursor.var(cx_Oracle.CURSOR)
            self.cursor.callproc("pck_gift_shop.users_with_reviews_for_other_products_proc", [reviews])
            for elem in reviews.getvalue():
                print(f">> Produsul cu id-ul {elem[0]} si numele {elem[1]} cumparat de utilizatorul {elem[2]} a primit comentariu de la utilizatorul {elem[3]} - CARE NU A CUMPARAT PRODUSUL.") 
                print(f"\tComentariul sau are id-ul {elem[4]}, are rating-ul {elem[5]} si textul {elem[6]}")
            print()
        except Exception as e:
            print(e)
    
    def get_orders_with_delay_greater_than_7_days(self):
        try :
            print("----- Produsele din comenzile cu intarziere mai mare de 7 zile sunt: ")
            orders = self.cursor.var(cx_Oracle.CURSOR)
            self.cursor.callproc("pck_gift_shop.orders_with_delay_greater_than_7_days", [orders])
            for elem in orders.getvalue():
                print(f">> Produsul cu id {elem[5]} si numele {elem[6]} din comanda cu id {elem[0]} a userului cu id {elem[1]} platita la data de {elem[3].strftime('%Y-%m-%d')} are o intarziere de {elem[4]} zile") 
                print(f"\tFurnizorul cu id {elem[8]} si numele {elem[9]} este din {elem[10]} si poate fi contactat la numarul de telefon {elem[12]} sau emailul {elem[11]}")
            print()
        except Exception as e:
            print(e)
            
    def get_favorite_product_categories(self):
        try :
            orders = self.cursor.var(cx_Oracle.CURSOR)
            self.cursor.callproc("pck_gift_shop.favorite_product_categories", [orders])
            for elem in orders.getvalue():
                print(f">> Utilizatorul cu id {elem[0]} cumparat {elem[2]} {'produse' if elem[2]!=1 else 'produs'} din categoria {elem[1]}") 
        except Exception as e:
            print(e)

if __name__ == "__main__":
    oc = OracleConnection('localhost', 1522, 'XE', 'system', 'parolaAiaPuternic4')
    oc.openConnection()
    
    oc.get_users_with_reviews_for_other_products()
      
    oc.get_orders_with_delay_greater_than_7_days()
    
    oc.get_favorite_product_categories()
    
    oc.closeConnection()