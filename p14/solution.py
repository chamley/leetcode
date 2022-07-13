# Import your libraries
import pandas as pd

# Start writing code
d = sat_scores

d.head()

d["flag"] = d["school"].apply(lambda x: x[-2:] != "HS")
d[d["flag"]]
