//aggregation pipeline

// db.books.find({})

db.books.find({"country":"Iceland","pages":470})

db.books.aggregate([
    {
        $match:{"country":"Iceland","pages":{$lte:500}}
    }
])

db.books.find({"author":"Unknown","pages":{$gte:500}, "year":{$lte:2000}})

    db.books.find({},{"author":1,_id:0,"pages":1})

db.books.aggregate([
    {
        $project:{year:1,title:1}
    },
    {
        $match:{country:"Denmark"}
    }
])

db.books.find({}).sort({country:1,pages:-1})

db.books.aggregate([
    {
        $project:{year:1,title:1}
    },
    {
        $sort:{year:-1}
    }
])

db.books.find({}).skip(5).limit(3)

db.books.aggregate([
    {
        $project:{year:1,title:1}
    },
    {
        $sort:{year:-1}
    },
    {
        $skip:5
    },
    {
        $limit:3
    }
])

db.books.aggregate([
    {$limit:15},
    {$skip:10}
])

db.books.find({}).count()

db.books.aggregate([
    {$match:{coutry:"Denmark"}},
    {$count:"Hello world"}
])

db.books.aggregate([
    {
        $group:{
            _id:"country",
            total:{
                $sum:1
            },
        },
    }
])

db.students.insertMany([
    {
        "studentId":"std001",
        "studentName":"Magan",
        "course":"Full-stack",
        "faculty":"tea002"
    },
    {
        "studentId":"std002",
        "studentName":"Chhagan",
        "course":"IOS-stack",
        "faculty":"tea001"
    },
    {
        "studentId":"std003",
        "studentName":"Gagan",
        "course":"python-stack",
        "faculty":"tea002"
    },
    {
        "studentId":"std004",
        "studentName":"Lagan",
        "course":"Android-stack",
        "faculty":"tea003"
    },
    {
        "studentId":"std005",
        "studentName":"jagan",
        "course":"UI-UX",
        "faculty":"tea003"
    }

])

db.teachers.insertMany([
    {
        "teacherId":"tea001",
       "teacherName":"Viro",
       "hobbies":["management","marketing"]
    },
    {
        "teacherId":"tea002",
       "teacherName":"Mehul",
       "hobbies":["time-pass","development"]
    },
    {
        "teacherId":"tea003",
       "teacherName":"mira",
       "hobbies":["cooking","dancing"]
    }
])

db.students.find({})
db.teachers.find({})

db.teachers.aggregate([
    {
        $unwind:"$hobbies"
    }
])


db.students.aggregate([
    {
      $lookup: {
        from: "teachers",
        localField: "faculty",    
        foreignField: "teacherId",
        as: "faculty"
      }
    },
    {
        $unwind:"$faculty"
    }     
  ])

  db.students.aggregate([
    {
      $lookup: {
        from: "teachers",
        localField: "faculty",    
        foreignField: "teacherId",
        as: "teacherdetails"
      }
    } 
  ])

  db.customers.insertMany([
    {
       " customer_id":"C0001",
       first_name
    }
  ])
