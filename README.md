# Latex

*The Official UTV Computer Science LateX templates*


This is the collection of official University of Rome Tor Vergata (UTV) Computer Science Latex templates.
The repository is maintained by the UTV ACM Student Chapter.

## How build
Build the main with PDFLatex compiler

```shell
$> pdflatex synctex=1 interaction=nonstopmode main.tex
```

Build the bibliograhy with Bibtex

```shell
$> bibtex main.aux
```

Then, rebuild the main with PDFLatex compiler

```shell
$> pdflatex synctex=1 interaction=nonstopmode main.tex
```

## ACM
The *Small Standard Format* (acm-small) is used for the following journals and transactions:
CIE, CSUR, JACM, JDIQ, JEA, JETC, TAAS, TACCESS, TACO, TALG, TALLIP (formerly TALIP), TCPS, TEAC, TECS, TIIS, TIST, TKDD, TMIS, TOCE, TOCHI, TOCL, TOCS, TOCT, TODAES, TODS, TOIS, TOIT, TOMACS, TOMM (formerly TOMCCAP), TOMPECS, TOMS, TOPC, TOPLAS, TOPS (formerly TISSEC), TOS, TOSEM, TOSN, TRETS, TSAS, TSC, TSLP, TWEB.

The *Large Format Single Column* (acm-large) is used for the following journal and transactions:
JOCCH, TAP.

The *Large Format Double Column* (acm-tog) is used for:
TOG


## IEEE
The *IEEE Transaction Standard Template* (ieee-tran) should be used for all Transactions, except for the IEEE Transactions on Magnetics, IEEE Magnetics Letters, IEEE Photonics Journal, and IEEE Transactions on Dielectrics and Electrical Insulation.

The *IEEE Template for Computer Society* (ieee-cs) is only meant to aid you in preparing a draft of your manuscript for peer review. They do not and will not reflect the final format for publication. The published paper will appear as formatted by IEEE Computer Society publication staff.


## Authors
Giacomo Marciani, [gmarciani@acm.org](mailto:gmarciani@acm.org)


## References
*The Latex Project*, [latex-project.org](http://www.latex-project.org)


## Contributing
If you want to contribute, please contact [main@acm.uniroma2.it](mailto:main@acm.uniroma2.it)


## License
The project is released under the [MIT License](https://opensource.org/licenses/MIT).
