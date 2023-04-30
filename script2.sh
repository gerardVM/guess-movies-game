#!/bin/bash

cat << EOF > ./sites/scenes.html

<head>
    <title>Agora Movie Scenes</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
EOF
order=0

for url in $(cat list.txt); do
cat << EOF >> ./sites/scenes.html
<div class="wrapper">
<iframe width="1200" height="675" src="$url" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<div class="overlay"></div>
</div>
EOF
done

echo "</body>" >> ./sites/scenes.html