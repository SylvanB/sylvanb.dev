+++
title = "Machine Learning Notes: Model Learning"
date = "2024-08-30T00:13:06+01:00"
draft = true
tags = ["ai","course","machine learning","math","notes",]
+++

## Objectives of Learning
- Learn the parameters to give the best performance for a given model
- Given data, find the best @b@ (parameter) for that data.

What does high-performance look like?

Empirical Risk Minimisation
Loss Function
  True Value
  True Outcome
Minimise Average Loss

## Finding Optimal Parameters
In order to find an optimal parameter, we use a loss function.

This takes the @\sigma(z_i))@ as our predicted probability, @y_i@ as our true label (from our labelled dataset).

@@
b* = arn\ \underset{b}{min}\ \dfrac{1}{N} \sum_{i}^{N} \ell(y_i, \sigma(z_i))
@@

We then view this outcome as a negative log-likelihood with:

@@
\ell(y_i, \sigma(z_i)) = -log\ p(y_i | \sigma(z_i))
@@

Or, the specific mathematical form:

@@
\ell(y, \sigma(z)) = -ylog\ \sigma(z) - (1 - y)\ log(1 - \sigma(z))
@@

This predicts the orobability of one.

## The Next Step

So now we have the ability to make a network, we understand the data we can use to train these models and how to
evaluate a possible parameter for the model - how to we determine effectively what the parameters are and evaluate the network?

## The Damgger of Overfitting
As we increase the complexity of the model, we start to introduce more parameters to the model.

The relationship defined by the model might be too complex for realistic data

Models and analysis are not generalised (?)

## Standard Validation Strategy

Use training set to learn initial parameters, then get new real-world data to compare against. However, this is expensive, and we
can use the existing data to predict how it will perform in the real-world.

This is achieved by splitting the original data into three groups (Training, Validation, and Testing).

The Test set will be created prior to any analysis, and will never be used to learn or fit any parameters, this will be used
to evaluate the performance of the training set, as it act analogously to "new" unseen data - it should also only be used once,
to avoid bias.

The validation set can be used multiple times, to compare approaches to the training. It wont be used to learn parameters, but it
cant be used to repeatedly estimate the performance of a model.

Once a model has been selected using the validation set - we can run it against the Test st to determine the real-world performance.

## Finally, how do we learn a network?
