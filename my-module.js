/*global jQuery*/
(function ($) {
  function MyModule () {
    $("#cats").html("Do stuff");
  }
  MyModule.prototype.cats = function (cats) {
    if (cats) {
      this._cats = cats;
    }
    return cats;
  };

  window.MyModule = MyModule;
}(jQuery));