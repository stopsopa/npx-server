
const lib = require('../lib');

const list = str => str.split("\n").map(n => n.trim()).filter(n => n.indexOf('#') !== 0)
    .map(n => n.indexOf('/') === 0 ? n.substring(1) : n)
    .filter(Boolean);

/**
 * https://github.com/kaelzhang/node-ignore#filter-the-given-paths
 */
it('from doc', done => {

    let ignore = `
.abc/*
!.abc/d/ 
`;

    let input = `
.abc/a.js'
.abc/d/e.js   
`

    ignore  = list(ignore);

    input   = list(input);

    const i = lib().add(ignore);

    const result = i.filter(input);

    expect(result).toEqual(list(`
.abc/d/e.js
`));

    done();
});



it('custom', done => {

    let ignore = `
.env
/env/
`;

    let input = `
.abc/a.js'
.abc/d/e.js  
.env
.env.dist
test.txt
test/env/other
/env/
/env/file.txt
end 
`

    ignore  = list(ignore);

    input   = list(input);

    const i = lib().add(ignore);

    const result = i.filter(input);

    expect(result).toEqual(list(`
.abc/a.js'
.abc/d/e.js  
.env.dist
test.txt
end 
`));

    done();
});


