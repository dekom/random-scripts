# Chapter 1: Introducing CSS3 #

CSS3 is modular in design to enable faster specification of the popular and necessary features, while allowing challenging and esoteric features to be developed more slowly.

`box-sizing`: "can set from which part of the box model -- the content itself or the border -- the width of the elemtn is calculated."
	E { box-sizing: [border-box | content-box*]; }
		border-box: width of the box model without margin
		content-box: width of the internal content

<div class='box-sizing' style="
border: 10px solid black;
box-sizing: border-box;
padding: 10px;
width: 150px;
">Content</div>
