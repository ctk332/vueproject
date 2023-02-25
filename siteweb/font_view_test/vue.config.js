const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // devServer: {
  //   proxy: {
  //     '/api': {
  //       target: 'http://192.168.101.29',
  //       pathRewrite: {
  //         '^/': ''
  //       },
  //       ws: true,
  //       changeOrigin: true
  //     }
  //   }
  //   }
})
