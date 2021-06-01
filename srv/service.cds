using {at.clouddna.sappress as clddna} from '../db/model';

service Service {
  entity ProductCategory as projection on clddna.ProductCategory;
  entity Product         as projection on clddna.Product;
  function setFavorite(catId : String) returns {};
}
