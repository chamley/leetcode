# Import your libraries
import pandas as pd

# Start writing code
at = amazon_transactions

df = pd.merge(at, at, left_on="user_id", right_on="user_id", how="inner")

condition1 = df["id_x"] != df["id_y"]
f = df["created_at_y"] - df["created_at_x"]
condition2 = abs(f) <= pd.Timedelta(days=7)


filtered = df[condition1 & condition2]["user_id"].drop_duplicates().sort_values()
