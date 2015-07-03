ivoire-weighted-choice
======================

Weighted choices for the [Ivoire](https://www.npmjs.com/package/ivoire) random
number generator framework.


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

```
var Ivoire = require('ivoire-weighted-choice');
```

Or you can require it alongside `ivoire`:

```
var Ivoire = require('ivoire');
require('ivoire-weighted-choice');
```

Either way, instantiate and start making weighted choices!

```
var i = new Ivoire();
i.weighted_choice(['foo', 'bar'], [10, 1]);
```


Reference
---------

`ivoire-weighted-choice` adds some methods to the `Ivoire` prototype object, making them
available on all `Ivoire` instances.

### #weighted_choice(options, weights)

Randomly choose an option, choosing more heavily-weighted options more often
than lightly-weighted options.

```
var i = new require('ivoire-weighted-choice');

// 'foo' come up 10 times for every 1 that 'bar' comes up
i.weighted_choice(['foo', 'bar'], [10, 1]);
```


Acknowledgements
----------------

Weighted choice algorithm based on the implementation in
[Darmok](https://github.com/forana/darmok-js/blob/development/src/util.js).
