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