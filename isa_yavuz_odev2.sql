INSERT INTO hard_disk_ayrinti (hard_disk_id, marka_name, model_serisi, disk_kapasitesi, hdd_donus_hizi) VALUES (4, 'samsung', 'pm91a', 1, 10000);
INSERT INTO hard_disk_ayrinti (hard_disk_id, marka_name, model_serisi, disk_kapasitesi, hdd_donus_hizi) VALUES (5, 'hp', 'lq037', 3, 7200);
INSERT INTO hard_disk_ayrinti (hard_disk_id, marka_name, model_serisi, disk_kapasitesi, hdd_donus_hizi) VALUES (6, 'adata', 's40g', 4, 7200);

INSERT INTO ram_ayrinti (ram_id, marka_name, ram_tipi, hafýza_bus_hýzý, gecikme_suresi) VALUES (4, 'samsung', 'DDR4', 3600, 'CL11');
INSERT INTO ram_ayrinti (ram_id, marka_name, ram_tipi, hafýza_bus_hýzý, gecikme_suresi) VALUES (5, 'corsair', 'DDR3', 4000, 'CL15');
INSERT INTO ram_ayrinti (ram_id, marka_name, ram_tipi, hafýza_bus_hýzý, gecikme_suresi) VALUES (6, 'adata', 'DDR3', 4300, 'CL12');

INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (4, 'acer', 'acr21', 1, 3);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (5, 'asus', '980', 2, 2);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (6, 'acer', 'acr19', 3, 1);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (7, 'toshiba', 'tsh19', 6, 5);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (8, 'toshiba', 'tsh19', 5, 4);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (9, 'asus', '950', 2, 6);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (10, 'acer', 'acr19', 1, 1);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (11, 'casper', 'cs17', 6, 2);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (12, 'toshiba', 'tsh21', 4, 4);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (13, 'asus', '650', 3, 6);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (14, 'acer', 'acr20', 1, 2);
INSERT INTO pc_urun (urun_id, marka_name, model_name, hard_disk, ram) VALUES (15, 'acer', 'acr19', 5, 3);

select p.marka_name,p.model_name,h.marka_name from pc_urun p INNER JOIN hard_disk_ayrinti h on (p.hard_dýsk = h.hard_dýsk_ýd);

select p.marka_name, p.model_name, r.marka_name from pc_urun p INNER JOIN ram_ayrinti r on (p.ram=r.ram_ýd);

select p.marka_name,h.dýsk_kapasýtesý,r.ram_týpý from pc_urun p INNER JOIN hard_disk_ayrinti h on (p.hard_dýsk = h.hard_dýsk_ýd) INNER JOIN 
ram_ayrýntý r on (p.ram=r.ram_ýd);

select marka_name from ram_ayrinti
unýon
select marka_name from hard_dýsk_ayrýntý;

select marka_name from ram_ayrinti
unýon all
select marka_name from hard_dýsk_ayrýntý;

select marka_name from ram_ayrinti
MINUS
select marka_name from hard_dýsk_ayrýntý;

select marka_name from ram_ayrinti
INTERSECT
select marka_name from hard_dýsk_ayrýntý;

select p.marka_name, h.marka_name, h.dýsk_kapasýtesý from pc_urun p INNER JOIN hard_dýsk_ayrýntý h on (p.hard_dýsk = h.hard_disk_id);

select p.marka_name, r.ram_týpý from pc_urun p INNER JOIN ram_ayrýntý r on (p.ram = r.ram_ýd) where r.ram_týpý='DDR3';

select p.marka_name, h.marka_name, r.marka_name from pc_urun p INNER JOIN hard_dýsk_ayrýntý h on 
(p.hard_dýsk = h.hard_disk_id) INNER JOIN ram_ayrýntý r on (p.ram=r.ram_id) where r.marka_name='samsung' and h.marka_name='samsung';

select marka_name, count(*) as adet from pc_urun group by marka_name order by count(*) desc;

select p.marka_name, h.marka_name,h.hdd_donus_hýzý from pc_urun p INNER JOIN hard_dýsk_ayrýntý h 
on (p.hard_dýsk = h.hard_disk_id) where h.hdd_donus_hýzý>=7200 order by h.hdd_donus_hýzý asc;

select p.marka_name, r.marka_name, r.ram_týpý from pc_urun p INNER JOIN ram_ayrýntý r on (p.ram = r.ram_ýd);

select p.marka_name, p.model_name, r.ram_týpý from pc_urun p INNER JOIN ram_ayrýntý r on (p.ram = r.ram_ýd) 
where p.model_name like '%acr%' and r.ram_tipi='DDR4';

select ram_tipi, count(*) as adet from ram_ayrinti group by ram_týpý;








