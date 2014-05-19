// Stolen from https://github.com/gtanner/tinyhippos.vimrc/blob/master/.vim/plugin/jshint/reporter.js
module.exports.reporter = function reporter(results) {
    var sys = require('sys'),
        len = results.length,
        str = '',
        file, error;

    if (len > 0) {
        results.forEach(function (result) {
            file = result.file;
            error = result.error;
            str += file  + ':' + error.line + ':' +
                error.character + ':' + error.reason + '\n';
        });

        sys.puts(str);
    }
};
