# quail-classic-german
Emacs Quail input method for classic german.

Deutſch: [README.de.md](README.de.md "Deutſche Verſion")

## What is this?
This is an input method to uſe with the claſſic german orthography
rules, before they took the ß from us (they didn't really, but they
limited it's uſe.)

It utiliʒes the long s (ſ) and a nicer codepoint for ʒ, ſo that it
becomes obvious why ß is called ſ-ʒ! (Es-Zett)

Looking at the wikipedia page for the long ſ, it ſeems, this package
is not perfectly ſuited to be uſed for engliſh.

## how to uſe it
put the `classic-german.el` in your `~/.emacs.d/` directory, and load
it in your `~/.emacs` with `(load "~/.emacs.d/classic-german.el)`.

In Emacs, ſtart using the input method with `C-u C-\ classic-german-z`
or `C-u C-\ classic-german`.

## how it gets translated
Uſually, you can uſe the uſual transliterations:  

### Umlauts
work as follows (the ſame as in the input-method `german-postfix`)

- `ae` is `ä`
- `AE` is `Ä`
- If you don't want a translation, you can uſe `AEE` for `AE` and
  `aee` for `ae`. (the other letters respectively)

### The ſ-Stuff
Uſually, it ſhould do the right thing by itſelf. At the end of a word,
an ſ becomes an s. In the middle or at a beginning, it becomes a ſ.

If you want the s untranslated you can append a backſlaſh `\` to it.

    s \ -> s
	
As s is s at the end of words, and it's not correct orthography to uſe
camel-caſe, anyways, you can _type_ camel-caſe: The german word
Hausboot can be typed `HausBoot`.

In German, double-S at the end of words didn't exiſt in thoſe days,
and that's why it's automatically tranſlated into ß if the word
doeſn't continue. If the word _does_ continue, it's translated into
ſſ. If you want an ß inſtead, you can juſt type `sz`.


## Licence
GPL Verſion 3
