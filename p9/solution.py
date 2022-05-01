# Import your libraries
import pandas as pd


# Start writing code
d = twitch_sessions
c1 = set(d[d["session_type"] == "streamer"].user_id)
c2 = set(d[d["session_type"] == "viewer"].user_id)

return pd.DataFrame({"user_id": pd.Series(list(c1 & c2))})
