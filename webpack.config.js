const path = require('path');

module.exports = (env) => {
    return {
      entry: './src/app.js',
      output: {
        path: path.join(__dirname, 'js'),
          filename: 'bundle.js',
          publicPath: '/'
      },
      module: {
        rules: [{
          loader: 'babel-loader',
          test: /\.js$/,
          exclude: /node_modules/
        }, {
          test: /\.s?css$/,
          use: [
            'style-loader',
            'css-loader',
            'sass-loader'
          ]
        }]
      },
      devtool: (env === "production") ? 'source-map' : 'cheap-module-eval-source-map',
      devServer: {
        contentBase: path.join(__dirname, 'public_html'),
        historyApiFallback: true
      }
    }
};
