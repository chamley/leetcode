# Import your libraries
import pandas as pd

# Start writing code
d = billboard_top_100_year_end

d_2010 = d[(d["year_rank"] < 11) & (d["year"] == 2010)]

d_2010.drop_duplicates(subset="year_rank").sort_values(by="year_rank").head(n=10)
