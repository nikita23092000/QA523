--SELECT * FROM Students;
--SELECT id,(firstname||' '||lastname) as ФИО FROM Students;
--SELECT id,(firstname||' '||lastname) as ФИО,
 --CAST(strftime('%Y.%m%d','now')-strftime('%Y.%m%d', birthdate) as int) as Возраст
 --FROM Students;
 SELECT id,(firstname||' '||lastname) as ФИО,
 CAST(strftime('%Y.%m%d','now')-strftime('%Y.%m%d', birthdate) as int) as Возраст
 FROM Students WHERE Возраст>27;
