# Import your libraries
import pandas as pd

# Start writing code
d = facebook_products
b = (d["is_low_fat"] == "Y") & (d["is_recyclable"] == "Y")
answer = len(d[b]) / len(d)
answer * 100
