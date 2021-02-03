extends Control

var IDSouvenirs
var Souvenirs = String("")

var DialSouvenir = ["Ça va faire bientôt cinq ans que je n’avais pas remis les pieds ici. Tout le monde est finalement partit. Je me demande s’il y a encore des vestiges de notre occupation, de nos habitations. Faire un tour ici me permettra sûrement de retrouver des souvenirs pour parler et expliquer un peu ce que j’ai pu vivre ici et les idéaux qu’on y avait poursuivit.",
			"…Cinq ans, cinq ans et les traces de nos derniers affrontements avec les fdo, sont toujours là... La barricade avait cédé et ce malgré l'abandon du projet d’autoroute. Les flics ont continué à charger... à gazer. Puis, soudainement, tout fut fini, les fumées s’estompèrent. Les policiers se replièrent pour nous laisser là, hagards, à panser nos blessures, nos colères et nos rancunes. Nous avions gagné, remporté le combat pour la forêt. Mais cela annonçait également, la fin de ce qu’avait été cette ZAD. Peu de temps après, une grande partie d’entre nous étions partis, certains fatigués de lutter, d’autres souhaitant s’investir au sein d’autres zones à défendre.",
			"Voilà l’ancien potager ! Il prospère sans nous, ça fais plaisir à voir ! Je m’en suis occupée pendant une période. J’étais avec Liz, une Allemande, persuadée qu’elle pourrait faire pousser des melons ici... Elle semblait avoir la main verte pour tout type de légumes et de fruits mais on a jamais vu pousser un seul melon. Visiblement, aucun n’a voulu germer depuis notre départ.",
			"Voilà le vieux four à pain, qu’on appelait n°4, car c’était le quatrième qu’on eu construit.C’est Stelle et Grog qui ont tenu le projet à bout de bras. “Si on veux être mieux lotis, il nous faut un four à pain !” disait Grog en AG. On avait pas mis longtemps à se mettre d’accord pour suivre l’idée. Par contre la construction fut compliquée. Entre les prises de tête sur la marche à suivre, pourquoi ici et pas ailleurs... Il y en a un qui a faillit en venir aux mains avec Stelle. Parka je crois, et on a du voir comment gérer le conflit et calmer tout ça. On avait écarté Parka du projet, le temps qu’il se calme, ça avait fait pas mal de remous mais on avait réussis à gérer la situation. Au final il était revenu et c’était montré vachement content du four, et comme beaucoup d’autres, avait adhéré rapidement au pain à prix libre qu’on y faisait.",
			"Ha ! C’est là où j’ai campé la première nuit sur la ZAD ! J’étais tellement gênée au début, je savais pas trop où me mettre, et c’est Grand Stache qui m’a dit de ne pas trop me tracasser et de me poser par là pour la nuit. J’avais quand même fais le tour de tous les voisin.es pour être sûre de ne pas gêner. Au début pas très sereine, j’ai pu grâce aux tâches partagées, aux moments de vie commune, comprendre vraiment dans quoi je m’étais embarquée, et je m’en réjouissait grandement. C’était vraiment une sorte de rebond dans mon existence. Ça n’a pas, bien sûr, rendu tout facile, mais au moins j’avais l’impression d’avoir un but et de voir une ouverture vers un avenir plus juste.",
			"Il me reste des choses à voir.",
			"J'ai fait le tour, il est temps de partir."]


#func _ready():
#		chargement()

func _process(delta):
	chargement()
	if Input.is_action_pressed("ui_accept"):
		chargement()
		
func chargement():
	$Texte.bbcode_text = Souvenirs
