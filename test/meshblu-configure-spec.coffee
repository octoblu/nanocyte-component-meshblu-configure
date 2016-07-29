ReturnValue = require 'nanocyte-component-return-value'
MeshbluConfigure = require '../src/meshblu-configure'

describe 'MeshbluConfigure', ->
  beforeEach ->
    @sut = new MeshbluConfigure

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        @result = @sut.onEnvelope
          message:
            ip: '192.168.1.101'
          config:
            uuid: 'device-uuid'

      it 'should return the message', ->
        expect(@result).to.deep.equal
          device: 'device-uuid'
          update:
            ip: '192.168.1.101'

    describe 'when called with a much cooler envelope', ->
      beforeEach ->
        @result = @sut.onEnvelope
          message:
            party: 'at my house!'
          config:
            uuid: 'the-device-uuid'

      it 'should return the message', ->
        expect(@result).to.deep.equal
          device: 'the-device-uuid'
          update:
            party: 'at my house!'
