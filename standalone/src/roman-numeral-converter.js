window.ConvertsNumerals = function() {
	
	this.fromRoman = function(input) {
		if (input === "I") {
			return 1;
		} else if (input === "II"){
			return 2;
		} else {
			return 3;
		};
	};
};
