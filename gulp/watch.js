'use strict';

var modRewrite = require('connect-modrewrite');

module.exports = function (gulp, $, config) {
  gulp.task('browserSync', function () {
    $.browserSync({
      host: config.host,
      open: 'external',
      port: config.port,
      notify: false,
      server: {
        baseDir: config.buildDir,
        https: false,
        middleware: [
          modRewrite([
            '^[^\\.]*$ /index.html [L]'
          ])
        ]
      }
    });
  });

  gulp.task('watch', function () {
    $.browserSync.reload();
    gulp.watch([config.unitTestFiles], ['unitTest']);
    gulp.watch([config.appFiles, '!' + config.unitTestFiles], ['build', $.browserSync.reload]);
  });
};
