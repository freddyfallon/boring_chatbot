// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {
  $('.opening-message a').on('click', function(e) {
    e.preventDefault();
    $(".opening-message").hide();
    $(".message-one").show("slow");
    $(".reply-one").delay(1000).show("slow");
    $(".stage-one-message-options").delay(2000).show("fast", "swing");
  });
  // stage one message clicks
  $('.stage-one-level-one-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-one-message-options").hide();
    $(".stage-one-message-level-one").show("slow");
    $(".stage-one-reply-level-one").delay(1000).show("slow");
    $(".stage-two-message-options").delay(2000).show("fast", "swing")
  });

  $('.stage-one-level-two-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-one-message-options").hide();
    $(".stage-one-message-level-two").show("slow");
    $(".stage-one-reply-level-two").delay(1000).show("slow");
    $(".stage-two-message-options").delay(2000).show("fast", "swing")
  });

  $('.stage-one-level-three-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-one-message-options").hide();
    $(".stage-one-message-level-three").show("slow");
    $(".stage-one-reply-level-three").delay(1000).show("slow");
    $(".lose-game").delay(2000).show("fast", "swing")
  });

  // Stage two message clicks

  $('.stage-two-level-one-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-two-message-options").hide();
    $(".stage-two-message-level-one").show("slow");
    $(".stage-two-reply-level-one").delay(1000).show("slow");
    $(".stage-three-message-options").delay(2000).show("fast", "swing")
  });

  $('.stage-two-level-two-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-two-message-options").hide();
    $(".stage-two-message-level-two").show("slow");
    $(".stage-two-reply-level-two").delay(1000).show("slow");
    $(".stage-three-message-options").delay(2000).show("fast", "swing");
  });

  $('.stage-two-level-three-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-two-message-options").hide();
    $(".stage-two-message-level-three").show("slow");
    $(".stage-two-reply-level-three").delay(1000).show("slow");
    $(".lose-game").delay(2000).show("fast", "swing");
  });


  // Stage three message clicks

  $('.stage-three-level-one-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-three-message-options").hide();
    $(".stage-three-message-level-one").show("slow");
    $(".stage-three-reply-level-one").delay(1000).show("slow");
    $(".win-game").delay(2000).show("fast", "swing");
  });

  $('.stage-three-level-two-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-three-message-options").hide();
    $(".stage-three-message-level-two").show("slow");
    $(".stage-three-reply-level-two").delay(1000).show("slow");
    $(".win-game").delay(2000).show("fast", "swing");
  });

  $('.stage-three-level-three-message a').on('click', function(e) {
    e.preventDefault();
    $(".stage-three-message-options").hide();
    $(".stage-three-message-level-three").show("slow");
    $(".stage-three-reply-level-three").delay(1000).show("slow");
    $(".lose-game").delay(2000).show("fast", "swing")
  });

  // Logo click and admin link clicks

  $('.logo').on('click', function(e) {
    location.reload();
  });

  $('.admin-area a').on('click', function(e) {
    location.reload();
  });

  $('.lose-game a').on('click', function(e) {
    location.reload();
  });

  $('.win-game a').on('click', function(e) {
    location.reload();
  });

  $(window).on('popstate', function() {
      location.reload(true);
   });


});
