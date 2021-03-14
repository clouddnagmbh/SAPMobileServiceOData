using {
    Currency,
    managed,
    sap
} from '@sap/cds/common';

namespace at.clouddna.sappress;

entity ProductCategory : managed {
    key ID             : UUID;
        title          : localized String(50);
        description    : localized String(200);
        parentCategory : Association to ProductCategory;
        products       : Association to many Product
                             on products.category = $self;
}

entity Product : managed {
    key ID          : UUID;
        name        : localized String(50);
        description : localized String(200);
        price       : Decimal(9, 2);
        currency    : Currency;
        category    : Association to ProductCategory;
}
