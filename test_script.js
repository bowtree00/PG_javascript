const pg = require('pg');
const settings = require('./settings.json');

search_term = process.argv[2];

const client = new pg.Client({
  user      : settings.user,
  password  : settings.password,
  database  : settings.database,
  host      : settings.hostname,
  port      : settings.port,
  ssl       : settings.ssl
});

client.connect( (err) => {
  if (err) {
    return console.error('Connection Error', err);
  }

  console.log('Searching...');

  client.query('SELECT * FROM sailors WHERE name = $1::text', [search_term], (err, result) => {
    if (err) {
      return console.error('error running query', err);
    }
    
    result.rows.forEach((element) => {
      console.log(element.id, element.name, element.birthdate);
    })

    client.end();
  });
});


