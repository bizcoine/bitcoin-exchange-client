proxyquire = require('proxyquireify')(require)

stubs = {
}

Helpers = proxyquire('../src/helpers', stubs)

describe "Helpers", ->
  describe "isString()", ->
    it "should recognise a string", ->
      expect(Helpers.isString('hello')).toEqual(true)

  describe "toCents()", ->
    it "should default to zero", ->
      expect(Helpers.toCents()).toEqual(0)

  describe "toSatoshi()", ->
    it "should default to zero", ->
      expect(Helpers.toSatoshi()).toEqual(0)
