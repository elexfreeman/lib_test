var conn = require('../db');

function getSoautors() {
    return new Promise(function (resolve, reject) {
        var sql = "select b.id, b.caption, count(*) count_autors  From books b " +

            "join books_autors ba " +
            "on ba.book_id=b.id " +

            "group by b.id " +
            " having count_autors >1 ";

        conn.query(sql, [], function (data, err) {
            if (err) reject(err);
            resolve(JSON.parse(JSON.stringify(data)));
        });
    });
}


if (module.parent) {
    module.exports = {
        getSoautors: getSoautors
    }
} else {

    /*проверяем работу ф-и*/
    getSoautors().then((data) => {
        console.log(data);
    })

}