/*global jQuery*/
(function ($) {
  function MyModule () {
    $("#cats").html("Do stuff");
  }
  MyModule.prototype.cats = function (data) {
    if (data) {
      this._cats = data.cats;
    }
    return this._cats;
  };
  MyModule.prototype.getWow = function() {
    return this._cats.wow.very.json;
  };

  window.MyModule = MyModule;
}(jQuery));