#!/bin/bash

# Variables
MONGO_USER="root"
MONGO_PASS="Mjc5NzctamVvbmdr"
AUTH_DB="admin"
DB_NAME="catalog"
COLLECTION_NAME="electronics"
JSON_FILE="catalog.json"
CSV_FILE="electronics.csv"

# Import catalog.json into MongoDB
echo "Importing catalog.json into MongoDB..."
mongoimport -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB --db $DB_NAME --collection $COLLECTION_NAME --file $JSON_FILE --jsonArray
if [ $? -eq 0 ]; then
    echo "Data imported successfully into the '$DB_NAME' database and '$COLLECTION_NAME' collection."
else
    echo "Error importing data."
    exit 1
fi

# Create an index on the "type" field
echo "Creating an index on 'type' field..."
mongo -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB $DB_NAME --eval 'db.electronics.createIndex({type: 1})'
{
    "createdCollectionAutomatically" : false,
    "numIndexesBefore" : 1,
    "numIndexesAfter" : 2,
    "ok" : 1
} 

# Find the count of laptops
echo "Finding the count of laptops..."
mongo -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB $DB_NAME --eval 'const countLaptops = db.electronics.find({type: "laptop"}).count(); print("Count of laptops: " + countLaptops);'

# Find the number of smartphones with a screen size of 6 inches
echo "Finding the number of smartphones with a screen size of 6 inches..."
mongo -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB $DB_NAME --eval 'const countSmartphones = db.electronics.find({type: "smartphone", screen_size: 6}).count(); print("Number of smartphones with a 6-inch screen: " + countSmartphones);'

# Find the average screen size of smartphones
echo "Finding the average screen size of smartphones..."
mongo -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB $DB_NAME --eval '
db.electronics.aggregate([
  { $match: { type: "smartphone" } },
  { $group: { _id: "$type", avgSize: { $avg: "$screen_size" } } }
]).forEach(printjson);'

# Export _id, type, model fields to electronics.csv
echo "Exporting _id, type, model fields to electronics.csv..."
mongoexport -u $MONGO_USER -p $MONGO_PASS --authenticationDatabase $AUTH_DB --db $DB_NAME --collection $COLLECTION_NAME --out $CSV_FILE --type=csv --fields _id,type,model
if [ $? -eq 0 ]; then
    echo "Data exported successfully to $CSV_FILE."
else
    echo "Error exporting data."
    exit 1
fi

