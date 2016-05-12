jQuery(document).ready(function($){

	var MqM= 768,
		MqL = 1024;

	var faqsSections = $('.faq-group'),
		faqTrigger = $('.trigger'),
		faqsContainer = $('.faq-items'),
		faqsCategoriesContainer = $('.categories'),
		faqsCategories = faqsCategoriesContainer.find('a'),
		closeFaqsContainer = $('.cd-close-panel');

	//select a faq section
	faqsCategories.on('click', function(event){
		event.preventDefault();
		var selectedHref = $(this).attr('href'),
			target= $(selectedHref);
		if( $(window).width() < MqM) {
			faqsContainer.scrollTop(0).addClass('slide-in').children('ul').removeClass('selected').end().children(selectedHref).addClass('selected');
			closeFaqsContainer.addClass('move-left');
			$('body').addClass('cd-overlay');
		} else {
	        $('body,html').animate({ 'scrollTop': target.offset().top - 19}, 200);
		}
	});

	//close faq lateral panel - mobile only
	$('body').bind('click touchstart', function(event){
		if( $(event.target).is('body.cd-overlay') || $(event.target).is('.cd-close-panel')) {
			closePanel(event);
		}
	});
	faqsContainer.on('swiperight', function(event){
		closePanel(event);
	});


	faqTrigger.on('click', function(event){
		event.preventDefault();
		$(this).next('.faq-content').slideToggle(200).end().parent('li').toggleClass('content-visible');
	});

	$(window).on('scroll', function(){
		if ( $(window).width() > MqL ) {
			(!window.requestAnimationFrame) ? updateCategory() : window.requestAnimationFrame(updateCategory);
		}
	});

	$(window).on('resize', function(){
		if($(window).width() <= MqL) {
			faqsCategoriesContainer.removeClass('is-fixed').css({
				'-moz-transform': 'translateY(0)',
			    '-webkit-transform': 'translateY(0)',
				'-ms-transform': 'translateY(0)',
				'-o-transform': 'translateY(0)',
				'transform': 'translateY(0)',
			});
		}
		if( faqsCategoriesContainer.hasClass('is-fixed') ) {
			faqsCategoriesContainer.css({
				'left': faqsContainer.offset().left,
			});
		}
	});

	function closePanel(e) {
		e.preventDefault();
		faqsContainer.removeClass('slide-in').find('li').show();
		closeFaqsContainer.removeClass('move-left');
		$('body').removeClass('cd-overlay');
	}
});
