# Import your libraries
import pandas as pd

# Start writing code
d = fb_searches

con1 = d["date"] >= "2021-04-01"
con2 = d["date"] < "2021-07-01"

d[con1 & con2].shape[0]
