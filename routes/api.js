const express = require('express');

const router = express.Router();

const connect = require("../config/sqlConfig");

//think of route handlers like PHP functions
router.get("/", (req,res) => {
    res.json({message: "you hit the api route"});
});

// this is the /api/uers route handler
router.get("/users", (req, res) => {
    //run a SQL query here
    res.json({message: "all users route"});
})


router.get("/products", (req, res) => {
 
    connect.getConnection(function(err, connection) {
        if (err) throw err; // not connected!
       
        // Use the connection
        connection.query('SELECT * FROM tbl_products', function (error, results) {
          // When done with the connection, release it.
          connection.release();
       
          // Handle error after the release.
          if (error) throw error;

          res.json(results);
        });
      });

})


router.get("/products/:id", (req, res) => {
    //run a SQL query here--> get alll movies from my DB
    connect.query(`SELECT * from tbl_products WHERE id=${req.params.id}`, function (error, results, fields) {
        
        if (error) throw error;
        res.json(results);
      });
    
})

module.exports = router;