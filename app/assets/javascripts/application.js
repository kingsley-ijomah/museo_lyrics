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
  //Fix Styling
  if(window.location.pathname.indexOf('/songs') >= 0 || window.location.pathname.indexOf('/') >= 0){
    $("#songs_container").css('background-color', 'indigo');
    $("#songs_container").css('border', '0px');
  };
  if(window.location.pathname.indexOf('/songs') < 0 || window.location.pathname.indexOf('/') < 0){
    $("#songs_container").css('background-color', 'ghostwhite');
    $("#songs_container").css('border', 'solid silver 4px');
  };
  $(".btn").hover(function(){ // Mouse over
    $(this).css('color', 'lightgreen');
    $(this).css('background-color', "ghostwhite");
    $(this).stop().fadeTo(300, 0.6);
    $(this).stop().fadeTo(300, 0.3);
  }, function(){ // Mouse out
    $(this).css('color', 'white');
    $(this).css('background-color', "#337ab7");
    $(this).stop().fadeTo(300, 1);
    $(this).stop().fadeTo(300, 1);
  });
   $("a:not(.btn)").hover(function() { // Mouse over
    $(this).css('color', 'lightgreen');
    $(this).stop().fadeTo(300, 0.6);
    $(this).stop().fadeTo(300, 0.3);
  }, function() { // Mouse out
    $(this).css('color', 'black');
    $(this).stop().fadeTo(300, 1);
    $(this).stop().fadeTo(300, 1);
  });
});
