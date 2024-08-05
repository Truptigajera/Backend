//file system module

const fs= require('fs');    //comman js
//import * as fs from "fs";     //ESM

function add(a,b){
    return a+b;
}
function mul(a,b){
    return a*b;
}

//file open close write read append update rename delete 

//open method
// fs.open("./hello.txt",(err,result)=>{
//     if(err)
//         console.log(err);
//     else
//     console.log('file open success')        
// })

fs.openSync("./hello.c");
