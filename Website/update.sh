#!/bin/bash
rm MongoDB.jar*
wget https://dl.dropboxusercontent.com/u/21889691/MongoTest.jar
mv MongoTest.jar MongoDB.jar
rm data.json*
wget https://dl.dropboxusercontent.com/u/21889691/data.json
mongoimport --db shelters --collection shelters --file data.json --jsonArray

