# Based roughly on https://github.com/forana/darmok-js/blob/development/src/util.js
"use strict"
Ivoire = require('ivoire')
_ = require('lodash')

Ivoire.prototype.weighted_choice = (items, weights) ->
  @panic_if items.length != weights.length, "Items and weights must be the same length"
  @panic_if items.length < 1, "Must provide at least one option"

  weight_sum = _.reduce weights, ((sum, weight) ->  weight + sum ), 0

  @panic_if weight_sum < 0, "Weights must sum to zero or above (got #{JSON.stringify(weights)})"

  random = @random()
  rolling_total = 0;
  for option, i in items
    rolling_total += weights[i] / weight_sum
    if rolling_total >= random
      return items[i]

  # shouldn't be possible, but let's throw an error anyway.
  throw new Error("weightedChoice() returned nothing")


module.exports = Ivoire
