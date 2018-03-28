let express = require('express');
let router = express.Router();

let report_model = require('../models/report');

/* GET home page. */
router.get('/', function(req, res, next) {

    /*получаем книги из модели*/
    report_model.getSoautors().then((data) => {
        res.render('index', {
            title: 'Библиотека - тестовое задание'
            ,tabele_data: data
        });
    })


});

module.exports = router;
