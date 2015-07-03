var chai = require('chai');
var Ivoire = require('ivoire-weighted-choice');

chai.should();

describe('ivoire-weighted-choice', function () {
  var seed = 42
  var i;

  beforeEach(function(){
    i = new Ivoire({seed: seed});
  });

  describe('#weighted_choice()', function () {
    it('should make a weighted choice', function () {
      i.weighted_choice(['foo', 'bar'], [10, 1]).should.equal('foo')
    });
  });
});
