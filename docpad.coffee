# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

  env: 'development'
  watchOptions:
    preferredMethods: ['watchFile','watch']


  environments:
    build:
      events:

        # Write After
        # Used to minify our assets with grunt
        generateAfter: ->
            # Prepare
            safeps = require('safeps')
            pathUtil = require('path')
            #docpad = @docpad
            #rootPath = docpad.getConfig().rootPath
            #gruntPath = pathUtil.join(rootPath, 'node_modules', '.bin', 'grunt')

            # Perform the grunt `min` task
            # https://github.com/gruntjs/grunt/blob/0.3-stable/docs/task_min.md
            command = ['grunt', 'uglify']

            # Execute
            #safeps.spawn(command, {cwd:rootPath,output:true})
            safeps.spawn(command, {save:false,output:true})

            # Chain
            @

}

# Export the DocPad Configuration
module.exports = docpadConfig
