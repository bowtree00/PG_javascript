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
