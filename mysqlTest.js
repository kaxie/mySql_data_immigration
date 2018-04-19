var mysql = require('mysql');
var cTable = require('console.table');
var connection = mysql.createConnection({
    host : 'localhost',
    port : "3306",
    user : 'root',
    password : '',
    database : 'kaxie_db'
})
 
connection.connect((error) => {
    if (error) throw error;
    console.log('Connected as $[connection.threadId]')
    connection.query("SELECT * from people", (error, response) => {
        if (error) throw error
        const table = cTable.getTable(response);
          console.log(table);
        
    })
    connection.end();
});
