# Import your libraries
import pandas as pd

# Start writing code
d = hotel_reviews
mymax = (
    d.drop_duplicates(subset="hotel_name")
    .sort_values(by=["average_score"])[:10]["average_score"]
    .max()
)

d[d["average_score"] <= mymax][["hotel_name", "average_score"]].sort_values(
    ["average_score"]
).drop_duplicates(subset="hotel_name")
