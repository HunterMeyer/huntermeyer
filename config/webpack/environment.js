const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    JQuery: 'jquery',
    jquery: 'jquery',
  })
)

const config = environment.toWebpackConfig()

config.resolve.alias = {
  jquery: 'jquery/src/jquery'
}

module.exports = environment
