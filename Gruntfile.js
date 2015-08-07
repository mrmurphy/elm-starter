module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    elm: {
      compile: {
        files: {
          'App/build/bundle.js': 'App/Main.elm'
        }
      }
    },
    watch: {
      options: {
        livereload: true
      },
      elm: {
        files: ['App/**/*.elm'],
        tasks: ['elm']
      }
    },
    connect: {
      server: {
        options: {
          useAvailablePort: true,
          livereload: true,
          open: true,
          base: 'App'
        }
      }
    }
  })

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-elm')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-connect')

  // Default task(s).
  grunt.registerTask('default', ['connect', 'watch:elm'])

};
