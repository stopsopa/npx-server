[![npm version](https://badge.fury.io/js/npx-server.svg)](https://badge.fury.io/js/npx-server)

What's that?

It's just simple HTTP server with 
- autoindexing of directories
- custom (one file) controllers system which logic is reloading without reloading server. 
- reloading browser (hotloader) if one of files on the hard drive changed
- everything shipped in one .js file with no dependencies. 
- one command installation



[![npx-server youtube demo](https://user-images.githubusercontent.com/3743506/48829880-40d84900-ed6b-11e8-8a9b-ff566f15d2a9.png)](http://www.youtube.com/watch?v=uAO9Buimxys)



    npx npx-server
    
    or
    
    npx npx-server server.js
    
    or
    
    npx npx-server [server_file_name.js] [controllers_directory]
    
    or
    
    npx npx-server --ignore-existing
    
