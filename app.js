var bodyParser = require('body-parser');

const express = require('express');
var cors = require('cors');

var app = express();

app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const port = 3001;

var mysql = require('mysql');
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "biblioteca",
  mode: "no-cors"
});


app.get ('/categorie', (req, res) => {

  var sql = "Select * from category";
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
  
})

app.get ('/titlu', (req, res) => {

  var sql = "Select DISTINCT titlu from book";
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})

app.get ('/membru', (req, res) => {

  var sql = "Select nume from user";
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
  
})

app.post('/AddBook', (req, res) => {

    var sql2 = "SELECT * FROM book WHERE titlu=? and nr_carte=?"
    var valori = [req.body.titlu, req.body.numar_carte];
    con.query(sql2, valori, function (err, result) {
      if (err) throw err;
      if (result.length !== 0) res.send({status: 'Cartea exista!'});
      else {
          var verif_numar = "select * from book where nr_carte=?"
          var verificare_numar = [req.body.numar_carte];
          con.query(verif_numar, verificare_numar, function (err, result_numar) {
            if (err) throw err;
            if(result_numar.length !== 0) res.send({status: 'Exista o alta carte cu acest numar!'})
            else {
              var sql = "SELECT id_categorie FROM category WHERE categorie=?";
              var VALUES = [[req.body.categorie]]
              con.query(sql, [VALUES], function (err, result) {
                if(err) throw err;
                var sql1 = "INSERT INTO book (titlu, autor,	nr_carte, editura, categorie, pret) VALUES ?";
                var VALUES = [[req.body.titlu, req.body.autor, req.body.numar_carte, req.body.editura, result[0].id_categorie, req.body.pret]]
                con.query(sql1, [VALUES], function (err, result) {
                  if (err) throw err;
                  res.send({ status: 'ok' })
                });
              })
            }
          })
      }
    }) 
});

app.post('/AddUser', (req, res) => {

    var sql = "SELECT * FROM user WHERE nume=?";
    var val = [[req.body.nume]];
    con.query(sql, val, function(err, result) {
      if (err) throw err;
      if(result.length !== 0) res.send({status: 'Acest membru exista!'});
      else {
        var sql1 = "INSERT INTO user (nume, adresa, telefon) VALUES ?";
        var VALUES = [[req.body.nume, req.body.adresa, req.body.numar_telefon]]
        con.query(sql1, [VALUES], function (err, result) {
          if (err) throw err;
          res.send({ status: 'ok' })
        });
      }
    })
});


app.post('/AddRent', (req, res) => {
  const data_de_azi = new Date();

  var sql1 = "SELECT * FROM book WHERE nr_carte=?"
  var VALUES1 = [req.body.numar_carte];
  con.query(sql1, VALUES1, function (err, result) {
    if (err) throw err;

    if (result.length === 0) {
        res.send({status: 'Nu exista nicio carte cu acest numar!'});
    }
    else {
      var sql_verificare = "SELECT data_returnare FROM imprumut WHERE nume=? and data_returnare='0000-00-00 00:00:00'";
      var name = [req.body.user];
      con.query(sql_verificare, name, function(err, result) {
        if (err) throw err;
        
        if (result.length >= 100) {
          res.send({status: 'Acest membru a imprumutat prea multe carti!'});
        }
        else {
            var sql1 = "SELECT id_book FROM book WHERE nr_carte=?";
            var VALUES1 = [req.body.numar_carte];
            con.query(sql1, VALUES1, function (err, result1) {
              if (err) throw err;

              var sql2 = "SELECT id_user FROM user WHERE nume=?";
              var VALUES2 = [[req.body.user]]
              con.query(sql2, [VALUES2], function (err, result2) {
                if (err) throw err;

                var verif_imprumut = "select * from imprumut where nr_carte=? and data_returnare='0000-00-00 00:00:00'";
                var valori = [req.body.numar_carte];
                con.query(verif_imprumut, valori, function(err, rezultat) {
                  if(err) throw err;
                  if(rezultat.length !== 0) {
                    res.send({status: 'Aceasta carte este imprumutata de altcineva'});
                  } 
                  else {
                    var sql3 = "INSERT INTO rent (id_book, id_user, data_imprumut, data_returnare) VALUES ?";
                    var VALUES = [[result1[0].id_book, result2[0].id_user, data_de_azi, 0]];
                    con.query(sql3, [VALUES], function (err, result3) {
                      if (err) throw err;
                      res.send({status: 'ok'});
                    })
                  }
                })
              })
            })
        }
      })
    }
  })
});


app.post ('/FinRent', (req, res) => {
    const data_de_azi = new Date();

    var verif_nume = "select * from user where nume=?";
    var var_nume = [req.body.user];
    con.query(verif_nume, var_nume, function(err, result1) {
      if (err) throw err;
      if(result1.length === 0) {
        res.send({status: 'Acest membru nu exista!'})
      }
      else {
        var verif_carte = "select * from book where nr_carte=?";
        var var_carte = [req.body.numar_carte];
        con.query(verif_carte, var_carte, function(err, result2) {
          if(err) throw err;
          if(result2.length === 0) {
            res.send({status: 'Aceasta carte nu exista!'});
          } 
          else {

            var take_nr_carte = "select * from imprumut where nume=? and nr_carte=? and data_returnare='0000-00-00 00:00:00'";
            var valori = [req.body.user, req.body.numar_carte];
            con.query(take_nr_carte, valori, function(err, result3) {
              if (err) throw err;
              if(result3.length === 0) {
                res.send({status: 'Acest membru nu are aceasta carte imprumutata!'});
              }
              else {

                  var sql = 'UPDATE rent SET data_returnare=? WHERE id_user=? AND id_book=?';
                  var values = [data_de_azi, result1[0].id_user, result2[0].id_book];
                  con.query(sql, values, function(err, result) {
                    if(err) throw err;
                    res.send({status: 'ok'})
                  })
              }
            })
          }
        })
      }
    })
});

app.post ('/AddCategory', (req, res) => {

  var verifCat = "select * from category where categorie=?"
  var cat = [req.body.categorie]
  con.query(verifCat, cat, function(err, result1) {
    if(err) throw err;
    else {
      if (result1.length !== 0) res.send({status: 'Aceasta categorie exista!'})
      else {
        var sqlCat = "INSERT INTO category (categorie) VALUES ?"
        var VALUES = [[req.body.categorie]];
        con.query(sqlCat, [VALUES], function(err, result) {
        if(err) throw err
        res.send({status: 'ok'});
      })
      }
    }
  })
})

app.post('/DeleteCategory', (req, res) => {

  var verifCat = 'select * from category where categorie=?'
  var ctgr = [req.body.categorie];
  con.query (verifCat, ctgr, function (err, result1) {
    if(result1.length === 0) res.send({status: 'Nu exista aceasta categorie'})
    else {
      var stergeDinRent = 'delete from rent where id_book = ( select id_book where categorie = (select id_categorie from category where categorie=?))'
      var cat = [req.body.categorie]
      con.query (stergeDinRent, cat, function(err, result) {
        var stergeDinBook = 'delete from book where categorie = (select id_categorie from category where categorie=?)'
        con.query(stergeDinBook, cat, function(err, result2) {
          var stergeDinCategory = 'delete from category where categorie=?'
          con.query(stergeDinCategory, cat, function(err, result3) {
            res.send({status: 'ok'});
          })
        })
      })
    }
  })
})

app.post('/DeleteMember', (req, res) => {
  var verif_membru = "select * from user where nume=?";
  var var_membru = [req.body.membru];
  con.query(verif_membru, var_membru, function(err, result) {
    if (err) throw err;
    if(result.length === 0) res.send({status: 'Acest membru nu exista!'})
    else {
      var deleteFromRent = "delete from rent where id_user = (select id_user from user where nume=?)";
      con.query(deleteFromRent, var_membru, function(err, result1) {
        if(err) throw err;
        var stergere = "delete from user where nume=?";
        con.query(stergere, var_membru, function(err, rez) {
          if (err) throw err;
          res.send({status: 'ok'});
        })
      })
    }
  })
})

app.post('/DeleteBook', (req, res) => {

  var verif_carte = "select * from book where titlu=? and nr_carte=?";
  var var_carte = [req.body.carte, req.body.numar_carte];
  con.query(verif_carte, var_carte, function(err, result2) {
    if(err) throw err;
    if(result2.length === 0) {
      res.send({status: 'Aceasta carte nu exista!'});
    }
    else {
      var sql = "Delete from rent where id_book = (select id_book from book where nr_carte=?)"
      var values = [[req.body.numar_carte]]
      con.query(sql, values, function (err, result) {
        if (err) throw err;
        var stergeCarte = "Delete from book where nr_carte=?";
        var nrCarte = [req.body.numar_carte];
        con.query(stergeCarte, nrCarte, function (err, resultStergere) {
          if (err) throw err;
          res.send({status: 'ok'});
        })
      })
    }
  })
})


app.post('/afisareUseri', (req, res) => {
  
  var sql = "Select * from user order by nume";
    con.query(sql, function (err, result) {
      if (err) throw err;
      res.send(result);
    });
});


app.post('/fisa', (req, res) => {
  
  var sql = "Select * from imprumut where nume=?"
    var VALUES = [[req.body.nume]]
    con.query(sql, VALUES, function (err, result) {
      if (err) throw err;
      res.send(result);
    });
});


app.post('/afisareCarte', (req, res) => {

    var sql1 = (`SELECT * FROM book LEFT JOIN category ON book.categorie = category.id_categorie WHERE titlu LIKE N'%${req.body.titlu}%'`);
    var VALUES = [[req.body.titlu]]
    con.query(sql1, VALUES, function (err, result) {
      if (err) throw err;
      var i = 0;
      result.forEach(element => {
          var sql = "select nume from imprumut where titlu=? and nr_carte=? and data_returnare='0000-00-00 00:00:00'";
          var valori = [result[i].titlu, result[i].nr_carte]
          con.query(sql, valori, function (err, result1) {
          if (err) throw err;
          if (result1.length > 0) {
            element = {nume_imprumutant: result1[0].nume};
          }
        });
      });
      res.send(result);
    });  
});

app.post('/afisareCategorii', (req, res) => {

  var sql = "SELECT id_categorie FROM category WHERE categorie=?"
  var values = [[req.body.categorie]]
  con.query(sql, values, function (err, result) {
    if (err) throw err
    var sql1 = "SELECT * FROM book LEFT JOIN category ON book.categorie = category.id_categorie WHERE category.id_categorie=?";
    var VALUES = [[result[0].id_categorie]]
    con.query(sql1, VALUES, function (err, result) {
      if (err) throw err;
      res.send(result);
    });  
  })

  
});

app.post('/toateCartile', (req, res) => {

    // var sql1 = "SELECT * FROM book";
    var sql1 = "SELECT * FROM book LEFT JOIN category ON book.categorie = category.id_categorie order by titlu";
    con.query(sql1, function (err, result) {
      if (err) throw err;
      res.send(result);
    });  
});

app.post('/cartiImprumutate', (req, res) => {

  var sql1 = "SELECT * FROM imprumut where data_returnare = '0000-00-00 00:00:00'"
  con.query(sql1, function (err, result) {
    if (err) throw err;
    res.send(result);
  });  
});

app.post('/categorii', (req, res) => {

  var sql1 = "SELECT categorie FROM category order by categorie";
  con.query(sql1, function (err, result) {
    if (err) throw err;
    res.send(result);
  });  
});


app.post('/search', (req, res) => {

    var sql2 = (`SELECT * FROM book WHERE titlu LIKE N'%${req.body.titlu}%'`);
    var VALUES = [[req.body.titlu]]
    con.query(sql2, [VALUES], function (err, result) {
      if (err) throw err;
      if (result.length === 0) {
        res.send({ status: 'no-ok' })
      }
      else {
        res.send({ status: 'ok' })
      }
    });
});

app.post('/searchByNumber', (req, res) => {

  var sql2 = ('SELECT * FROM book WHERE nr_carte=?');
  var VALUES = [[req.body.numar]]
  con.query(sql2, [VALUES], function (err, result) {
    if (err) throw err;
    if (result.length === 0) {
      res.send({ status: 'no-ok' })
    }
    else {
      res.send({ status: result[0].titlu })
    }
  });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});