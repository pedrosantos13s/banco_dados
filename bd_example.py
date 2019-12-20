import sqlite3

# Conectar com algum BD
db = sqlite3.connect("banco.db")

# Adquirir um cursor
cursor = db.cursor()

# Executar DDL
cursor.execute(
    "CREATE TABLE AGENDA(id INTEGER NOT NULL PRIMARY KEY, nome TEXT, telefone TEXT)")

# Executar INSERT
cursor.execute("INSERT INTO AGENDA(nome,telefone) values (?,?)",
               ("Ricarth", "99696"))

# Executar CONSULTA
cursor.execute("SELECT * FROM AGENDA")

# Receber informações do curso
resultado = cursor.fetchall()
print(resultado)

# Fechar cursor e conexão
cursor.close()
db.close()
