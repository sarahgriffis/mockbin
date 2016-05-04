'use strict'

var debug = require('debug-log')('mockbin')
var util = require('util')

module.exports = function (req, res, next) {
//clear_log: function (req, res, next) {
    this.client.del('log:' + req.params.uuid, function (err, history) {
      if (err) {
        debug(err)

        throw err
      }

      res.view = 'redirect'
      res.status(200).location(util.format('/bin/%s', req.params.uuid))
      next()
  })
}
