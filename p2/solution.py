# Import your libraries
import pandas as pd


d = pd.merge(
    customers, orders, left_on=customers["id"], right_on=orders["cust_id"], how="left"
)

c = ["first_name", "last_name", "city", "order_details"]

solution = pd.DataFrame(d, columns=c)
solution.sort_values(["first_name", "order_details"], ascending=["True", "True"])

return solution
