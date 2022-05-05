# Import your libraries
import pandas as pd

# Start writing code
d = players_logins

d.sort_values(by="login_date", ascending=False).drop_duplicates(subset="player_id")
