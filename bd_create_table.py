import sqlite3

# Conectar com algum BD
db = sqlite3.connect("banco.db")

# Adquirir um cursor
cursor = db.cursor()

# Ler o arquivo
file = open("script_create.sql", "r")
script = file.read()
file.close()

print(script)

# Executar o script
cursor.executescript(script)

# Fechar tudo
cursor.close()
db.close()
