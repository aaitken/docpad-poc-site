module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-contrib-uglify');



  //Project configuration.
  grunt.initConfig({
    uglify: {
      my_target: { 
        files: {
          'out/scripts/pages/all.js': ['out/scripts/pages/all.js']
        }
      }
    }
  });

};
