
a_s = d[(d['date']<'2021-09-01') & (d['date']>='2021-08-01')]


x = a_s.groupby('user_id')['search_id'].count().reset_index()
len(x[x['search_id']>5])
