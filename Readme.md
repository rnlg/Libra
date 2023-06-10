# Libra package

***Libra*** is a Mathematica package for transforming first-order linear differential systems. Its main purpose is the reduction to ε-form. 
It can also be used for the reduction to Fuchsian form and as a convenient tool for applying linear transformations of functions. It can handle univariate, as well as multivariate systems.

Please, check [Discussions](https://github.com/rnlg/Libra/discussions) for announcements and feedback.

## Author
Roman N. Lee, Budker Institute of Nuclear Physics, Novosibirsk.

## License

***Libra*** is distributed under the terms of GNU GPLv3.

## Documentation

***Libra*** package is described in [CPC 267 (2021) 108058](https://doi.org/10.1016/j.cpc.2021.108058).

## Installation

1. Copy the content of the `Source/` directory to the desired location, say `home/of/Libra`
2. Change to this location with `cd home/of/Libra`
3. Run `math -script makeShortcut.m`

Result: 
You can load Libra package from Mathematica session with ``<<Libra` ``



##### Using Fermat CAS

Libra can benefit from using Robert H. Lewis' [Fermat CAS](http://home.bway.net/lewis/). The interface package ***Fermatica*** can be downloaded from [Fermatica repository](https://bitbucket.org/rnlee/fermatica/src/master/). When ***Fermatica*** is installed and working, it can be loaded along with ***LiteRed2***  via `` <<Fermatica` `` and used via  option `UseFermat->True` of several Libra procedures.
