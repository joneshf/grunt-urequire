module.exports = (grunt) ->
  _ = grunt.util._

  grunt.initConfig
    simplemocha:
      src: ["test/*.test.js"]

  ## coffeescript compilation no longer need for grunt tasks - they work as is

  ### shortcuts generation ###
  splitTasks = (tasks)-> if !_.isString tasks then tasks else (_.filter tasks.split(' '), (v)-> v)

  grunt.registerTask "default", ["simplemocha"]
  grunt.loadTasks    "test/task"
  grunt.loadNpmTasks "grunt-simple-mocha"

