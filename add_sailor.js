//takes in the first name, last name and date of a famous person as three command line arguments and uses Knex to perform an insert.
//

// const pg = require('pg');
// const settings = require('./settings.json');

search_term = process.argv[2];



// var knex = require('knex')({
//   client: 'pg',
//   connection: {
//     user: "etiecexluutxtm",
//     database: "dbpin1r33mchn7",
//     password: "UsQh-DAVBMK_RITNXcl0fwfm8k",
//     hostname: "ec2-174-129-209-53.compute-1.amazonaws.com",
//     port: 5432,
//     ssl: true
//   },
//   searchPath: 'knex,public'
// })

require('dotenv').config();

var knex = require('knex')({
  client: 'pg',
  connection: process.env.PG_CONNECTION_STRING,
  searchPath: 'knex,public'
})

console.log(knex.select().from('sailors').toString());


// CALLBACK style
knex.select().from('sailors').asCallback(function (err, result) => {
// Handle error or
// do something with the result
});

//PROMISE style
knex.select().from('sailors').then((result) => {
// do something with the result
}).catch((err) => {
//handle the error
});




knex.createTable('albums', function (table) {
  table.increments();
  table.string('title', 50).notNullable();
  table.integer('year').notNullable();
  table.integer('artist_id').references('artists.id').onDelete('cascade');
  table.timestamps();
});




