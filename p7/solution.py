# Import your libraries
import pandas as pd

# Start writing code
d = postmates_orders

# d.head()


x = d["customer_id"].nunique()
y = d["amount"].mean()

pd.DataFrame({"index": ["customer_id", "amount"], "0": [x, y]})
