module.exports = (grunt) ->
  require('load-grunt-tasks') grunt
  grunt.initConfig
    watch:
      test:
        files: [
          'Gruntfile.coffee'
          'js/*.js'
          'test/*.js'
          'test/*.html'
          '!js/*.min.js'
        ]
        tasks: [
          'jshint:all'
          'mocha:all'
          'uglify:all'
        ]
    concurrent:
      test: ['jshint:all', 'mocha:all']
    jshint:
      all: [
        'js/*.js'
        '!js/*.min.js'
        'test/*.js'
      ]
      options:
        browser: true
        globals:
          jQuery: true
          Drupal: true
    uglify:
      all:
        files: [
          expand: true
          cwd: 'js'
          dest: 'js'
          src: [
            '*.js'
            '!*.min.js'
          ]
          ext: '.min.js'
          extDot: 'last'
        ]
    mocha:
      all:
        src: 'test/**.html'
        options:
          reporter: 'Spec'
          run: true
          log: true
    connect:
      testUrls:
        options:
          port: 8981
          base: '.'
      testDest:
        options:
          port: 8982
          base: '.'

  grunt.task.registerTask 'test', [
    'concurrent:test'
  ]

  # By default, lint and run all tests.
  grunt.task.registerTask 'default', ['watch']
