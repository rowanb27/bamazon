const mysql = require('mysql');
const inquirer = require('inquirer');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3333,
    user: 'root',
    password: '',
    database: 'bamazon'
});

connection.connect(function (err) {
    if (err) throw (err);
    console.log('connected as id ' + connection.threadId);
    console.log('////////////////////////////////////////////////////////////////////')
    console.log('////////////////////////////////////////////////////////////////////')
    console.log('///////////////////    Welcome to Bamazon      /////////////////////')
    console.log('////////////////////////////////////////////////////////////////////')
    console.log('////////////////////////////////////////////////////////////////////')

    queryAllProducts();
    customerRequest();

});

function queryAllProducts() {
    connection.query('SELECT * FROM products', function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].item_id + ' | ' + res[i].product_name + ' | '
                + res[i].department_name + ' | ' + res[i].price + ' | ' +
                res[i].stock_quantity)
        }
    });
}

function customerRequest() {
    inquirer
        .prompt([
            {
                name: 'itemRequest',
                type: 'input',
                message: 'Enter the Item ID of the product that you would like to purchase\n',
            },
            {
                name: 'itemQuantity',
                type: 'input',
                message: 'How many of the selected item would you like to purchase?\n',

            }
        ])
        .then(function (answer) {
            let itemRequest = answer.itemRequest;
            let itemQuantity = answer.itemQuantity;

            connection.query("SELECT * FROM products WHERE item_id =" + itemRequest, function (err, res) {
                if (err) throw err;

                if (res[0].stock_quantity < itemRequest) {
                    console.log("We don't have enough of that item. Please make a different request");
                    
                    customerRequest();
                    queryAllProducts();
                } else {
                    console.log('Your total is: ' + (res[0].price * itemQuantity));
                    
                    let newQuantity = res[0].stock_quantity - itemQuantity;
                    updateQuantity(newQuantity, itemRequest);
                }
            })
        })
}

function updateQuantity(newQuantity, itemRequest) {
    connection.query('UPDATE products SET stock_quantity = ' + newQuantity + ' WHERE item_id = ' + itemRequest, function (err, res) {
        if(err) throw err;
        customerRequest();
        queryAllProducts();

    });
}