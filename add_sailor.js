//takes in the first name and birthdate of a sailor as two command line arguments and uses Knex to perform an insert.

const firstName = process.argv[2];
const birthDate = process.argv[3];

require('dotenv').config();


// NOTE: .env can't hold a function, can only hold one parameter per line. So I split up the details for PG_CONNECTION_STRING into one variable per key
const PG_CONNECTION_STRING = {
  user: process.env.PG_USER,
  database: process.env.PG_DATABASE,
  password: process.env.PG_PASSWORD,
  host: process.env.PG_HOST,
  port: 5432,
  ssl: true
}

var knex = require('knex')({
  client: 'pg',
  connection: PG_CONNECTION_STRING,
  searchPath: 'knex,public'
})

// TRY OUT USING .RETURN!
// 

const insertPromise = knex.insert({name: firstName, birthdate: birthDate}).into('sailors')/*.then (function (result) {
    console.log("result", result);
});*/

// //PROMISE style
const selectPromise = knex.select().from('sailors')
//   .then((result) => {
//     // do something with the result
//     console.log('RESULT: ',result);
// })
// .catch((err) => {
//   //handle the error
//   console.log('ERROR!', err);
// });

insertPromise
  .then(data => console.log(data))
  .then(() => selectPromise)
  .then(data => console.log(data))
  .catch(error => { console.error(error); process.exit(1); })
  .then(() => process.exit());  // This exits the connection once all KNEX queries have been run









