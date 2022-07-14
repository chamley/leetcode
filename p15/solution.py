# Import your libraries
import pandas as pd

# Start writing code
d = yelp_reviews

d[d["business_name"] == "Lo-Lo's Chicken & Waffles"].groupby(
    ["stars"]
).size().reset_index(name="counts")
