ReturnValue = require 'nanocyte-component-return-value'

class MapMessageToKey extends ReturnValue
  onEnvelope: (envelope) =>
    "#{envelope.config.key}": envelope.message

module.exports = MapMessageToKey
