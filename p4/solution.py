# Import your libraries
import pandas as pd

# Start writing code
d = fb_friend_requests

d2 = pd.merge(
    d[d["action"] == "sent"],
    d[d["action"] == "accepted"],
    how="left",
    left_on="user_id_sender",
    right_on="user_id_sender",
)

# the x df will count total sent and the y df will count zero for missing rows
# thus counting total accepted. Now we just need to divide one by the other
counted = d2.groupby(["date_x"]).count()

counted["acceptance_rate"] = counted["action_y"] / counted["action_x"]

# reset index after a groupby function
return counted.reset_index()[["date_x", "acceptance_rate"]]
