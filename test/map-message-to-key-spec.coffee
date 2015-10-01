ReturnValue = require 'nanocyte-component-return-value'
MapMessageToKey = require '../src/map-message-to-key'

describe 'MapMessageToKey', ->
  beforeEach ->
    @sut = new MapMessageToKey

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with a key of foo', ->
      it 'should map the message to foo', ->
        envelope =
          message: 'octopus neighbours'
          config:
            key: 'foo'

        expect(@sut.onEnvelope envelope).to.deep.equal foo: 'octopus neighbours'
