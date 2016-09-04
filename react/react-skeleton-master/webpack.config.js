module.exports = {
  entry: './src/index.js',

  output: {
    path: __dirname + '/public',
    filename: 'bundle.js'
  },

  devServer: {
    inline: true,
    port: 7777,
    contentBase: __dirname + '/public'
  },

  module: {
    loaders: [{
      test: /\.js$/,
      loader: ['react-hot', 'babel?' + JSON.stringfy({
        cacheDirectory: true,
        presets: ['es2015', 'react']
      })],
      exclude: /node_modules/,
    }]
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ]
};
