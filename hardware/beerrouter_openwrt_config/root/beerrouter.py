#!/usr/bin/env python
# -*- coding: utf-8 -*-
# (c) xro@htu.tugraz.at

import psycopg
psql_secret_pwd=
pgcon = psycopg.connect(host="paratest.htu.tugraz.at", user="beer_router", password=psql_secret_pwd,database="beer_counter")

def openBeer():
	#try open higher dev id's as well, in case device got disconnected
	# and then reconnected bevor the linux kernel garbage collected the old device number
	for devid in range(0,10):
		try:
			return open("/dev/ttyACM%d" % devid ,"r")
		except:
			pass

def insertValuesIntoDB(intlst, first_pump_id=1):
	global pgcon
	pgc = pgcon.cursor()
	pmp=first_pump_id
	for cnt in intlst:
		if cnt > 0:
			pgc.execute("insert into t_count(time,count,pump_id) values(now(),%d,%d)" % (cnt,pmp))
		pmp+=1
	pgc.close()
	pgcon.commit()


def parseUCLine(line):
	return map(int,filter(lambda x: all(map(lambda c: c in "0123456789", x)),line.split(" ")))

beerdev = None
while True:
	if beerdev is None:
		beerdev = openBeer()
	try:
		line=beerdev.readline()
	except IOError:
		beerdev = None
		continue
	#basic filtering, actually not necessary:
	if len(line) < 16 or line.startswith("0 0 0 0 0 0 0 0"):
		continue
	insertValuesIntoDB(parseUCLine(line))


