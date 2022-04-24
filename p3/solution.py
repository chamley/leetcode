# Import your libraries
import pandas as pd

# Start writing code
eu = fb_eu_energy
asia = fb_asia_energy
na = fb_na_energy

d = pd.concat([eu, asia, na])
summed = d.groupby(["date"]).sum()
maximum = summed["consumption"].max()

answer = summed[summed["consumption"] == maximum]
# return answer.reset_index().head() #had to reset index for solution to go through
