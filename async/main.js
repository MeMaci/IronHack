var slideLoader =  require('./slide-loader') ;

slideLoader('presentation.txt', function (slides){
	slides.forEach(function (slide) {
		console.log('\n\n\n\n   '+ slide) ;
	}) ;	
}) ;
