   $('.hello-button').on('click', function() {
        alert('hello world')
      })
// MAGIC DISAPPEAR SOMESTUFF
   $("#disappear").on('click', function () {
   		$(".container").fadeOut()
   });
// MAGIC APPEAR SOMESTUFF
    $("#appear").on('click', function () {
   		$(".container").fadeIn()
   });
// MAGIC ADD SOME CSS
      $("#unicorn").on('click', function () {
   		$(".container *").addClass("unicorn-mode")
// hmm you want to add remove add remove thanuse toggleClass
   		// $(".container *").toggleClass("unicorn-mode")
   });

       	$('form').on('submit', function (event) {
       		event.preventDefault();

       		var emptyCounter = 0;
    		$('input').each(function(idx, ele) {
    			if ( $(ele).val() === "" ) {
      				emptyCounter++;
   				}
   			});	
   				console.log(emptyCounter)
   				if(emptyCounter !== 0){
   					alert("please fill in all the lines");
   				}
  	});