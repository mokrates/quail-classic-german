;; author: Moritz Molle
;; License: GPLv3 or later
;; See: https://www.gnu.org/licenses/

;; These are modifications of the "german-postfix" quail-package,
;; defined in (find-library "quail/latin-post.el")

;; This package tries to be intuitive. It's a modification of the "german-postfix" input method, that I use, with:
;; s -> ſ and z -> ʒ.
;; you can cancel this substitutions with a follwing backslash: s \ -> s  , z \ -> z.
;; Also, S-substitution is inhibited if you upcase the next letter and on (most) punctuation. (report, if something is missing for you)

;; use classic-german-z for input-method with ʒ,
;; use classic-german   for input-method without ʒ.

(cl-macrolet ((mo-def-quail (name title additional-doc additional-substitutions)
		`(progn
		   (quail-define-package
		    ,name "German" ,title t
		    ,(format "Classic German (Deutsch) input method by mo

ae  -> ä
aee -> ae
oe  -> ö
oee -> oe
ue  -> ü (not after a/e/q)
uee -> ue
sz  -> ß
s   -> ſ
s \\ -> s
ss WORD-BOUNDARY -> ß 

Haus\\boot   -> Hausboot
HausBoot     -> Hausboot
Haus\\Boot   -> HausBoot

Das Mass  -> Das Maß
Die Masse -> Die Maſſe
Die Masze -> Die Maße

%s
" additional-doc)
		    nil t nil nil nil nil nil nil nil nil t)

		   (quail-define-rules
		    ("AE" ?Ä)
		    ("ae" ?ä)
		    ("OE" ?Ö)
		    ("oe" ?ö)
		    ("UE" ?Ü)
		    ("ue" ?ü)

		    ("ss'" ["ſſ'"])
		    ("s\\" ["s"])

		    ;; s lowercase letter (we need that, b/c seemingly we can't match on RET
		    ("sa" ["ſa"]) ("sb" ["ſb"]) ("sc" ["ſc"]) ("sd" ["ſd"]) ("se" ["ſe"]) ("sf" ["ſf"])
		    ("sg" ["ſg"]) ("sh" ["ſh"]) ("si" ["ſi"]) ("sj" ["ſj"]) ("sk" ["ſk"]) ("sl" ["ſl"])
		    ("sm" ["ſm"]) ("sn" ["ſn"]) ("so" ["ſo"]) ("sp" ["ſp"]) ("sq" ["ſq"]) ("sr" ["ſr"])
		    ;; ("ss" ["ſſ"])   ;; see below
		    ("st" ["ſt"]) ("su" ["ſu"]) ("sv" ["ſv"]) ("sw" ["ſw"]) ("sx" ["ſx"]) ("sy" ["ſy"])
		    ("sz" ?ß)       ;; !!!
		    ("sae" ["ſä"]) ("soe" ["ſö"]) ("sue" ["ſü"])
		    
		    ;; ss -> ß
		    ("ss" ?ß)
    		    ("ssa" ["ſſa"]) ("ssb" ["ſſb"]) ("ssc" ["ſſc"]) ("ssd" ["ſſd"]) ("sse" ["ſſe"]) ("ssf" ["ſſf"])
		    ("ssg" ["ſſg"]) ("ssh" ["ſſh"]) ("ssi" ["ſſi"]) ("ssj" ["ſſj"]) ("ssk" ["ſſk"]) ("ssl" ["ſſl"])
		    ("ssm" ["ſſm"]) ("ssn" ["ſſn"]) ("sso" ["ſſo"]) ("ssp" ["ſſp"]) ("ssq" ["ſſq"]) ("ssr" ["ſſr"])
		    ("sss" ["ßſ"])   ;; !!!
		    ("sst" ["ſſt"]) ("ssu" ["ſſu"]) ("ssv" ["ſſv"]) ("ssw" ["ſſw"]) ("ssx" ["ſſx"]) ("ssy" ["ſſy"])
		    ("ssae" ["ſſä"]) ("ssoe" ["ſſö"]) ("ssue" ["ſſü"])		    
		    
		    ;; s UPcase letter
		    ("sA" ["sa"]) ("sB" ["sb"]) ("sC" ["sc"]) ("sD" ["sd"]) ("sE" ["se"]) ("sF" ["sf"])
		    ("sG" ["sg"]) ("sH" ["sh"]) ("sI" ["si"]) ("sJ" ["sj"]) ("sK" ["sk"]) ("sL" ["sl"])
		    ("sM" ["sm"]) ("sN" ["sn"]) ("sO" ["so"]) ("sP" ["sp"]) ("sQ" ["sq"]) ("sR" ["sr"])
		    ("sS" ["sſ"])   ;; !!!
		    ("sT" ["st"]) ("sU" ["su"]) ("sV" ["sv"]) ("sW" ["sw"]) ("sX" ["sx"]) ("sY" ["sy"])
		    ;; sZ is missing. -> see below		    

		    ("sAe" ["sä"]) ("sOe" ["sö"]) ("sUe" ["sü"])
		    
		    ("AEE" ["AE"])
		    ("aee" ["ae"])
		    ("OEE" ["OE"])
		    ("oee" ["oe"])
		    ("UEE" ["UE"])
		    ("uee" ["ue"])
		    ("ge" ["ge"])
		    ("eue" ["eue"])
		    ("Eue" ["Eue"])
		    ("aue" ["aue"])
		    ("Aue" ["Aue"])
		    ("que" ["que"])
		    ("Que" ["Que"])
		    ,@additional-substitutions
		    ))))
  (mo-def-quail "classic-german-z"
		"KDEz<"
		"z -> ʒ
szz   -> ſʒ 
sZ    -> sʒ
z \\ -> z

Die AusZeichnung  ->  Die Ausʒeichnung
faszzinierend     ->  faſʒinierend"
		
		(("z" ?ʒ)
		 ("szz" ["ſʒ"])
		 ("sZ" ["sʒ"])
		 ("szz\\" ["ſz"])
		 ("z\\" ?z)
))
  
  (mo-def-quail "classic-german"
		"KDE<"
		"szz -> ſz
sZ -> sz

Die AusZeichnung   ->  Die Auszeichnung
faszzinierend      ->  faſzinierend"
		
		(("sZ" ["sz"])
		 ("szz" ["ſz"]))))
