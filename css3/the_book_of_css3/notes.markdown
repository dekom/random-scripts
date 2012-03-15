# Chapter 1: Introducing CSS3 #

CSS3 is modular in design to enable faster specification of the popular and necessary features, while allowing challenging and esoteric features to be developed more slowly.

`box-sizing`: "can set from which part of the box model -- the content itself or the border -- the width of the elemtn is calculated."

	E { box-sizing: [border-box | content-box*]; }
	border-box :: measurement of the box model without margin
	content-box :: measurement of the internal content

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

1. external stylsheet w/e **link**

		<link href='file' rel='stylesheet' media='logic media and (expression'>

2. external stylesheet w/ **@import**

		@import url('file') logic media and (expression);

3. extended **@media** rule

		@media logic media and (expression) {
			rules
		}

Rules:

	media: [screen | projection | etc]
	logic: [only | not]
	expression: [ Media Features parameters ]

## Media Features ##

"Media Features are information about the device that's being used to display the web page: its dimensions, resolution, and so on."

	@media logic media and [(feature) | (feature:value)] {
		rules
	}

### Features: Width & Height ###

	[min- | max-] width: length :: the width of the viewpoint (e.g. browser window)
	[min- | max-] height: length :: the height of the viewpoint
	[min- | max-] device-width: length :: the width of the physical screen
	[min- | max-] device-height: length :: the height of the physical screen
	
*Note*: Developers should consider building a stylesheet (and html) for smaller display devices first, then use Media Features to expand to larger displays.
This avoids unnecessary element loading.

	<link href='basic.css' rel='stylesheet' media='screen'>
	<link href='desktop.css' rel='stylesheet' media='screen and (min-device-width: 480px)'>
	<!--[if lt IE 9]>
		<link href='desktop.css' rel='stylesheet' media='screen'>
	<![endif]-->

### Features: Orientation, Aspect Ratio, Pixel Ratio ###

**Orientation***

	orientation: [landscape | portrait] :: the orientation of the viewing device

***Aspect Ratio***

	aspect-ratio: horizontal/vertical :: the aspect ratio of the screen
	device-aspect-ratio: horizontal/vertical :: the aspect ratio of the device

***Pixel Ratio***

	[-webkit-][max- | min-] device-pixel-ratio: pixel density :: the pixel density (how many screen pixels per CSS pixel) of the viewing device
	[max- | min-][moz] device-pixel-ratio: pixel density

### Features: Mozilla-Specific Media Features ###

[Features proprietary to Gecko](https://developer.mozilla.org/En/CSS/Media_queries#Mozilla-specific_media_features)

	-moz-touch-enabled {
		rules
	}	

## Multiple Media Features ##

	@media logic media and (expression) and (expression), logic media and (expression) ... {
		rules
	}

# Chapter 3: Selectors #

