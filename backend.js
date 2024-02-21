const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const multer = require('multer');
const bodyParser = require('body-parser');

const app = express();
const port = 22007;

app.use(cors());
app.use(express.json());
app.use(express.static('Images'));
app.use(bodyParser.json());

var connection
function kapcsolat()
{
   connection = mysql.createConnection({
    host: '192.168.100.103',
    user: 'u83_oHvbVIlGfB',
    password: '!+BAG@BZHSo@hyvuUL8m0cUo',
    database: 's83_db'
  })
  
  connection.connect()
  
}

//.................Nikié.................

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/motorok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM motorok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});



app.get('/marka_motorok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM marka_motorok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});



//INSERT INTO film VALUES (NULL,'alma',2023,1.jpg);

app.post('/felvitel', (req, res) => {
  kapcsolat()
  
  connection.query(`INSERT INTO kepek_motor VALUES (NULL,'1.jpg')`, (err, rows, fields) => {
  if (err){
    console.log("Hiba")
    res.send("Hiba")
  }
  else{
    console.log("Sikeres felvitel")
    res.send("Sikeres felvitel")
  }
  
  
  
  })
  connection.end() 
  })
  



//képfeltöltés
const storage = multer.diskStorage({
  destination(req, file, callback) {
    callback(null, './Images');
  },
  filename(req, file, callback) {
    callback(null, `${file.fieldname}_${Date.now()}_${file.originalname}`);
  },
});

const upload = multer({ storage });


app.post('/api/upload', upload.array('photo', 3), (req, res) => {
  console.log('file', req.files);
  console.log('body', req.body);
  //asatb-be való felvitel
  kapcsolat()
  
  connection.query(`INSERT INTO kepek_motor VALUES (NULL,'${req.files[0].filename}',${req.body.bevitel1})`, (err, rows, fields) => {
  if (err){
    console.log("Hiba")
    res.send("Hiba")
  }
  else{
    console.log("Sikeres felvitel")
    res.send("Sikeres felvitel")
  }
  
  
  
  
  })
  connection.end() 





  //
  
});






//vége

app.post('/motor_kep', (req, res) => {
  kapcsolat()
  
  connection.query(`SELECT * FROM motorok WHERE motor_marka = ${req.body.bevitel1}`, (err, rows, fields) => {
  if (err) throw err
  
  console.log(rows)
  res.send(rows)
  })
  connection.end() 
  })



  app.post('/keresszoveg', (req, res) => {
    kapcsolat()
    
    connection.query(`SELECT * FROM motorok INNER JOIN marka_motorok ON motorok.motor_marka = marka_motorok.marka_id WHERE marka_nev like "%${req.body.bevitel1}%"`, (err, rows, fields) => {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
    })
    connection.end() 
    })

//.................Nikié.................

//.................Petié.................

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/autok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM autok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});


app.get('/marka', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM marka', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});

//INSERT INTO film VALUES (NULL,'alma',2023,1.jpg);

app.post('/felvitel_2', (req, res) => {
  kapcsolat()
  
  connection.query(`INSERT INTO auto_kepek VALUES (NULL,'1.jpg')`, (err, rows, fields) => {
  if (err){
    console.log("Hiba")
    res.send("Hiba")
  }
  else{
    console.log("Sikeres felvitel")
    res.send("Sikeres felvitel")
  }
  
  
  
  
  })
  connection.end() 
  })
  




//képfeltöltés
const storageForImages = multer.diskStorage({
  destination(req, file, callback) {
    callback(null, './Images');
  },
  filename(req, file, callback) {
    callback(null, `${file.fieldname}_${Date.now()}_${file.originalname}`);
  },
});

const uploadForImages = multer({ storage: storageForImages });


app.post('/api/upload_2', upload.array('photo', 3), (req, res) => {
  console.log('file', req.files);
  console.log('body', req.body);
  //asatb-be való felvitel
  kapcsolat()
  
  connection.query(`INSERT INTO auto_kepek VALUES (NULL,'${req.files[0].filename}',${req.body.bevitel1})`, (err, rows, fields) => {
  if (err){
    console.log("Hiba");
    res.send("Hiba");
  }
  else{
    console.log("Sikeres felvitel");
    res.send("Sikeres felvitel");
  }
  
  
  
  
  })
  connection.end();





  //
  
});



app.post('/auto_kep', (req, res) => {
  kapcsolat()
  
  connection.query(`SELECT * FROM autok WHERE auto_marka = ${req.body.bevitel1}`, (err, rows, fields) => {
  if (err) throw err
  
  console.log(rows)
  res.send(rows)
  })
  connection.end() 
  })







//vége



app.post('/keresszoveg2', (req, res) => {
  kapcsolat()
  
  connection.query(`SELECT * FROM autok INNER JOIN marka ON autok.auto_id = marka.marka_id WHERE marka_nev like "%${req.body.bevitel1}%"`, (err, rows, fields) => {
  if (err) throw err
  
  console.log(rows)
  res.send(rows)
  })
  connection.end() 
  })

//.................Petié.................




app.listen(port, () => {
  console.log(`A szerver fut a http://localhost:${port} címen`);
});
