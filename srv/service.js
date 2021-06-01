const cds = require("@sap/cds");

module.exports = function () {
  this.on("setFavorite", function (req) {
    const catId = req.data.catId;

    cds
      .update("ProductCategory")
      .set({ favorite: "" })
      .then(() => {
        cds
          .update("ProductCategory")
          .where({ ID: catId })
          .set({ favorite: "X" })
          .then();
      });
  });
};
