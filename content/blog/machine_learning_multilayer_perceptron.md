+++
title = "Machine Learning Notes: Multilayer Perceptron"
date = "2024-08-29T13:42:57+01:00"
mermaid = true

tags = ["ai","course","machine learning","math","notes",]
+++

This is a collection of notes I'm taking as I progress through the `Introduction to Machine Learning` course provided
by Duke University at [Coursera](https://coursera.org). This is a working document, it might eventually be split down
into multiple documents at some point, but this is largely to aid in my memorisation of key knowledge from this course
(and a chance to try out the cool Math and Diagram rendering in Hugo using Mermaid and Latex).

## Multilayer Perceptron Concepts
This is similar to Logistic Regression, but instead of doing it one time,

Instead of doing a single pass of the logistic regression, its done @K@ times, based on the
number of latent features, the @K@ dimensional feature vector then has another logistic regression applied
to end up with the final confidence value.

![Extended_Logistic_Regression](/images/Extended_Logistic_Regression.png)

### @K@ Filters
This projects data @x_i@ onto @K@ filters: @b_i,..., b_K@:

@@
\displaylines{z_i1 = b_{01} + x_i \odot b_1 \\\ z_{i2} = b_{02} + x_i \odot b_2 \\\ ... \\\ z_{iK} = b_{0K} + x_i \odot b_K}
@@

### Multilayer Perception Math Model
As seen previously, this projects data @x_i@ onto @K@ filters: @b_i,..., b_K@:
@@
\displaylines{z_i1 = b_{01} + x_i \odot b_1 \\\ z_{i2} = b_{02} + x_i \odot b_2 \\\ ... \\\ z_{iK} = b_{0K} + x_i \odot b_K}
@@

We then use the @z_{iK}@ vector, against the final template filter @c@ which is passed through another logistic regression,
and we end up with @\zeta_i@ the final value that gives the prediction.
@@
\zeta_i = c_0 + \sigma(z_i) \odot c
@@

See the below diagram for a visual representation of this alongside the math notation:

![Multilayer_Perceptron_Math](/images/Multilayer_Perceptron_Math.png)

## Deep Learning
This refers to a form of machine learning where a model has multiple layers of latent processes.

A Multilayer Perceptron (aka. Neural Network) is built by a sequence of repeated application of logistic regression.

### Why use this model?
The decision boundary, using just Logistic Regression is required to be a straight line. Using a Multilayer Perceptron you can allow
for more ssophisticated data classification.

## Example of Deep Learning: Document Analysis
Say you are given the task of determining if a Reader would like a given document.
One way you could classify this using Deep Learnig would be to could the occurances of a word in the document,
this would provide you @x_i@, the features for the document @i@.
As the prediction is binary, we know this can be achieved through Deep Learning.

We then take this data to trainn the model (learn the parameters for the model).
To train the model, we take @x@ data (occurance counts), and pair it with whether the user liked that document.
This can then be used to train the model and generate the parameters.

### Interpretation of Multilayer Perceptron
The below images deomnstrates the interpretation of the previously described model. And how that at its base, the templates (@b_K@),
might be a set of words associated with a given topic. And that from there, the second layer would be the combination of those topics.
And shows that given a user's preferences (the training set) you can start to build a model to determine a prediction for future articles
they might like.

![MultiLayer_Perceptron_Math_Application](/images/MultiLayer_Perceptron_Math_Application.png)

The interesting part of this is how you are able break down the prediction into different classification of data depending on the
topic/subtopics.

### Transfer Learning
This shows that depending on the data you are classifying, you can use initial layers (that classify the data itself) widely, and
only need to determine the parameters for individuals for the final prediction. Note that basic logistic regression doesnt have
this ability.

![Transfer Learning](/images/Transfer_Learning.png)


## Convolutional Neural Networks

![Hierarchical_Representation_of_Images](/images/Hierarchical_Representation_of_Images.png)
@@
\displaylines{M_n = f(I_n; \phi_1, ..., \phi_K) \\\ L_n = f(M_n; \psi_1, ...,\psi_K )}
@@
