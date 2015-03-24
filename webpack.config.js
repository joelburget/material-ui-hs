module.exports = {
    entry: "./index",
    output: {
        path: ".",
        filename: "mui.js"
    },
    module: {
        loaders: [
            { test: /\.jsx$/, loader: 'babel-loader'}
        ]
    }
};
