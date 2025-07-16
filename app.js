require('dotenv').config();

const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, "templates", "index.html"));
});

app.listen(port, ()=> {
    console.log(`Server running at http://localhost:${port}`);
})