/*global describe,it,expect,jQuery,MyModule*/
describe('my-module', function(){
  it('should be ok', function () {
    expect(new MyModule()).to.be.ok();
  });
  describe('my-module json stuff', function () {
    it('should take in cats', function (done) {
      jQuery.getJSON('./sample/example.json', function (data) {
        expect(data).to.be.ok();
        expect(data.cats).to.be.ok();
        var mod = new MyModule();
        expect(mod).to.be.ok();
        mod.cats(data);
        expect(mod._cats).to.be.ok();
        expect(mod.getWow()).to.be.ok();
        done();
      });
    });
  });
});
