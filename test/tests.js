/*global describe,it,expect,jQuery,MyModule*/
describe('my-module', function(){
  it('should be ok', function () {
    expect(new MyModule()).to.be.ok();
  });
  describe('my-module stuff', function () {
    it('should take in cats', function (done) {
      jQuery.getJSON('./sample/example.json', function (data) {
        console.log(data);
        // var mod = new MyModule();
        // var cats = mod.cats(data);
        // expect(cats._cats.cats.wow).to.be.ok();
        done();
      });
    });
  });
});
