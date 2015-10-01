/**
 * SpotController
 *
 * @description :: Server-side logic for managing spots
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  findAll: function (req, res) {
    Spot.find({}, function (err, spots) {
      sails.log(spots);
      res.json(spots);
    })
  }
};
