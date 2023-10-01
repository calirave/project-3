import psycopg2
import json
from credentials import db_params

# db_params = {
#     "dbname": "name",
#     "user": "user",
#     "password": "password",
#     "host": "localhost",
#     "port": "port",
# }

# Open connection to database
conn = psycopg2.connect(**db_params)
print("connected")
cursor = conn.cursor()
# cursor.execute("SELECT * FROM demographics")
# cursor.execute("SELECT * FROM geography")
cursor.execute("SELECT * FROM vaccinations")
rows = cursor.fetchall()
column_name = [desc[0] for desc in cursor.description]
conn.close

# convert the rows into list of dictionaries
mydata = []
for row in rows:
    data_dict = {}
    for i in range(len(column_name)):
        data_dict[column_name[i]] = row[i]
    mydata.append(data_dict)

# # convert the list into JSON object
myjson = json.dumps(mydata)

# # export file path
# # jsonexportpath = "demographics.json"
# #jsonexportpath = "geography.json"
jsonexportpath = "vaccinations.json"

# # write to file
with open(jsonexportpath, "w") as json_file:
    json.dump(myjson, json_file, indent=4)
