
exports.up = function(knex, Promise) {
  return knex.schema.createTable('milestones', function (table) {
  table.increments('id');
  table.string('description', 50).notNullable();
  table.date('date_achieved');
  });

};

exports.down = function(knex, Promise) {
  return knex.schema.dropTable('milestones');
};
