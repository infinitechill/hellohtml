
mkdir ~/apps/hellohtml/new/$1
mkdir ~/apps/hellohtml/new/$1/css
mkdir ~/apps/hellohtml/new/$1/js

# create boilerplate html code
echo "
<!DOCTYPE html>
<html>
<head>
<!-- INFINITE CHILL -->
<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\"/>
</head>
<body>
<!-- put HTML code here -->
<h1>
$1
</h1>

<h2>
$1
</h2>

<p>
$1
</p>

<div id=\"mydate\"></div>

<script type=\"text/javascript\" src=\"js/script.js\"></script>
</body>
</html>
" > ~/apps/hellohtml/new/$1/index.html

# create boilerplate css code
echo "
<style type=\"text/css\">

body {
    color: blue;
}

h1 {
    color: green;
}

h2 {
    color: red;
}

p {
    color: purple;
}

#mydate {
	font-size: 20px;
	font-weight: bold;
}

</style>
" > ~/apps/hellohtml/new/$1/css/style.css

# create boilerplate javascript code
echo "
<!--     


test = new Date()
month = test.getMonth()
month = (month * 1) + 1
day = test.getDate()
year = test.getFullYear()
datestring = month + \"/\" + day + \"/\" + year

var node = document.getElementById(\"mydate\");
node.innerHTML = datestring;

-->
" > ~/apps/hellohtml/new/$1/js/script.js

# open folder and index.html file for preview
open ~/apps/hellohtml/new/
open ~/apps/hellohtml/new/$1/index.html