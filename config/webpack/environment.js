const { environment } = require('@rails/webpacker')

// jQuery start
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)
// jQuery end

module.exports = environment

