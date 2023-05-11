
The Gender Balance Assessment Tool (GBAT): A Web-Based Tool for Estimating Gender Balance in Syllabi and Bibliographies

Inferring Gender from Names on the Web:A Comparative Evaluation of Gender Detection Methods

Damegender: Writing and Comparing Gender Detection Tools

Nationality Classification Using Name Embeddings

### Implementations

[demographicx](https://github.com/sciosci/demographicx)

[Name-NationalOrigin-Classifier](https://github.com/avikj/Name-NationalOrigin-Classifier)

[ethnicity-tensorflow](https://github.com/jhyuklee/ethnicity-tensorflow)

[nomine](https://github.com/cdcrabtree/nomine)

[Gender-and-Ethnicity-Classifier-From-Name](https://github.com/agrawalparth08/Gender-and-Ethnicity-Classifier-From-Name)

[ethnicolr](https://github.com/appeler/ethnicolr)

### Label Data

* Security Administration's baby names data
* IPUMS Census data
* Sexmachine
* Damegender

### Features

* Nationality from Institutions metadata.
* Wikipedia pages and metadata. (API)
* Twitter account description, profile image, etc (noisy).
* Syllabus text (he/his/him, she/hers/her, they/their/them)
* Ethnicity/Nationality from Last Name

### Cleaning

* Drop initial (W. W. Rostow, V. O. Key)
* Drop uncommon names.
* Drop non-name term (Power, True)
* Drop title words. (Forthcoming, Global, Interact)
* Drop stop words (I, and)

---


Rate my professor

https://github.com/tisuela/ratemyprof-api

https://github.com/topics/ratemyprofessors


---


#### Damegender: Towards an International and Free Dataset about Name, Gender and Frequency

* https://easychair.org/publications/preprint\_open/zTxh

The dataset is covering more than 20 countries in the occidental world reaching a big number of names and accuracies around (0.9%)

Nowadays, many people are using APIs such as Genderapi, Genderize, Namsor, or NameApi. Another people is using solutions based on Wikipedia, or Free Software solutions (NLTK\[LB02], R Gender, Gender Detector, Gender Computer3, ...)

BHKZ11, MLA+11 - Twitter

WGJS15 - Wikipedia

In \[MS16] presents how to infer gender in Twitter. They are using namdict and us census as datasets. The features are ’number of consonants’, ’number of vowels’, ’number of syllables’, ’number of bouba consonants’, ’number of bouba vowels’, ’number of kiki consonants’, ’number of kiki vowels’. The classification model is using SVM.

\[AWM+09] was presented a system to classify name and ethnicity from Open Sources using Machine Learning extracting a name list from Wikipedia.

ISO/IEC 5218 proposes a norm about coding gender: “0 as not know”, “1 as male”, “2 as female” and “9 as not applicable”

The RFC 6350 (vCard) 5 where the section Gender has these categories: “m as male”, “f as female”, “o as other”, “n as not applicable” and “u as undefined”.

> Okay reading. Grammar mistakes. Mentions lots of datasets, but no pointers.

#### Damegender: Writing and Comparing Gender Detection Tools

* https://ceur-ws.org/Vol-2754/paper3.pdf

Before damegender, only Gender guesser2 offered a free software solution in this field \[Kra06], and the project (i) has not been active for more than three years now, (ii) lies technologically well behind other solutions. The best contribution of Gender guesser is the dataset containing 48,528 names with a good classification by countries

For instance, the Natural Language Tool Kit offers 8,000 labeled English names classified as male or female. An other example is Gender Guesser, which provides a good dataset for international names with different categories to define the probability. Although these datasets can be incorporated into damegender, the problem with them is that, in general, we have observed that they do not have the quality of National Statistics Institutes.

Santamarıa and Mihaljevic \[SM18] explain different ways to determine gender from a name; they offer 7,000 names that can serve as the golden set to evaluate them.

The best results are given by Support Vector Machines and Random Forest – with those algorithms damegender achieves values that are close to more mature, proprietary solutions.

#### Comparison and benchmark of name-to-gender inference services

* https://peerj.com/articles/cs-156/ -\[SM18]

We compare and benchmark five name-to-gender inference services by applying them to the classification of a test data set consisting of 7,076 manually labeled names.

Another even simpler possibility to penalize non-classifications without giving them the same importance as to misclassifications is to minimize a metric such as errorCodedWithoutNA, which ignores the class ‘unknown’, while enforcing a constraint on naCoded, i.e., the rate of non-classifications

For gender-guesser (not displayed) we have created one such parameter by setting it to 0.75 for responses ‘mostly\_female’ or ‘mostly\_male’ and 1 for ‘female’ or ‘male’.

In each of the 10 runs of 10-fold cross-validation, Gender API produces the lowest error, NamSor the second lowest. In this scenario, it is possible to achieve an average inaccuracy rate under 9% over the whole data set while keeping the misclassification error under 5% with Gender API. NamSor and genderize.io achieve second place with average inaccuracy rates just under 15%.

Python package gender-guesser achieves the lowest misclassification rate without parameter tuning for the entire data set, introducing also the smallest gender bias. At the same time it shows poor performance in terms of non-classifications, which is understandable given its comparatively small data base.

Evaluation of name-based gender inference methods: https://github.com/GenderGapSTEM-PublicationAnalysis/name-gender-inference

---

#### Nationality Classification Using Name Embeddings

* https://arxiv.org/pdf/1708.07903.pdf

We exploit the phenomena of homophily in communication pat- terns to learn name embeddings, a new representation that encodes gender, ethnicity, and nationality which is readily applicable to building classiers and other systems. rough our analysis of 57M contact lists from a major Internet company, we are able to design a ne-grained nationality classier covering 39 groups representing over 90% of the world population. In an evaluation against other published systems over 13 common classes, our F1 score (0.795) is substantial beer than our closest competitor Ethnea (0.580)

We collected 74M labeled names come from 118 different countries, containing over 90% of world’s population.

example, a name wrien in “Hangul”, “HKÜ” . It is very likely to be a Korean name because most names in “Hangul” are Korean names. Therefore, for a name vi ∈ Vch , we use the average of names in same characters to estimate its likelihood.

Figure 5: Treemap of nationality taxonomy. Nested blocks within a larger block are its child nodes. 118 countries/regions, covering over 90% world population, are assigned to 39 leaf nationalities. e taxonomy is constructed based on Cultural, Ethnic and Linguist (CEL) similarities.

We collected 68M such pairs from the Email source and 6M pairs from Twitter, totaling 74M labeled names from 118 major countries (Fig. 5). ese countries take up over 90% of world population. To remove noise, we lter out names where both parts appear only once. 91% names remain. Note that we are interested in nationalities, thus immigration countries, including U.S., Canada and Australia, are not included in our dataset.

Two datasets are available for comparison: (i) the labeled names from Wikipedia (150K in total, the same dataset used to train HMM and EthnicSeer); (ii) we divide Email/Twier data into training and testing datasets (60% vs. 40%). en we sample 2% from the test data for use because it is not ecient to get classication results of baselines from their Web APIs (380K).
