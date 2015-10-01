ReturnValue = require 'nanocyte-component-return-value'

class MapMessageToKey extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = MapMessageToKey
