# Ngiyaqonda Multilingual Grammars for Literacy and Language Learning

### Contributors
Laurette Marais  
Laurette Pretorius  
Lionel Posthumus  
Roné Wierenga  
Ilana Wilken  

### Funding
The Ngiyaqonda project was funded by the South African [Department of Sport, Arts and Culture](https://www.dsac.gov.za/Department%20of%20Sport%2C%20Arts%20and%20Culture%20%28DSAC%29%20National%20Language%20Service), and incorporates resources developed with funding from the [South African Centre for Digital Language Resources](https://sadilar.org/) (SADiLaR).

### Overview
The Grammatica Framework (GF) grammar presented here were developed as part of the _Ngiyaqonda_
project, funded by the South African Department of Sport, Arts and Culture. The grammars are multilingual
and have been used to pilot a speech-enabled Android mobile application at schools in 
South Africa.

The **Ngifuna Isokisis Lami** served as the stanrting point in developing appropriately levelled grammars for the foundation phase. An isiZulu  graded reader was selected from the VulaBula project and its sentences analysed for syntactic constructions. Then, a computational grammar, based on the story's vocabulary and plot, was developed that included those constructions. The vocabulary was expanded to include similar words in addition to those original to the story, such as a larger selection of colours.

The grammar was developed to generate semantically equivalent sentences in four languages, namely isiZulu, English, Afrikaans and Sepedi (in order of development).

The **My School Bag** grammar is an example of a grammar that generates semantically equivalent translations in all four languages, but it's vocabulary and syntatic constructions are based on the words and phrases found in the Picture Dictionary for Foundation Phase series developed by the National Lexicography Units of South Africa.

In the My School Bag grammar, the categories of the grammar are semantic in nature, similar to the Ngifuna Isokisis Lami grammar. However, during the pilots at isiZulu and Sepedi schools, teacher expressed the need of learners for more freedom in constructing sentences. To serve this end, the **Picture Dictionary Open** grammar was developed. The grammar is based purely on syntactic categories, allowing potentially nonsensical combinations, or so-called "silly sentences". Furthermore, due to the semantic unpredictability of the sentences, while the grammar is parallel in a syntactic sentence, as far as popssible between the different languages, the sentences generated in the four languages are guaranteed to be translation equivalents of each other. This is exacerbated by uneven ambiguities within the grammars, such as that where isiZulu and Sepedi employ locativised nouns, English and Afrikaans use a variety of prepositions. For example, "esikolweni" and The lexicon is significantly larger than the semantic grammars, with more than 700 nouns and verbs included, based on the Picture Dictionary series.

While the above grammars were developed with home language literacy in mind, in one pilot, the focus was on language learning. In this instance, content from a Sepedi Second Additional Language text was analysed to developed the **Sepedi SAL** grammar. The pilot was aimed at Afrikaans learners, and hence this grammar was developed as a parallel Sepedi-Afrikaans grammar.

### Compiling and running the grammars

GF is required to compile the grammars, and is available with installation instructions [here](https://www.grammaticalframework.org/download/index-3.11.html).

The _Ngiyaqonda_ grammars make use of so-called GF resource grammars, which are available here:

- [GF RGL (fork)](https://github.com/LauretteM/gf-rgl) (English, isiZulu and Sepedi)
- [Afrikaans Miniature RG](https://github.com/LauretteM/gf-afrikaans-mini) (Afrikaans)

Clone the above repositories into a folder `$GF_RGS` and update your environment variables:

```
export GF_LIB_PATH=$GF_LIB_PATH:$GF_RGS/gf-rgl/src/*:$GF_RGS/gf-rgl/src/southern_bantu/*:$GF_RGS/gf-rgl/src/zulu/*:$GF_RGS/gf-rgl/src/zulu/*:$GF_RGS/gf-rgl/src/northern_sotho/*:$GF_RGS/gf-afrikaans-mini
```

The following commands compile the grammars into the GF Portable Grammar Format (PGF).

```console
G_NAME=MySchoolBag      # NgifunaIsokisiLami / SepediSAL / PictureDictionaryOpen
G_NUM=01                # 02 / 03 / 04

gf -make $G_NAME/$G_NAME$G_NUM/$G_NAME$G_NUM*.gf

```

The grammars can now be used by any of the GF runtime systems, including via the python package `pgf`, installed via pip:

```console
pip install pgf
```

For documentation on using `pgf` to integrate PGF grammars into Python scripts, see the [GF web page](https://www.grammaticalframework.org/doc/runtime-api.html#python).


### License
Copyright 2025 Council for Scientific and Industrial Research (South Africa)

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.