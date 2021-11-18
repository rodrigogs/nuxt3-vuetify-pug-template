/* eslint-disable import/no-commonjs, import/no-commonjs */
const { APP_PREFIX } = require('config/env')
const RecipeBuilder = require('lib/helpers/recipe-builder')

module.exports = new RecipeBuilder()
  .setService(`${APP_PREFIX}-web`)
  // TODO
  .build()
