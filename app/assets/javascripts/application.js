// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require_self


$(document).on('turbolinks:load', function(){
   $("a").hover(function() { // Mouse over
    $(this).css('color', 'lightgreen');
    $(this).stop().fadeTo(300, 0.6);
    $(this).stop().fadeTo(300, 0.3);
  }, function() { // Mouse out
    $(this).css('color', 'black');
    $(this).stop().fadeTo(300, 1);
    $(this).stop().fadeTo(300, 1);
  });
});
