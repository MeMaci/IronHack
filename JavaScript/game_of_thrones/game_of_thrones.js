var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
		};
    function myFunction(item, index){
    	//string interpulation in JS
   		 console.log(`Title: ${item.title} Episode #: ${item.episode_number}`) ; 
   		 console.log(item.description) ;
   		 console.log(`Rating : ${item.rating} ${"*".repeat(item.rating)}`) ;
	};
		function searchFor(name, index){
			if (true) {

			} else {
			 console.log("The str being searched for does not exist");
			};

    var episodes = JSON.parse(file) ;

   // SORT WORKS EVEN IF YOU DONT CALL IT
    	var sorted_episodes = episodes.sort(function(a, b){
    		return a.episode_number-b.episode_number
    	});

    	var filtered_episodes = episodes.filter(function(episode){
			return episode.rating > 8.5;
		});


    	 // sorted_episodes.forEach(myFunction) ;
    	filtered_episodes.forEach(myFunction) ;
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions) ;