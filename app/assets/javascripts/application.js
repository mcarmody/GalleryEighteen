// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require turbolinks
//= require_tree .
//= require foundation
//= require masonry/jquery.masonry
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require masonry/box-maker
//= require masonry/jquery.loremimages.min

$(document).foundation();
$(function(){ $(document).foundation(); });

$(function(){

  $('#masonry-container').masonry({
    itemSelector: '.box',
    //columnWidth: 259,
    //gutterWidth: 5
  });

});

$(function() {
	$('.item').mouseenter(function() {
		$(this).find('.details').css('display', 'inline-block');
	});
	$('.item').mouseleave(function() {
		$(this).find('.details').css('display', 'none');
	});
});


//fade-out on hover over featured category
$(function() {
	// $('.featured-art').mouseenter(function() {
	// 	$(this).find('.featured').css('opacity', '.5');
	// });
	$('.featured-art').mouseleave(function() {
		$(this).find('.featured').css('opacity', '1');
	});
});

$(function() {
	$('.featured').mouseenter(function() {
		$(this).siblings('.featured').css('opacity', '.5');
		$(this).find('label').css('display', 'inline');
		$(this).css('opacity', '1');
	});
	$('.featured').mouseleave(function() {
		$(this).css('opacity', '.5');
		$(this).find('label').css('display', 'none');
	});
});