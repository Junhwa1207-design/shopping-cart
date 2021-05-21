const express = require('express');
//const cookieParser = require('cookie-parser');
//const session = require('express-session');

const app = express();

const port = process.env.PORT || 5050;

// set up the session object
//app.use(cookieParser());

//app.use(session());


app.use((req, res, next) => {
    console.log('incoming request');
    console.log(process.env.PORT);


    next(); // => send the user to the route they requested
})
// app.use("/user", require("./routes/ums")); 

// use the API route file to handle API routes (/api/users, /api/:user/:id, etc)
app.use("/api", require("./routes/api"));
//app.use("/ums", require("./routes/ums")); 


app.listen(port, () => {
    console.log(`server is runing on ${port}`);
})