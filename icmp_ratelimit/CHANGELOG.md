## 2020/12/21 10:15 EST

- FIXED: Switched to modifying `icmp_msgs_per_sec` per ISC's recommendation. IPv6 doesn't have equivalent parameter.

## 2020/11/13 20:30 EST
- FIXED: possibility of multiple instances by using lockfile. using cron to check status e.g. if not running, start

## 2020/11/13 12:00 EST
- start via cron. somewhat inaccurate timing
