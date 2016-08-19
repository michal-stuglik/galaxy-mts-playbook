# galaxy-mts-playbook

galaxy-mts-playbook: install, setup

modes:
- lite (default www, sqlite db, debug=True)
- half (default www, postgres db, debug=False)
- production (nginx www, postgres db, debug=False) 



- start/stop/restart galaxy service
```
./galaxy_manage.sh --stop/stop/restart
```


- firewall, ports, host ip
-- TODO