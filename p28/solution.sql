select product_name, brand_name, price, rating
from innerwear_amazon_com
where (product_name, mrp) in
(
    (
    select product_name, mrp
    from innerwear_amazon_com
    )
except
(    (
    select product_name, mrp
    from innerwear_topshop_com
    )
union
    (select product_name, mrp
    from innerwear_macys_com)))
