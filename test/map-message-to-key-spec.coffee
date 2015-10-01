ReturnValue = require 'nanocyte-component-return-value'
MapMessageToKey = require '../src/map-message-to-key'

describe 'MapMessageToKey', ->
  beforeEach ->
    @sut = new MapMessageToKey

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
