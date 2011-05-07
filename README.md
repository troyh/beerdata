cvs2xml
=======

Converts comma-separated value files to XML. The input should look like this (note the first line is the header line and will be ignored):

	brewery,beer name,size,style,description from brewer,color,ABV,OG,FG,IBU,availability,calories,calories/serving size,ingredients,grains,Hops,yeast,other ingredients,distributor,item,upc,reg price,post off,net case price,unit price,deposit,suggested +20%,suggested +25%,suggested +30%,,,,
	Blue Point Brewing Co.,Toasted Lager,,Lager,"Blue Point Brewing's award-winning Toasted Lager is our flagship product. Copper in color this brew is made from six different malts including: English Pale, Crystal, Munich, Carapils, Wheat and Belgian Caravienna. Toasted Lager displays a balanced flavor of malt and hop which makes for easy drinking. Special lager yeast is used to produce that long lasting, smooth finish. The ""toasted"" part of the name refers to our direct-fire brew kettle's hot flames that impart a toasted flavor to our most popular microbrew.",,5.3,1.054,,28,,,,,"English Pale, Crystal, Munich, Carapils, Wheat and Belgian Caravienna",,,,,,,,,,,,,,,,,,
	Blue Point Brewing Co.,Hoptical Illusion,,American IPA,"This classic American style IPA features a rare hop exclusively grown on a farm in Oregon. One taste of the Hoptical Illusion and you'll know why Blue Point bought the entire crop. A generous amount of the select hop balances out malty backbone of this delicious golden beer. Offered in six packs and on draft, Hoptical Illusion is tantalizing the tastebuds of beer lovers from Montauk to Manhattan.",,6.3,1.06,,60,,,,,,,,,,,,,,,,,,,,,,,
	Blue Point Brewing Co.,Summer Ale,,Ale,"Blue Point Brewing's Summer Ale has a delicious golden taste. In addition to traditional barley malt, a substantial portion of wheat malt is added to the mix giving this brew a unique tartness that's not found in many beers today. This light, thirst-quenching microbrew is enjoyed by all on a hot, Long Island Summer day.",,4.39,1.044,,16,Summer,,,,barley and wheat,,,,,,,,,,,,,,,,,,
	Blue Point Brewing Co.,Winter Ale,,Amber Ale,"Blue Point Brewing's Winter Ale is a hearty and robust amber ale. Brewed to chase away the chill of a cool winter night. Made with Pale, Vienna, crystal and chocolate malt. This uncommon amber is only brewed during the cold months of the year. Winter Ale is an extremely popular seasonal specialty. Enjoy the tasty balance of malt and hops. Remember this special ale leaves with Winter.",,5.5,1.056,,30,Winter,,,,"Pale, Vienna, crystal and chocolate malt",,,,,,,,,,,,,,,,,,
	Blue Point Brewing Co.,Blueberry Ale,, Blueberry Ale,Blue Point fresh Blueberry Ale offers an unusual twist on brewing that turns out to be just perfect. A wonderful blend of fresh blueberries matched with a thirst quenching distinctive ale. We carefully add 132 lbs of blueberries to each special batch. Brewed with 100% American ingredients. Enjoy a truly unique flavorful brew!,,4.3,1.04,,14,,,,,,,,,,,,,,,,,,,,,,,

Create a sed script like this to format the output into a big XML doc:


	1i\
	<beers>
	$a\
	</beers>
	/<?xml version="1.0"?>/d

To run it:

	./csv2xml < file.csv | sed -f xxx.sed > newbeers.xml


separatebeers
=============

Separates the beer XML docs from one big XML doc containing all the beers (i.e., the output of cvs2xml).

To run it:

	separatebeers file.xml

