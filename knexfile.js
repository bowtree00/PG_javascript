// Update with your config settings.

const settings = require('./settings.json');
// const env_settings = require ('./.env');

// const client = new pg.Client({
//   user      : settings.user,
//   password  : settings.password,
//   database  : settings.database,
//   host      : settings.hostname,
//   port      : settings.port,
//   ssl       : settings.ssl
// });


module.exports = {
  // NOTE: I don't have a local DB - need to set one up and add it here
  development: {
    client: 'pg',
    connection: {
      database  : settings.database,
      user      : settings.user,
      password  : settings.password,
      host      : settings.hostname,
      port      : settings.port,
      ssl       : settings.ssl
      //filename: './dev.sqlite3'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  staging: {
    client: 'pg',
    connection: {
      database  : settings.database,
      user      : settings.user,
      password  : settings.password,
      host      : settings.hostname,
      port      : settings.port,
      ssl       : settings.ssl
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'postgresql',
    connection: {
      database: 'my_db',
      user:     'username',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};
