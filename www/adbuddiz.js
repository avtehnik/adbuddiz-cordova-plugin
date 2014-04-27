 window.AdBuddizShow = function(str, callback) {
      cordova.exec(callback, function(err) {}, "AdBuddizPlugin", "showAdds", [str]);
};