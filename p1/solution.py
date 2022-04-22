# Import your libraries
import pandas as pd


df = pd.merge(
    db_employee, db_dept, how="left", left_on=["department_id"], right_on=["id"]
)

x = df[df["department"] == "engineering"]["salary"].max()
y = df[df["department"] == "marketing"]["salary"].max()
print(abs(x - y))
