//use dbname
//use users

//create collection
db.createCollection("users")

//insert data(single)
db.users.insertOne({
    "name" : "John peter",
    "age" : 22,
    "email" : "john@test.in"
});

//insert data(multiple)

db.users.insertMany([
    {
        "name": "Alice",
        "age": 25,
        "gender":"female"
    },
    {
        "name": "Bob",
        "age": 30,
        "email": "bob@test.in",
        "hobbies": ['cricket', 'music','dance']
    },
    {
        "name": "Anushka",
        "gender":"male",
        "movies":{
            "super_duper":"pk",
            "most_Famous": "sultan",
            "flop": "sui-thaga",
       }
    },
]);

//find all documents

db.users.find()

db.users.find({"movies.flop": 'sui-thaga'})

db.users.findOne({gender: "female"})

//Data update
// db.users.updateOne({filter},{update data},upsert:true})

db.users.updateOne(
    {gender: "female"},
    {$set:{age:25,email:"Jolly@test.info"}},
    {upsert: true}
)

db.users.updateMany(
    {gender: "male"},
    {$set:{Passion:"Make-up"}},
    {upsert: true} 
)

db.users.deleteOne({filter})
db.users.deleteOne({_id: ObjectId ('668fb0a48299decaeacc8988')})

db.users.deleteMany({gender: 'female'})

db.users.drop()

//show collections

db.dropDatabase()

db.customers.insertOne(
    {
        "customer_id":"C001",
        "first_name":"Rakshit",
        "last_name":"Gajera",
        "email":"rakshit@gmail.com",
        "password":"123456"        
    }
)
db.customers.insertMany([
    {
        "customer_id":"C001",
        "first_name":"Rakshit",
        "last_name":"Gajera",
        "email":"rakshit@gmail.com",
        "password":"123456"        
    },
    {
        "customer_id":"C002",
        "first_name":"Heer",
        "last_name":"Gediya",
        "email":"heer@gmail.com",
        "password":"112233"        
    },
    {
        "customer_id":"C003",
        "first_name":"Jay",
        "last_name":"Savaliya",
        "email":"Jay@gmail.com",
        "password":"123abcdef"        
    },
    {
        "customer_id":"C004",
        "first_name":"Jigisha",
        "last_name":"Baldha",
        "email":"jigi@gmail.com",
        "password":"123456"        
    },
    {
        "customer_id":"C005",
        "first_name":"Parikshit",
        "last_name":"Gajera",
        "email":"pari@gmail.com",
        "password":"123456pari"        
    }
]
)

db.products.insertMany([
    {
        "product_id":"P001",
        "product_name":"Laptop",
        "Description":"lenovo",
        "price":120000,
        "quantity":10,
        "category":"Electronics"
    },
    {
        "product_id":"P002",
        "product_name":"Mobile",
        "Description":"iphone",
        "price":100000,
        "quantity":1,
        "category":"Electronics"
    },
    {
        "product_id":"P003",
        "product_name":"Computer",
        "Description":"zebrinics",
        "price":50000,
        "quantity":2,
        "category":"Electronics"
    },

])

db.orders.insertMany([
    {
        "order_id":"O001",
        "customer_id":"C001",
        "order_date":"2022-01-01",
        "total_Price":200000
    },
    {
       "order_id":"O002",
        "customer_id":"C002",
        "order_date":"2022-01-01",
        "total_Price":150000
    },
    {
        "order_id":"O003",
        "customer_id":"C003",
        "order_date":"2022-01-01",
        "total_Price":100000
    },
    {
        "order_id":"O004",
        "customer_id":"C004",
        "order_date":"2022-01-01",
        "total_Price":300000
    },
    {
        "order_id":"O005",
        "customer_id":"C005",
        "order_date":"2022-01-01",
        "total_Price":225000
    }    
])

db.order_items.insertMany([
    {
        "order_item_id":"CI001",
        "order_id":"O001",
        "product_id":"P001",
        "quantity":2,
        "price":100000
    },
    {
        "order_item_id":"CI002",
        "order_id":"O002",
        "product_id":"P002",
        "quantity":5,
        "price":100000
    },
    {
        "order_item_id":"CI003",
        "order_id":"O003",
        "product_id":"P003",
        "quantity":6,
        "price":100000
    }
])

use the find statement to retrieve all customers from the custemers collections