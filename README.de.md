# quail-classic-german
Emacs-Quail Input Methode für klaſſiſches Deutſch.

Engliſh: [README.md](README.md "Engliſh verſion")

## Was iſt das hier?

Dies iſt eine Input-Methode, die für die klaſſiche Rechtſchreibung verwendet werden kann.
Sie enthält das lange s (ſ) und einen ſchöneren Unicode-Codepoint für ʒ, ſo daß wieder ſichtbar wird, warum Es-Zett Es-Zett heiſt.

## Verwendung
- Die Datei `classic-german.el` im `~/.emacs.d/`-Verʒiechnis ablegen.
- In der `~/.emacs` mit `(load "~/.emacs.d/classic-german.el)` laden. 

Im Emacs kann die Input-Methode dann verwendet werden, durch die
Eingabe von `C-u C-\ classic-german-z` oder `C-u C-\
classic-german`. (Letʒtere verwendet das normale z).

## Wie die Taſtendrücke überſetʒt werden

Normalerweiſe funktionieren die normalen Transliterationen:  

### Umlaute
... funktionieren folgenderweiſe (genauſo wie in der Eingabe-Methode "german-postfix")

    ae -> ä
    AE -> Ä
	
- Wenn keine Überſetʒung gewünſcht iſt, kann `AEE -> AE` eingegeben
  werden, und `aee -> ae`. (Die anderen Buchſtaben entſprechend)

### Der ſ-Kram

Normalerweiſe ſollte die Eingabe-Methode von ſelbſt das richtige
tun. Ich habe mir Mühe gegeben, das ganʒe intuitiv ʒu deſignen. Am
Ende von Worten wird das ſ ʒum s, in der Mitte bleibt es ein ſ.

Wenn keine Überſetʒung des s gewünſcht wird, kann man ein `\` hinterher tippen:

    s \ -> s
	
Da am Ende von Worten das runde s verwendet wird, und CamelCaſe keine korrekte Rechtſchreibung iſt, kann man großbuchſtaben tippen, um eine neue Silbe anʒudeuten.

    Hausboot  -> Hauſboot (falſch)
	HausBoot  -> Hausboot (richtig)
	
	Haus\Boot -> HausBoot (falls man das unbedingt möchte)
	
Doppel-S kommt an Ende eines Wortes nach den alten Regeln nicht vor,
daher wird es dort automatiſch durch ein ß erſetʒt. Wenn das Wort
weitergeht, dann wird ſſ draus. Soll in der Mitte eines Wortes ß
ſtehen, wie ʒB in "Maße", dann erreicht man das durch die Kombination
sz:

    Das Mass  -> Das Maß
	Die Masse -> Die Maſſe (phyſikaliſche Größe)
	Die Masze -> Die Maße  (gibts auf der Wieſn)
	
### Ausnahmen

    fasZinierend -> faſʒinierend
	ausSieben    -> ausſieben

## Liʒenʒ:

GPL Verſion 3
