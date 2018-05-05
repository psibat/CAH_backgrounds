Cards Against Humanity background generator
(rough script - could be a lot cleaner)

generate_image.sh:
	Generates the background image and outputs to /tmp/result/ as $2result.png.
	Requires a root directory containing: 
				answers/ - dir full of individual answer card images
				questions/ - dir full of individual question card images (3 answer questions must start with 'T' 2 answer questions must start with 'D')
				background.png - Image to place questions / answers
	Accepts two arguments
		1: Path to root directory
		2: Number / prefix for the resulting image

cah_replace:
	Removes existing result images
	Accepts either no arguments (removes them all) or 1 argument as the result image prefix
	


Answers / Question images wont be provided but can be extracted from the pdf at https://www.cardsagainsthumanity.com/
(Convert the pdf to png -> Crop to just cards -> Slice 25% x 20%)
