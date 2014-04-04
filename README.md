Grunt-Mocha-Setup
=================

A simple example repo to get something into testing quickly

1. Copy paste these files to your module's directory
2. Delete my-module.js, replace references to your actual script name
3. Write tests
4. 

```sh
cd ~/
git clone https://github.com/robcolburn/Grunt-Mocha-Setup
cp -r Grunt-Mocha-Setup ~/my-module/js
cd ~/my-module/js
npm install
$EDITOR test/index.html # change reference
grunt
$EDITOR test/tests.js # write tests
```
