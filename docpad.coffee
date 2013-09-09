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
            #pathUtil = require('path')
            #docpad = @docpad
            #rootPath = docpad.getConfig().rootPath
            #gruntPath = pathUtil.join(rootPath, 'node_modules', '.bin', 'grunt')

            # Perform the grunt `uglify` task
            command1 = ['grunt', 'uglify']
            command2 = ['grunt', 'clean']

            # Execute
            #safeps.spawn(command, {cwd:rootPath,output:true})
            safeps.spawnMultiple([command1, command2], {concurrency: 1, output: true}, ->)
            #safeps.spawn(command2, {save:false,output:true})

            # Chain
            @

}

# Export the DocPad Configuration
module.exports = docpadConfig
