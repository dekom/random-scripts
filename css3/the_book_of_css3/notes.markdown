# Chapter 1: Introducing CSS3 #

CSS3 is modular in design to enable faster specification of the popular and necessary features, while allowing challenging and esoteric features to be developed more slowly.

`box-sizing`: "can set from which part of the box model -- the content itself or the border -- the width of the elemtn is calculated."

	E { box-sizing: [border-box | content-box*]; }
	border-box: measurement of the box model without margin
	content-box: measurement of the internal content

## Browser Prefixes ##

	{
		-moz- /* Firefox */
		-webkit- /* Webkit */
		-ms- /* IE */
		-o- /* Opera */
	}

Created for our (developers') own good, because these specifications are in a volatile stage of being specified/implemented.  Better to prefix the code, than to have the newer
implementation brick your code.

# Chapter 2: Media Queries #

"Media Queries extend the media types by providing a query syntax that lets you server styles far more specifically to your user's device, allowing a tailored experience.

## Syntax ##

1. external stylsheet w/e link

	<link href='file' rel='stylesheet' media='logic media and (expression'>

2. external stylesheet w/ @import

	@import url('file') logic media and (expression);

3. extended @media rule:

	@media logic media and (expression) {
		rules
	}

