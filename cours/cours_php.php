<head>
	<title>Premier exemple : Mise en page ... réussie</title>
</head>
<body>
	<?php
		printf("Affiche du texte en PHP.")

		for($i = 1; $i <= 5; $i++) {
			printf("<p>Paragraphe n%d généré par une boucle for</p>\n", $i)
		}	

		mysqli_query($links, "show tables;")




	?>
</body>
