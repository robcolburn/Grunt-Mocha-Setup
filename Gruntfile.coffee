module.exports = (grunt) ->
  require('load-grunt-tasks') grunt
  grunt.initConfig
    watch:
      test:
        files: [
          'Gruntfile.coffee'
          '*.js'
          'test/*.js'
          '!*.min.js'
        ]
        tasks: [
          'jshint'
          'test'
          'uglify:all'
        ]
    jshint:
      all: [
        '*.js'
        '!*.min.js'
        'test/*.js'
      ]
      options:
        browser: true
        globals:
          jQuery: true
          Drupal: true
    uglify:
      all:
        options:
          mangle: true
          compress: true
        files: [
          expand: true
          # cwd: 'js'
          # dest: 'js'
          src: '*.js'
          ext: '.min.js'
        ]
    mocha:
      all:
        src: 'test/**.html'
        options:
          reporter: 'Spec'

  grunt.task.registerTask 'test', [
    'mocha:all'
  ]

  # By default, lint and run all tests.
  grunt.task.registerTask 'default', ['watch']
