Grunt-Mocha-Setup
=================

A simple example repo to get a JS Heavy Drupal module into testing pattern quickly.

1. Copy paste these files to your module's directory
2. Delete `js/my-module.js`, `js/my-module.min.js`, you have your actual files.  Make sure to keep them in the `js/` folder though.
3. Rename `test/my-module.js` and `test/my-module.html` to reflect names that make sense for your project.  You can dupe them for multiple page tests if it makes sense.
4. Start editing `test/my-module.js` with tests that make sense for your module instead of the dummy module.
5. If you need more globals defined, look at adding their definitions in the `stubs.js` file.  Update the `globals` block in `my-module.html` accordingly.
