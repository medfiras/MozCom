<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>jQuery UI Accordion - Default functionality</title>
	<link rel="stylesheet" href="../styles/jquery.ui.all.css">
	<script src="../scripts/jquery-1.7.2.js"></script>
	<script src="../scripts/jquery.ui.core.js"></script>
	<script src="../scripts/jquery.ui.widget.js"></script>
	<script src="../scripts/jquery.ui.accordion.js"></script>
	<link rel="stylesheet" href="../styles/demos.css">

	<script>
	$(function() {
		$( "#accordion" ).accordion({
			collapsible: true
		});
	});
	</script>
</head>
<body>

<div class="demo">

<div id="accordion">
	<h6><a href="#">Section 1</a></h6>
	<div>
		<p>
		Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
		ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
		amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
		odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
		</p>
	</div>
	<h6><a href="#">Section 2</a></h6>
	<div>
		<p>
		Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
		purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
		velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
		suscipit faucibus urna.
		</p>
	</div>
	<h6><a href="#">Section 3</a></h6>
	<div>
		<p>
		Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
		Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
		ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
		lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
		</p>
		<ul>
			<li>List item one</li>
			<li>List item two</li>
			<li>List item three</li>
		</ul>
	</div>
	<h6><a href="#">Section 4</a></h6>
	<div>
		<p>
		Cras dictum. Pellentesque habitant morbi tristique senectus et netus
		et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
		faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
		mauris vel est.
		</p>
		<p>
		Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
		Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
		inceptos himenaeos.
		</p>
	</div>
</div>

</div><!-- End demo -->

<div class="demo-description">
<p>
Click headers to expand/collapse content that is broken into logical sections, much like tabs.
Optionally, toggle sections open/closed on mouseover.
</p>
<p>
The underlying HTML markup is a series of headers (H3 tags) and content divs so the content is
usable without JavaScript.
</p>
</div><!-- End demo-description -->

</body>
</html>