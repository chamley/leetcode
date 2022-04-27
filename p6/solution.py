d = ms_employee_salary

d.sort_values(by="salary", ascending=False, inplace=True)
d.drop_duplicates(subset=["id"], inplace=True)
d.sort_values(by="id", inplace=True)
d
