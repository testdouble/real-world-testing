window.ConvertsNumerals = function() {
	
	var VALUES = {
		"I" 	: 1,
		"II"	: 2,
		"III"	: 3,
		"IV"	: 4
	};

	this.fromRoman = function(input) {
		return VALUES[input];
	};
};
