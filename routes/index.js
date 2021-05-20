const express = require('express');
const router = express.Router();

const { createProxyMiddleware } = require('http-proxy-middleware');

router.use('/api', createProxyMiddleware({
    target: 'http://localhost:5050',
    headers: {
        accept: 'application/json, application/x-www-form-urlencoded'
    },
    changeOrigin: true
}))

router.get('/', (req, res) => {
    res.render('index', { message: "Choose your tools here!"});
})

router.get('/products', (req, res) => {
    res.render('products', { productsmessage: "Pick your tools up here!"});
})

module.exports = router;