const express = require("express");
const app = express();
const cors = require("cors");
const mysql = require("mysql");
const bodyParser = require('body-parser');
app.use(bodyParser.json());



app.use(cors());                    

app.get("/", (req, res) => {
    res.send("<h1>Fut a backend! A feladat elvégzése után ezt az API-t töröld az alkalmazásból.</h1>");
});

app.listen(3001, () => {
    console.log("A Server a 3001 porton fut.");
}); 

                                                                                    