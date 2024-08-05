// 1. what type of database is mongodb?
// --> Nosql

// 2. which is the folloeing is a mongodb shell command to display the databases?
// --> show dbs 

// 3. In mongodb, what is the equivalent of a table in a relational database?
// --> collection

// 4. which command is used to insert a ducument into a mongodb collection?
// --> insert()

// 5. In mongodb, what format is used to store data?
// --> BSON

// 6. what does the mongodb method find() do?
// (a) adds a  document (b) Deletes a document (c) Retrieves documents (d) updates ducuments 
// --> retrieves documents

// Q-2

// key features of mongodb

// MongoDB is a powerful and flexible solution for handling modern data needs. As a leading NoSQL database, MongoDB offers a dynamic schema design, enabling developers to store and manage data in a way that aligns seamlessly with contemporary application requirements.

// Q-3 In MongoDB, each document stored in a collection requires a unique _id field that acts as a primary key. If an inserted document omits the _id field, the MongoDB driver automatically generates an ObjectId for the _id field. 
// example -
//  db.teachers.insertMany([
//     {
//         "teacherId":"tea001",
//        "teacherName":"Viro",
//        "hobbies":["management","marketing"]
//     },
//     {
//         "teacherId":"tea002",
//        "teacherName":"Mehul",
//        "hobbies":["time-pass","development"]
//     },
//     {
//         "teacherId":"tea003",
//        "teacherName":"mira",
//        "hobbies":["cooking","dancing"]
//     }
// ])

// Q-4 write a mongodb query to update a document in a collection. Explain the query.
// --> The MongoDB shell provides the following methods to update documents in a collection:
// To update a single document, use db. collection. updateOne() .
// To update multiple documents, use db. collection. updateMany() .
// To replace a document, use db. collection. replaceOne() .
// Qestion-4
// db.employees.updateOne(  { "name": "John Doe" }, // Filter criteria
//   { $set: { "age": 29 } } // Update operation)
// Explanation:

// db.employees specifies the collection.
// updateOne() method updates the first document that matches the filter criteria.
// { "name": "John Doe" } is the filter to find the document to update.
// { $set: { "age": 29 } } is the update operation to set the age field to 29.



