
exports.up = function(knex, Promise) {
  return knex.schema.table('milestones', function (table){
    table.integer('ship_id').notNullable();
    table.foreign('ship_id').references('id').inTable('ships');
  })
};

exports.down = function(knex, Promise) {
  return knex.schema.table('milestones', function (table){
    table.dropColumn('ship_id');
  })
};
