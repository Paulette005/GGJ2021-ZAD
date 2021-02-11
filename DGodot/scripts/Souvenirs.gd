extends Control

var Souvenirs = String("")
var IconeMouv = false

#var DialSouvenir = ["Ça va faire bientôt cinq ans que je n’avais pas remis les pieds ici. Tout le monde est finalement partit. Je me demande s’il y a encore des vestiges de notre occupation, de nos habitations. Faire un tour ici me permettra sûrement de retrouver des souvenirs pour parler et expliquer un peu ce que j’ai pu vivre ici et les idéaux qu’on y avait poursuivit.",
#			"…Cinq ans, cinq ans et les traces de nos derniers affrontements avec les fdo, sont toujours là... La barricade avait cédé et ce malgré l'abandon du projet d’autoroute. Les flics ont continué à charger... à gazer. Puis, soudainement, tout fut fini, les fumées s’estompèrent. Les policiers se replièrent pour nous laisser là, hagards, à panser nos blessures, nos colères et nos rancunes. Nous avions gagné, remporté le combat pour la forêt. Mais cela annonçait également, la fin de ce qu’avait été cette ZAD. Peu de temps après, une grande partie d’entre nous étions partis, certains fatigués de lutter, d’autres souhaitant s’investir au sein d’autres zones à défendre.",
#			"Voilà l’ancien potager ! Il prospère sans nous, ça fais plaisir à voir ! Je m’en suis occupée pendant une période. J’étais avec Liz, une Allemande, persuadée qu’elle pourrait faire pousser des melons ici... Elle semblait avoir la main verte pour tout type de légumes et de fruits mais on a jamais vu pousser un seul melon. Visiblement, aucun n’a voulu germer depuis notre départ.",
#			"Voilà le vieux four à pain, qu’on appelait n°4, car c’était le quatrième qu’on eu construit.C’est Stelle et Grog qui ont tenu le projet à bout de bras. “Si on veux être mieux lotis, il nous faut un four à pain !” disait Grog en AG. On avait pas mis longtemps à se mettre d’accord pour suivre l’idée. Par contre la construction fut compliquée. Entre les prises de tête sur la marche à suivre, pourquoi ici et pas ailleurs... Il y en a un qui a faillit en venir aux mains avec Stelle. Parka je crois, et on a du voir comment gérer le conflit et calmer tout ça. On avait écarté Parka du projet, le temps qu’il se calme, ça avait fait pas mal de remous mais on avait réussis à gérer la situation. Au final il était revenu et c’était montré vachement content du four, et comme beaucoup d’autres, avait adhéré rapidement au pain à prix libre qu’on y faisait.",
#			"Ha ! C’est là où j’ai campé la première nuit sur la ZAD ! J’étais tellement gênée au début, je savais pas trop où me mettre, et c’est Grand Stache qui m’a dit de ne pas trop me tracasser et de me poser par là pour la nuit. J’avais quand même fais le tour de tous les voisin.es pour être sûre de ne pas gêner. Au début pas très sereine, j’ai pu grâce aux tâches partagées, aux moments de vie commune, comprendre vraiment dans quoi je m’étais embarquée, et je m’en réjouissait grandement. C’était vraiment une sorte de rebond dans mon existence. Ça n’a pas, bien sûr, rendu tout facile, mais au moins j’avais l’impression d’avoir un but et de voir une ouverture vers un avenir plus juste.",
#			"Il me reste des choses à voir.",
#			"J'ai fait le tour, il est temps de partir."]

var DialSouvenir = [
	["Ça va faire bientôt cinq ans que je n’avais pas remis les pieds ici.",
	"Tout le monde est finalement parti. Je me demande s’il y a encore des vestiges de notre occupation, de nos habitations.",
	"Faire un tour ici me permettra sûrement de retrouver des souvenirs de ce que j’ai pu vivre et des idéaux qu’on y avait poursuivi."],
	["…Cinq ans, cinq ans et les traces de nos derniers affrontements avec les fdo, sont toujours là... Malgré l’abandon du projet d’autoroute, les flics sont venus évacuer la ZAD et à force de charges, la barricade avait cédé.",
	"Puis, soudainement, tout fut fini, les fumées s’estompèrent. Les policiers se replièrent pour nous laisser là, hagards, à panser nos blessures, nos colères et nos rancunes. Nous avions gagné, remporté le combat pour la forêt.",
	"Cela annonçait également la fin de ce qu’avait été cette ZAD. Peu de temps après, une grande partie d’entre nous somme partis, certain·es fatigué·es de lutter, d’autres souhaitant s’investir au sein d’autres zones à défendre."],
	["Ce sont toutes les lacrymos que l’on avait récupéré après la dernière charge de la police. Entassées ici, pour mettre en évidence la violence que l’on avait subi. Cette violence aveugle d’un état déconnecté des réalités de ce terrain, de ses habitants.",
	"On en avait retrouvé dans les 5000, effrayant... Mais loin de ce qu’avait pu subir Notre-Dame-des-Landes."],
	["Tiens, voilà le fauteuil de Steph, iel le sortait de sa piaule tous les soirs pour nous rejoindre près du feu. Iel chantait bien.",
	"A un moment ou un autre de la soirée on avait toujours le droit à l'internationale. C’est ce qui faisait le charme de nos rassemblements.",
	"Nous étions tou·tes, malgré nos antécédents et nos opinions politiques, uni·es dans la lutte contre un ennemi commun. C’était une de nos forces et un des moteurs de nos tolérances les un·es envers les autres."],
	["Voilà le vieux four à pain. On l’appelait n°4 car c’était le quatrième qui fut construit. Il y avait eu pas mal de débat lors de sa construction pour savoir comment on allait s’y prendre.",
	"La commission de résolution de conflit avait même du intervenir pour écarter Parka du projet. Son comportement dirigiste, agressif et extrêmement sexiste avait rendu sa présence néfaste lors de la fabrication du four. Il était mécontent de la gestion de Stelle, qui portait le projet et faisait un super taf.",
	"Après son exclusion, le four fut fini rapidement et sereinement. Lors de son inauguration on avait fait des super pizzas."],
	["Ça, c’était la vieille remise. Le Récup’tout ou Prend’besoin en fonction. Le coin où on pouvait mettre ce dont on n' avait plus besoin, ou les dons qu’on collectait",
	"On pouvait également récupérer des choses qui venaient à nous manquer. Tout ça sans contrepartie, sans jugement.",
	"On comptait sur la responsabilité de chacun·e pour se servir raisonnablement et sur la générosité de tou·tes pour faire tourner la remise. Bien que quelques-un·es abusaient, dans l’ensemble chacun·es jouaient le jeu.",
	"J’y mettais régulièrement des écharpes que j’avais tricotées grâce à la laine des quelques moutons qu’on avait. Et, entre autre choses, j‘y avais trouvé mon super chapeau."],
	["Voilà l’ancien potager ! Il prospère sans nous, ça fait plaisir à voir !",
	"Je m’en suis occupé pendant une période. J’étais avec Liz, une allemande, persuadée qu’elle pourrait faire pousser des melons ici...",
	"Elle semblait avoir la main verte pour tout type de légumes et de fruits mais on a jamais vu pousser un seul melon. Visiblement, aucun n’a voulu germer depuis notre départ."],
	["Maintenant que j’y pense, j’ai quand même vachement bougé ici. Un jour au pain, un jour au bois, un autre à apprendre la musique. C’est vrai que j’ai énormément appris ici.",
	"Au début, j’étais pas autant débrouillarde et la transition entre ma vie d’avant et la nouvelle a été rude.",
	"Pas d’eau courante ou d’électricité en fonction des endroits, devoir tout se réapproprier de A à Z. Heureusement, j’étais pas la seule à découvrir un nouveau mode de vie et on a pu se soutenir.",
	"Par exemple, c’est grâce à Kat que j’avais pu apprendre à m’occuper des animaux, des cultures ou de l’approvisionnement de notre non-marché.",
	"Toutes ces choses que je tâche désormais de transmettre dans la nouvelle ZAD."],
	["Ha ! C’est là où j’ai campé la première nuit ! J’étais tellement gênée au début, je savais pas trop où me mettre.",
	"C’est Grande Stache qui m’a dit de ne pas trop me tracasser et de me poser là pour la nuit. J’avais quand même fais le tour de tous les voisin·es pour être sûre de ne pas gêner.",
	"Grâce aux tâches partagées et aux moments de vie commune, j’ai très vite pu comprendre dans quoi je m’étais embarquée. C’était vraiment une sorte de rebond dans mon existence.",
	"Ça n’a pas, bien sûr, rendu tout facile, mais au moins j’avais l’impression d’avoir un but et de voir une ouverture vers un avenir plus juste."],
	["Ici c’était notre zone de réunion en non mixité féministe et anti raciste. On en avait besoin régulièrement pour discuter de tous les problèmes avec les mecs cis ou les blanch·e·s.",
	"Beaucoup avaient du mal à comprendre qu’être anarchiste, anti-système, ne suffisait pas à être respectueux avec tout le monde. En particulier avec les meufs, les non binaires et les personnes racisé·e·s.",
	"Il y avait un gros travail de déconstruction du sexisme et du racisme à faire. Heureusement on avait plein d’outils, du bâton de parole en réunion, aux plannings de tâches ménagères, on arrivait à faire progresser les choses.",
	"Pour les cas d’agressions, on partait du principe qu’on écoutait la victime et pas l’agresseur. C’était à la personne agressée de définir la gravité du problème et de décider de ce qu’on faisait. Même si c’était rare, on a dû exclure quelques mecs."],
	["Je ne peux pas partir, il me reste des choses à voir."],
	["Ça fait toujours un peu de peine de voir ce lieu laissé à l’abandon, après tout ce que j’ai pu y vivre. Je ne peux pas m’empêcher de me rappeler de tous ces moments vécus...",
	"Du désespoir après le saccage et la destruction de nos structures par les flics. C’est ce qui m’avait incitée à partir ailleurs plutôt que de rester ici à tout recommencer. D’autres épuisés ont préféré se ranger, se poser.",
	"Croire en un monde meilleur c’est beaucoup d’effort, bien souvent durement réprimé. J’aime toujours penser que les ZAD sont des portes d’entrée vers de nouvelles utopies, des terrains d’expérimentation d’autres formes de vivre ensemble."],
	["Rien de plus ici."],
	["Je ne vois rien à rajouter."],
	["Je ne vois rien qui me rappelle quelque chose."],
	["Il n’y a rien d’intéressant ici."],
	["Je crois que j'ai fait le tour, il va être temps de partir."]
	]

#func _ready():
#		chargement()

func _process(delta):
	$Icone.visible = IconeMouv
	chargement()
	if Input.is_action_pressed("ui_accept"):
		chargement()
		
func chargement():
	$Texte.bbcode_text = Souvenirs
	IconeMouv = true
	$Icone/AnimationPlayer.play("mouv")
