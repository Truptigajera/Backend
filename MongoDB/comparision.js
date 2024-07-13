db.books.find({$and:[{cond1}, {cond2}]})

db.books.find({$and:[{"pages":{$lte:505}},{"author":{$eq:"unknown"}},{"year":1350}]})

db.books.find({$or:[{"pages":{$lte:505}},{"author":{$eq:"unknown"}},{"year":1350}]})

db.books.find({$nor:[{"pages":{$lte:505}},{"author":{$eq:"unknown"}},{"year":1350}]})

db.books.find({"pages":{$not : {$lte:505}}})


// show collections

db.books.find({})

db.books.find({"pages":{$eq:784}})

db.books.find({"author":{$eq:"unknown"}})

db.books.find({"pages":{$ne:784}})

db.books.find({"author":{$in:["Unknown","Hans  Christian Andersen"]}})

db.books.find({"author":{$nin:["Unknown","Hans  Christian Andersen"]}})


db.books.find({"pages":{$gt:505}})

db.books.find({"pages":{$gte:505}})

db.books.find({"pages":{$lt:500}})

db.books.find({"pages":{$lte:505}})

