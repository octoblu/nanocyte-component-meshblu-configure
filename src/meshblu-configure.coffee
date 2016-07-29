_           = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class MeshbluConfigure extends ReturnValue
  onEnvelope: (envelope) =>
    {config,message} = envelope
    {uuid} = config

    _.defaults device: uuid, update: message

module.exports = MeshbluConfigure
