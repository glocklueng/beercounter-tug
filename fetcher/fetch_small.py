import psycopg2
import psycopg2.extras
import json
import decimal
import time

OUTFILE = '/var/www/data/small.json'

class DecimalEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
        return super(DecimalEncoder, self).default(o)

def fetch_small_data():
	result = {}

	c = psycopg2.connect(host='127.0.0.1', user='postgres', database='beer_counter')
	cur = c.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
	cur.execute("SELECT name, SUM(count) AS value FROM t_count, t_pump WHERE t_count.pump_id = t_pump.id GROUP BY name")
	result['pumps'] = cur.fetchall()

	cur.execute("SELECT SUM(count) AS total FROM t_count")
	result["total"] = cur.fetchone()["total"]

	cur.execute("SELECT AVG(count) AS bpm FROM t_count WHERE time > NOW() - '20 minute'::INTERVAL")
	result["bpm"] = cur.fetchone()["bpm"]

	f_out = open(OUTFILE, 'w')
	f_out.write(json.dumps(result, cls=DecimalEncoder))
	f_out.close()

if __name__ == '__main__':
	for i in range(120):
		fetch_small_data()
		time.sleep(0.5)
