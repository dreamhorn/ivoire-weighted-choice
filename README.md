ivoire-weighted-choice
======================

Weighted choices for the [Ivoire](https://www.npmjs.com/package/ivoire) random
number generator framework.

- [Installing](#installing)
- [Getting Started](#getting-started)
- [Reference](#reference)
- [Acknowledgements](#acknowledgements)


Installing
----------

To install, use `npm`:

```
npm install ivoire-weighted-choice
```

Alternately, you can find the source [on Github](https://github.com/dreamhorn/ivoire-weighted-choice).


Getting Started
---------------

`ivoire-weighted-choice` extends the `ivoire` package. You can require it directly:

    var Ivoire = require('ivoire-weighted-choice');

Or you can require it alongside `ivoire`:

    var Ivoire = require('ivoire');
    require('ivoire-weighted-choice');

Either way, instantiate and start making weighted choices!

    var ivoire = new Ivoire();
    ivoire.weighted_choice(['foo', 'bar'], [10, 1]);


Reference
---------

`ivoire-weighted-choice` adds some methods to the `Ivoire` prototype object, making them
available on all `Ivoire` instances.

### #weighted_choice()

#### Syntax

    ivoire.weighted_choice(options, weights)

#### Usage

Randomly choose an item, choosing more heavily-weighted items more often
than lightly-weighted items.

    var ivoire = new require('ivoire-weighted-choice');

    // 'foo' will come up 10 times for every 1 time that 'bar' comes up
    ivoire.weighted_choice(['foo', 'bar'], [10, 1]);


Acknowledgements
----------------

Weighted choice algorithm based on the implementation in
[Darmok](https://github.com/forana/darmok-js/blob/development/src/util.js), and
modified to interoperate with the Ivoire framework.
