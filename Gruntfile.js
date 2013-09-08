module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-contrib-uglify');

  //Project configuration.
  grunt.initConfig({
    uglify: {
      my_target: { 
        files: {

          //common app scripts, from default layout
          'out/scripts/app.js': [
            'out/scripts/vendor/jquery-2.0.3.js',
            'out/scripts/vendor/moment-2.1.0.js',
            'out/scripts/namespaces.js',
            'out/scripts/util/helpers.js',
            'out/scripts/util/google.js',
            'out/scripts/views/common/doc-metadata.js',
            'out/scripts/views/common/doc-buttons.js',
            'out/scripts/views/common/doc-loader.js',
            'out/scripts/views/common/doc-separator.js',
            'out/scripts/views/common/nav-side.js',
            'out/scripts/init.js']


        }
      }
    }
  });

};
