import psycopg2
import psycopg2.extras
import json
import decimal
import time
import datetime
import calendar
OUTFILE = '/var/www/data/history.json'


LAST_HOUR = \
'''
SELECT start_time, coalesce(SUM(count)/2, 0.0) as FLOAT 
FROM  generate_series(NOW()- '60 minute'::INTERVAL, NOW(), '0.5 minute'::INTERVAL) AS start_time
LEFT OUTER JOIN t_count ON t_count.time >= start_time-'0.5 minute'::INTERVAL AND t_count.time < (start_time+'0.5 minute'::INTERVAL)
GROUP BY(start_time) ORDER BY start_time;
'''

LAST_DAY = \
'''
SELECT start_time, coalesce(SUM(count)/2, 0.0) as FLOAT
FROM  generate_series(NOW()- '10 hour'::INTERVAL, NOW(), '0.5 minute'::INTERVAL) AS start_time
LEFT OUTER JOIN t_count ON t_count.time >= start_time-'0.5 minute'::INTERVAL AND t_count.time < (start_time+'0.5 minute'::INTERVAL)
GROUP BY(start_time) ORDER BY start_time;
'''




class DecimalEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
	elif isinstance(o, datetime.datetime):
            return 1000*calendar.timegm(o.timetuple())
        return super(DecimalEncoder, self).default(o)

def fetch_small_data():
	result = {}

	c = psycopg2.connect(host='127.0.0.1', user='postgres', database='beer_counter')
	cur = c.cursor()
	cur.execute(LAST_HOUR)
	result['last_hour'] = cur.fetchall()

	cur.execute(LAST_DAY)
	result["10h"] = cur.fetchall()


	f_out = open(OUTFILE, 'w')
	f_out.write(json.dumps(result, cls=DecimalEncoder))
	f_out.close()

if __name__ == '__main__':
	for i in range(10):
		fetch_small_data()
		time.sleep(6)
