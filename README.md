---
title: "Read me: Oxgyen project for OpenArabicPE"
author: Till Grallert
date: 2017-02-15 22:56:54 +0100
---

This repository contains an Oxygen project file (.xpr) to be used in the Oxygen XML Editor. This project provides a number of transformation scenarios for common operations in the "Open Arabic Periodical Editions" project, such as the generation of bibliographic metadata.

# Installation

In order to run the transformations, this repository and the OpenArabicPE repositories it depends on, such as [convert_tei-to-mods](https://github.com/OpenArabicPE/convert_tei-to-mods) and [convert_tei-to-bibtex](https://github.com/OpenArabicPE/convert_tei-to-bibtex), must be saved in the same folder:

- some-local-folder/
    + [oxygen-project](https://github.com/OpenArabicPE/oxygen-project)/
        * OpenArabicPE.xpr
        * LICENSE.md
        * README.md
    + [convert_tei-to-bibtex](https://github.com/OpenArabicPE/convert_tei-to-bibtex)/
        * xslt/
        * LICENSE.md
        * ...
    + [convert_tei-to-mods](https://github.com/OpenArabicPE/convert_tei-to-mods)/
        * xslt/
        * ...
    + [tools](https://github.com/OpenArabicPE/tools)/
    + ...

