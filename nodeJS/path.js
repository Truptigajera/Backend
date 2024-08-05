// Import the 'path' module
const path = require('path');

/* get BaseName */

// console.log(path.basename('D:/gajeratrupti/Backend/nodejs/path.js'));

/* directory name */

// console.log(path.dirname('D:/gajeratrupti/Backend/nodejs/path.js'));

/* get delimiter */

// console.log(process.env.path.split('D:/gajeratrupti/Backend/nodejs/path.js'.delimiter));

/* Normalize path */

// console.log(path.normalize("D:/gajeratrupti/Backend/nodejs/path.js"));

/* Join paths */
// console.log(path.join("D:","gajeratrupti","Backend","nodejs"));

/*is absolute path */
// console.log(path.isAbsolute('hello.c'));
// console.log(path.isAbsolute('/path.js/..'));

/*split path */
// console.log(path.sep);
 
/* parse path */
// console.log(path.parse("D:/gajeratrupti/Backend/nodejs/path.js"));

/* format path */
// console.log(path.format({
//     root:'/',
//     name:'path',
//     ext:'js',
// }));

// console.log(path.format({
//         root:'/',
//         base:'path.js',
//         ext:'ignored',
//     })); 
    
/* relative path */
// console.log(path.relative('/data/orandea/test/aaa', '/data/orandea/impl/bbb'));

//  console.log(path.resolve('/data/orandea/test/aaa', '/data/orandea/impl/bbb'));

//  console.log(path.resolve('/data/orandea/test/aaa', '/data/orandea/impl/bbb', 'ccc', '..', 'ddd'));

 

