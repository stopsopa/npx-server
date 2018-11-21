

    git clone git@github.com:stopsopa/npx-server.git npx-server
    cd npx-server
    npm login
    .. change files, commit to git and run:
    make u
    
To test installer locally just run

    node install.js
    or    
    node install.js test.js
    or    
    node install.js test.js controllers_directory
    
To test server locally just run

    node server.js --help    
    node server.js --gc "/test"    