// Bubble chart script for popular majors for athletes

var diameter = 700; // Max size of bubble
var color = d3.scale.category10();

// Initialize the layout object
var bubble = d3.layout.pack()
	.sort(null)
	.size([diameter, diameter])
	.padding(10);

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
		.style("font-size", function(d) {
			var len = d["Major"].substring(0, d.r / 3).length;
			var size = d.r/3;
			size *= 10 / len;
			size += 1;
			return Math.round(size)+'px';
		})
		.text(function(d) { return d["Major"].substring(0, d.r / 3); })
		.style({
			"fill": "white",
			"font-family": "Helvetica, Arial, sans-serif",
		});
	
});