var chai = require('chai');
var Ivoire = require('./lib/ivoire-weighted-choice');

chai.should();

describe('ivoire-weighted-choice', function () {
  var seed = 42
  var ivoire;

  beforeEach(function(){
    ivoire = new Ivoire({seed: seed});
  });

  describe('#weighted_choice()', function () {
    it('should make a weighted choice', function () {
      ivoire.weighted_choice(['foo', 'bar'], [10, 1]).should.equal('foo')
    });
  });
});
