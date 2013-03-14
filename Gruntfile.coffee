module.exports = (grunt) ->

  grunt.task.loadTasks 'gruntcomponents/tasks'
  grunt.task.loadNpmTasks 'grunt-contrib-watch'
  grunt.task.loadNpmTasks 'grunt-contrib-sass'

  grunt.initConfig
    growl:
      ok:
        title: 'COMPLETE!!'
        msg: '＼(^o^)／'

    sass:
      common:
        src: "scss/common.scss"
        dest: "css/common.css"

    watch:
      sasscommon:
        files: 'scss/**/*.scss'
        tasks: ['sass:common', 'growl:ok']

  grunt.registerTask 'default', [ 'sass' ]
