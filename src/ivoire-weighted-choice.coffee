# Based roughly on https://github.com/forana/darmok-js/blob/development/src/util.js
Ivoire = require('ivoire')
_ = require('lodash')

Ivoire.prototype.weighted_choice = (options, weights) ->
  @panic_if options.length != weights.length, "Options and weights must be the same length"
  @panic_if options.length < 1, "Must provide at least one option"

  weight_sum = _.reduce weights, ((sum, weight) ->  weight + sum ), 0

  @panic_if weight_sum < 0, "Weights must sum to zero or above (got #{JSON.stringify(weights)})"

  random = @random()
  rolling_total = 0;
  for option, i in options
    rolling_total += weights[i] / weight_sum
    if rolling_total >= random
      return options[i]

  # shouldn't be possible, but let's throw an error anyway.
  throw new Error("weightedChoice() returned nothing")


module.exports = Ivoire
