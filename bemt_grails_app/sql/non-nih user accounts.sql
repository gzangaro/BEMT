select id, version, email, name_first, name_last, password, date_created, date_modified, expiration_date, notification_sent 
  from bemtuser
 where email not in ('abhi@gmail.com','david.tabor@nih.gov','benjamin.fombonne@nih.gov','fombonnebe@mail.nih.gov','jonathan.dill@nih.gov','b.fombonne@gmail.com','sailaja.mareedu@nih.gov',
                     'abhi.rao@nih.gov','hgreenman@provialabs.com','hana.odeh@nih.gov','qili@mail.nih.gov','hgreenman@store-a-tooth.com','helen.moore@nih.gov',
                     'jeffrey.mclean@nih.gov','lisa.miranda.007@gmail.com','noone@bemt.org','hunterst@mail.nih.gov','moorehe@mail.nih.gov',
                     'lisabmiranda@biobusinessconsulting.com')
 order by date_created
 
select id, version, email, name_first, name_last, password, date_created, date_modified, expiration_date, notification_sent 
  from bemtuser
 where email not in ('abhi@gmail.com','david.tabor@nih.gov','benjamin.fombonne@nih.gov','fombonnebe@mail.nih.gov','jonathan.dill@nih.gov','b.fombonne@gmail.com','sailaja.mareedu@nih.gov',
                     'abhi.rao@nih.gov','hgreenman@provialabs.com','hana.odeh@nih.gov','qili@mail.nih.gov','hgreenman@store-a-tooth.com','helen.moore@nih.gov',
                     'jeffrey.mclean@nih.gov','lisa.miranda.007@gmail.com','noone@bemt.org','hunterst@mail.nih.gov','moorehe@mail.nih.gov',
                     'lisabmiranda@biobusinessconsulting.com', 'peterjo@mail.nih.gov')
 order by expiration_date desc
 
select email, login_count, name_first, name_last, date_created, date_modified, expiration_date, (date_modified - date_created) as member_days,
       b.last_login, notification_sent
  from bemtuser b
 where email not in ('abhi@gmail.com','david.tabor@nih.gov','benjamin.fombonne@nih.gov','fombonnebe@mail.nih.gov','jonathan.dill@nih.gov','b.fombonne@gmail.com','sailaja.mareedu@nih.gov',
                     'abhi.rao@nih.gov','hgreenman@provialabs.com','hana.odeh@nih.gov','qili@mail.nih.gov','hgreenman@store-a-tooth.com','helen.moore@nih.gov',
                     'jeffrey.mclean@nih.gov','lisa.miranda.007@gmail.com','noone@bemt.org','hunterst@mail.nih.gov','moorehe@mail.nih.gov',
                     'lisabmiranda@biobusinessconsulting.com', 'peterjo@mail.nih.gov')
                     and
                     expiration_date >= (select sysdate from dual)
 order by expiration_date desc
 
select name_first, name_last, email, version ,date_created, date_modified, (date_modified - date_created) as member_days, expiration_date, notification_sent
  from bemtuser
 where email not in ('abhi@gmail.com','david.tabor@nih.gov','benjamin.fombonne@nih.gov','fombonnebe@mail.nih.gov','jonathan.dill@nih.gov','b.fombonne@gmail.com',
                     'sailaja.mareedu@nih.gov',
                     'abhi.rao@nih.gov','hgreenman@provialabs.com','hana.odeh@nih.gov','qili@mail.nih.gov','hgreenman@store-a-tooth.com','helen.moore@nih.gov',
                     'jeffrey.mclean@nih.gov','lisa.miranda.007@gmail.com','noone@bemt.org','hunterst@mail.nih.gov','moorehe@mail.nih.gov',
                     'lisabmiranda@biobusinessconsulting.com', 'peterjo@mail.nih.gov', 'abhi@nih.gov')
                     and expiration_date >= (select sysdate from dual)
 order by expiration_date desc
 
select name_first, name_last, email, date_created, date_modified, (date_modified - date_created) as member_days, expiration_date, notification_sent
  from bemtuser
 where upper(email) like '%CORNELL%'
 order by email
 
select substr(email, (instr(email, '@')+1) )
  from bemtuser
