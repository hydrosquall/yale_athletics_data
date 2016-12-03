// Bubble chart script for popular majors for athletes

var diameter = 500; // Max size of bubble
var color = d3.scale.category10();

// Initialize the layout object
var bubble = d3.layout.pack()
	.sort(null)
	.size([diameter, diameter])
	.padding(1.5);

var svg = d3.select("body")
	.append("svg")
	.attr("width", diameter)
	.attr("height", diameter)
	.attr("class", "bubble");

var csvPath = "./top_majors_processed.csv";
d3.csv(csvPath, function(error, data) {
	// Convert numerical values from strings to numbers
	data = data.map(function(d) {
		d.value = +d["Count"];
		return d;
	});
	
	// Convert data to format required by d3's bubble layout
	var nodes = bubble.nodes({children:data}).filter(function(d) {
		return !d.children;
	});
	
	// Setup the chart
	var bubbles = svg.append("g")
		.attr("transform", "translate(0,0)")
		.selectAll(".bubble")
		.data(nodes) // Hook it up to the data
		.enter();
	
	// Create the bubbles
	bubbles.append("circle")
		.attr("r", function(d) { return d.r; })
		.attr("cx", function(d) { return d.x; })
		.attr("cy", function(d) { return d.y; })
		.style("fill", function(d) { return color(d.value); });
	
	// Format the text for each bubble
	bubbles.append("text")
		.attr("x", function(d) { return d.x; })
		.attr("y", function(d) {return d.y + 5; })
		.attr("text-anchor", "middle")
		.text(function(d) { return d["Major"]; })
		.style({
			"fill": "white",
			"font-family": "Helvetica Neue, Helvetica, Arial, sans-serif",
			"font-size": "12px"
		});
	
});