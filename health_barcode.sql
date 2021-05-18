-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 04:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_barcode`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_del_emp` (IN `barcode` VARCHAR(30))  NO SQL
BEGIN
SELECT * FROM register where barcode=barcode;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_del_package` (IN `id` VARCHAR(50))  NO SQL
BEGIN
SELECT * FROM registerdetail where pack_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_company_package` (IN `com_ids` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM company_package WHERE com_id=com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `company_package` (IN `com_ids` VARCHAR(11))  NO SQL
BEGIN
SELECT pack_id FROM company_package  WHERE com_id= com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_company` (IN `com_ids` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM company WHERE com_id=com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_emp` (IN `id` VARCHAR(30))  NO SQL
BEGIN
DELETE FROM employee WHERE barcode=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_x_ray` (IN `x_ids` INT(11))  BEGIN
DELETE FROM x_ray where x_id=x_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_audiogram` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM audiogram WHERE audi_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_biochemistry` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM biochemistry WHERE bio_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_cbc` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM cbc WHERE cbc_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_ekg` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM ekg WHERE ekg_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_heavy_metal` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM heavy_metal WHERE hea_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_immunity` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM immunity WHERE im_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_methamphetamine` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM methamphetamine WHERE meth_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_muscle` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM muscle WHERE muscle_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_oc_vision` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM oc_vision WHERE oc_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_package` (IN `id` VARCHAR(50))  NO SQL
BEGIN 
DELETE FROM package WHERE pack_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_pe` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM pe WHERE pe_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_register` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM registerdetail WHERE reg_id=id;
DELETE FROM register WHERE reg_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_registerdetail` (IN `ids` INT(11))  NO SQL
BEGIN
DELETE FROM registerdetail where id=ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_se` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM se WHERE se_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_spirometry` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM spirometry WHERE spir_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_thryroid` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM thryroid WHERE th_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_tumor_marker` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM tumor_marker WHERE tum_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_urinalvsis` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM urinalvsis WHERE urin_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_username` (IN `ids` INT(11))  NO SQL
BEGIN
DELETE FROM username WHERE user_id=ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_xray` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM x_ray WHERE x_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dropdown_company` ()  NO SQL
BEGIN
SELECT * FROM company ORDER BY company ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `export_emp` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50))  NO SQL
BEGIN
SELECT e.barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province ,queue,year,date,time FROM employee e LEFT JOIN register r on e.barcode=r.barcode LEFT JOIN company c on e.com_id=c.com_id where company LIKE companys and (emp_id LIKE name OR emp_name LIKE name OR age LIKE name OR gender LIKE name OR department LIKE name) ORDER BY date asc, queue ASC; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_name_sticker` (IN `reg_ids` VARCHAR(50))  NO SQL
BEGIN
SELECT emp_name,surname,queue,company,r.barcode,date FROM register r LEFT JOIN employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id WHERE reg_id=reg_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_queue` (IN `datenow` DATE)  NO SQL
BEGIN
SELECT max(queue) as queue FROM register where date=datenow;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_reg` ()  NO SQL
BEGIN
SELECT max(reg_id) as reg_id from register; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_audio` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `r_500s` VARCHAR(50), IN `r_1000s` VARCHAR(50), IN `r_2000s` VARCHAR(50), IN `r_3000s` VARCHAR(50), IN `r_l_avgs` VARCHAR(50), IN `r_4000s` VARCHAR(50), IN `r_6000s` VARCHAR(50), IN `r_8000s` VARCHAR(50), IN `r_h_avgs` VARCHAR(50), IN `l_500s` VARCHAR(50), IN `l_1000s` VARCHAR(50), IN `l_2000s` VARCHAR(50), IN `l_3000s` VARCHAR(50), IN `l_l_avgs` VARCHAR(50), IN `l_4000s` VARCHAR(50), IN `l_6000s` VARCHAR(50), IN `l_8000s` VARCHAR(50), IN `l_h_avgs` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO audiogram(barcode,r_500,r_1000,r_2000,r_3000,r_l_avg,r_4000,r_6000,r_8000,r_h_avg,l_500,l_1000,l_2000,l_3000,l_l_avg,l_4000,l_6000,l_8000,l_h_avg,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,r_500s,r_1000s,r_2000s,r_3000s,r_l_avgs,r_4000s,r_6000s,r_8000s,r_h_avgs,l_500s,l_1000s,l_2000s,l_3000s,l_l_avgs,l_4000s,l_6000s,l_8000s,l_h_avgs,conclusions,
remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_biochemistry` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `fbss` VARCHAR(50), IN `chos` VARCHAR(50), IN `hdls` VARCHAR(50), IN `ldls` VARCHAR(50), IN `trigs` VARCHAR(50), IN `uas` VARCHAR(50), IN `buns` VARCHAR(50), IN `creates` VARCHAR(50), IN `sgots` VARCHAR(50), IN `sgpts` VARCHAR(50), IN `alks` VARCHAR(50), IN `ggts` VARCHAR(50), IN `hbacs` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO biochemistry(barcode,fbs,cho,hdl,ldl,trig,ua,bun,creatinine,sgot,sgpt,alk,ggt,hbac,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,fbss,chos,hdls,ldls,trigs,uas,buns,creates,sgots,sgpts,alks,ggts,hbacs,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_cbc` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `hbs` VARCHAR(50), IN `hcts` VARCHAR(50), IN `wbcs` VARCHAR(50), IN `nes` VARCHAR(50), IN `lyms` VARCHAR(50), IN `monocytes` VARCHAR(50), IN `eos` VARCHAR(50), IN `basos` VARCHAR(50), IN `plateletss` VARCHAR(50), IN `rbcs` VARCHAR(50), IN `mvcs` VARCHAR(50), IN `mchs` VARCHAR(50), IN `mchcs` VARCHAR(50), IN `red_bloods` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO cbc(barcode,hb,hct,wbc,ne,lym,monocyte,eo,baso,platelets,rbc,mvc,mch,mchc,red_blood,conclusion,remark,year,conclusion_en,remark_en,user_id) 
VALUES(barcodes,hbs,hcts,wbcs,nes,lyms,monocytes,eos,basos,plateletss,rbcs,mvcs,mchs,mchcs,red_bloods,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_company` (IN `companys` VARCHAR(100), IN `company_ens` VARCHAR(100))  NO SQL
BEGIN
INSERT INTO company(company,company_en) VALUES(companys,company_ens);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ekg` (IN `barcodes` VARCHAR(30), IN `years` YEAR(4), IN `ekgs` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `ekg_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO ekg(barcode,year,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_id) VALUES(barcodes,years,ekgs,conclusions,remarks,ekg_ens,conclusion_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_employee` (IN `barcodes` VARCHAR(30), IN `emp_ids` VARCHAR(20), IN `emp_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `dobs` DATE, IN `ages` VARCHAR(3), IN `genders` VARCHAR(10), IN `companys` VARCHAR(80), IN `branchs` VARCHAR(50), IN `departments` VARCHAR(50), IN `tels` VARCHAR(30), IN `family_stts` VARCHAR(50), IN `nations` VARCHAR(50), IN `ethnics` VARCHAR(50), IN `religions` VARCHAR(50), IN `jobs` VARCHAR(50), IN `house_nos` VARCHAR(10), IN `villages` VARCHAR(50), IN `districts` VARCHAR(50), IN `provinces` VARCHAR(50))  NO SQL
BEGIN 
INSERT INTO employee(barcode,emp_id,emp_name,surname,dob,age,gender,com_id,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province) VALUES(barcodes,emp_ids,emp_names,surnames,dobs,ages,genders,companys,branchs,departments,tels,family_stts,nations,ethnics,religions,jobs,house_nos,villages,districts,provinces); END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_heavy_metal` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `ethers` VARCHAR(50), IN `ethys` VARCHAR(50), IN `nickles` VARCHAR(50), IN `manganeses` VARCHAR(50), IN `tims` VARCHAR(50), IN `bloods` VARCHAR(50), IN `m_i_urines` VARCHAR(50), IN `b_a_us` VARCHAR(50), IN `c_us` VARCHAR(50), IN `alcohos` VARCHAR(50), IN `silicas` VARCHAR(50), IN `methys` VARCHAR(50), IN `a_i_urines` VARCHAR(50), IN `t_i_urines` VARCHAR(50), IN `methy_urines` VARCHAR(50), IN `methanoi_urines` VARCHAR(50), IN `phenolic_resins` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO heavy_metal(barcode,ether,ethy,nickle,manganese,tim,blood,m_i_urine,b_a_u,c_u,alcoho,silica,
methy,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,ethers,ethys,nickles,manganeses,tims,bloods,m_i_urines,b_a_us,c_us,alcohos,silicas,
methys,a_i_urines,t_i_urines,methy_urines,methanoi_urines,phenolic_resins,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_immunity` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `anti_havs` VARCHAR(30), IN `abs` VARCHAR(30), IN `ags` VARCHAR(30), IN `hcvs` VARCHAR(30), IN `vdrls` VARCHAR(30), IN `hivs` VARCHAR(30), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  BEGIN
INSERT INTO
immunity (barcode,anti_hav,ab,ag,hcv,vdrl,hiv,conclusion,remark,year,conclusion_en,remark_en,user_id)
VALUES(barcodes,anti_havs,abs,ags,hcvs,vdrls,hivs,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_metham` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `methamphetamines` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO methamphetamine(barcode,methamphetamine,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,methamphetamines,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_muscle` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(4), IN `muscles` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `muscle_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO muscle(barcode,year,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_id) VALUES(barcodes,years,muscles,conclusions,remarks,muscle_ens,conclusion_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_oc_vision` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `look_fars` VARCHAR(50), IN `look_nears` VARCHAR(50), IN `look_ups` VARCHAR(50), IN `check_eyes` VARCHAR(50), IN `check_colors` VARCHAR(50), IN `radiuss` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO oc_vision(barcode,look_far,look_near,look_up,check_eye,check_color,radius,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,look_fars,look_nears,look_ups,check_eyes,check_colors,radiuss,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_package` (IN `pack_id` VARCHAR(20), IN `pack_name` VARCHAR(50))  NO SQL
BEGIN
INSERT INTO package VALUES(pack_id,pack_name);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_pe` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `hpis` VARCHAR(50), IN `pmhis` VARCHAR(50), IN `personals` VARCHAR(50), IN `familys` VARCHAR(50), IN `asis` VARCHAR(50), IN `heights` VARCHAR(50), IN `weights` VARCHAR(50), IN `bmis` VARCHAR(50), IN `bps` VARCHAR(50), IN `pulses` VARCHAR(50), IN `abos` VARCHAR(50), IN `eyes` VARCHAR(50), IN `teeths` VARCHAR(50), IN `earss` VARCHAR(50), IN `lymphs` VARCHAR(50), IN `thyroids` VARCHAR(50), IN `extremitiess` VARCHAR(50), IN `skins` VARCHAR(50), IN `hears` VARCHAR(50), IN `lungs` VARCHAR(50), IN `alss` VARCHAR(50), IN `others` VARCHAR(50), IN `breats` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO pe(barcode,year,hpi,pmhi,personal,family,asi,height,weight,bmi,bp,pulse,abo,eye,teeth,ears,lymph,
thyroid,extremities,skin,hear,lung,als,other,breat,conclusion,remark,user_id) VALUES(barcodes,years,hpis,pmhis,personals,familys,asis,heights,weights,bmis,bps,pulses,abos,eyes,
teeths,earss,lymphs,thyroids,extremitiess,skins,hears,lungs,alss,others,breats,conclusions,remarks,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_register` (IN `reg_ids` INT(11), IN `barcodes` VARCHAR(30), IN `times` VARCHAR(50), IN `queues` INT(5), IN `years` INT(4), IN `dates` VARCHAR(50), IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO register(reg_id,barcode,time,queue,year,date,user_id) values(reg_ids,barcodes,times,queues,years,dates,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_registerdetail` (IN `reg_ids` INT(11), IN `pack_ids` VARCHAR(20))  NO SQL
BEGIN
INSERT INTO registerdetail(reg_id,pack_id) VALUES(reg_ids,pack_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_se` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `colors` VARCHAR(50), IN `stool_aps` VARCHAR(50), IN `wbcs` VARCHAR(50), IN `rbcs` VARCHAR(50), IN `parasites` VARCHAR(50), IN `samonellas` VARCHAR(50), IN `shigellas` VARCHAR(50), IN `vivrios` VARCHAR(50), IN `vibrios` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO se(barcode,color,stool_ap,wbc,rbc,parasite,samonella,shigella,vivrio,vibrio,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,colors,stool_aps,wbcs,rbcs,parasites,samonellas,shigellas,vivrios,vibrios,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_spiro` (IN `barcoded` VARCHAR(30), IN `years` VARCHAR(10), IN `fvc_meansd` VARCHAR(50), IN `fvc_predictd` VARCHAR(50), IN `fvc_predictsd` VARCHAR(50), IN `fevi_meansd` VARCHAR(50), IN `fevi_predictd` VARCHAR(50), IN `fevi_predictsd` VARCHAR(50), IN `fevi_fvcd` VARCHAR(50), IN `conlusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO spirometry(barcode,fvc_means,fvc_predict,fvc_predicts,fevi_means,fevi_predict,fevi_predicts,fevi_fvc,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcoded,fvc_meansd,fvc_predictd,fvc_predictsd,fevi_meansd,fevi_predictd,fevi_predictsd,fevi_fvcd,conlusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_thyroid` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `free_t3s` VARCHAR(50), IN `free_t4s` VARCHAR(50), IN `tshs` VARCHAR(50), IN `t3s` VARCHAR(50), IN `t4s` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO thryroid(barcode,free_t3,free_t4,tsh,t3,t4,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,free_t3s,free_t4s,tshs,t3s,t4s,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tumor_marker` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `afps` VARCHAR(50), IN `ceas` VARCHAR(50), IN `psas` VARCHAR(50), IN `ca_19s` VARCHAR(50), IN `ca_15s` VARCHAR(50), IN `ca_125` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO tumor_marker(barcode,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,afps,ceas,psas,ca_19s,ca_15s,ca_125,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_urine` (IN `barcodes` VARCHAR(100), IN `years` VARCHAR(10), IN `colors` VARCHAR(50), IN `appearances` VARCHAR(50), IN `phs` VARCHAR(50), IN `specificss` VARCHAR(50), IN `proteins` VARCHAR(50), IN `sugars` VARCHAR(50), IN `ketones` VARCHAR(50), IN `bloods` VARCHAR(50), IN `wbcs` VARCHAR(50), IN `rbcs` VARCHAR(50), IN `epits` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO urinalvsis(barcode,color,appearance,ph,specifics,protein,sugar,ketone,blood,wbc,rbc,epit,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,colors,appearances,phs,specificss,proteins,sugars,ketones,bloods,wbcs,rbcs,epits,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_username` (IN `staff_ids` VARCHAR(30), IN `user_names` VARCHAR(50), IN `emails` VARCHAR(100), IN `passes` VARCHAR(100), IN `stt_ids` INT(11), IN `profile_paths` VARCHAR(100))  NO SQL
BEGIN
INSERT INTO username(staff_id,user_name,email,pass,stt_id,profile_path) VALUES(staff_ids,user_names,emails,md5(passes),stt_ids,profile_paths);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_x_ray` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `x_rays` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `x_ray_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `user_ids` INT(11))  BEGIN
INSERT INTO x_ray(barcode,year,x_ray,conclusion,remark,x_ray_en,conclusion_en,user_id)
VALUES(barcodes,years,x_rays,conclusions,remarks,x_ray_ens,conclusion_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `list_addpackage` (IN `com_ids` VARCHAR(11))  NO SQL
BEGIN
SELECT p.pack_id,pack_name FROM package p WHERE p.pack_id NOT IN (SELECT d.pack_id FROM company_package d WHERE com_id = com_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `emails` VARCHAR(100), IN `passed` VARCHAR(100))  NO SQL
BEGIN
SELECT * FROM username WHERE email=emails and BINARY pass=passed;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `max_barcode_emp` ()  NO SQL
BEGIN
SELECT max(SUBSTRING(barcode,8)) AS barcode FROM employee WHERE (SELECT max(SUBSTRING(barcode,2,6)) FROM employee) = DATE_FORMAT(NOW(),'%d%m%y');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `morepackage` (IN `reg_ids` VARCHAR(50))  NO SQL
BEGIN
SELECT p.pack_id,pack_name FROM package p WHERE p.pack_id NOT IN (SELECT d.pack_id FROM registerdetail d WHERE reg_id = reg_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `register_print` (IN `reg_ids` VARCHAR(11))  NO SQL
BEGIN
select r.reg_id,r.barcode,emp_name,surname,queue,company,date,pack_id from register r left join employee e on r.barcode=e.barcode left join registerdetail d on r.reg_id=d.reg_id LEFT JOIN company c on e.com_id=c.com_id where r.reg_id=reg_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_audio` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,audi_id,r_500,r_1000,r_2000,r_3000,r_l_avg,r_4000,r_6000,r_8000,r_h_avg,l_500,l_1000,
l_2000,l_3000,l_l_avg,l_4000,l_6000,l_8000,l_h_avg,conclusion,remark,conclusion_en,remark_en,user_name
FROM audiogram p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_audio_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,audi_id,r_500,r_1000,r_2000,r_3000,r_l_avg,r_4000,r_6000,r_8000,r_h_avg,l_500,l_1000,
l_2000,l_3000,l_l_avg,l_4000,l_6000,l_8000,l_h_avg,conclusion,remark,conclusion_en,remark_en,user_name
FROM audiogram p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_biochemistry` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,bio_id,fbs,cho,hdl,ldl,trig,ua,bun,creatinine,sgot,sgpt,alk,ggt,hbac,conclusion,remark,conclusion_en,remark_en,user_name FROM biochemistry p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_biochemistry_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,bio_id,fbs,cho,hdl,ldl,trig,ua,bun,creatinine,sgot,sgpt,alk,ggt,hbac,conclusion,remark,conclusion_en,remark_en,user_name FROM biochemistry p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_cbc` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,cbc_id,hb,hct,wbc,ne,lym,monocyte,eo,baso,platelets,
rbc,mvc,mch,mchc,red_blood,conclusion,remark,conclusion_en,remark_en,user_name FROM cbc p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_cbc_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,cbc_id,hb,hct,wbc,ne,lym,monocyte,eo,baso,platelets,
rbc,mvc,mch,mchc,red_blood,conclusion,remark,conclusion_en,remark_en,user_name FROM cbc p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_checkup_status` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years ORDER BY emp_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_checkup_status_limit` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt,ekg,muscle FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years ORDER BY emp_name LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_company` (IN `companys` VARCHAR(100))  NO SQL
BEGIN
SELECT * FROM company WHERE company LIKE companys or company_en LIKE companys ORDER BY company ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_company_limit` (IN `companys` VARCHAR(100), IN `page` INT(11))  NO SQL
BEGIN
SELECT * FROM company WHERE company LIKE companys or company_en LIKE companys ORDER BY company ASC LIMIT page,15;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ekg` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,ekg_id,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_name FROM ekg p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ekg_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(100), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,ekg_id,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_name FROM ekg p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_employee` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50))  NO SQL
BEGIN
select barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,emp_name_en,surname_en,village_en,district_en,province_en,national_en,religion_en,occupation_en from employee e LEFT JOIN company c on e.com_id=c.com_id where company LIKE companys and (emp_id LIKE name or emp_name or surname like name or age like name or gender like name or department like name) ORDER BY emp_name asc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_employee_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `page` INT)  NO SQL
BEGIN
select barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,emp_name_en,surname_en,village_en,district_en,province_en,e.com_id,emp_name_en,surname_en,village_en,district_en,province_en,national_en,religion_en,occupation_en from employee e LEFT JOIN company c on e.com_id=c.com_id where c.company LIKE companys and (emp_id LIKE name or emp_name like name or surname LIKE name or age like name or gender like name or department like name) ORDER BY emp_name asc limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_heavy_metal` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,hea_id,ether,ethy,nickle,manganese,tim,blood,m_i_urine,
b_a_u,c_u,alcoho,silica,methy,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,conclusion,remark,conclusion_en,remark_en,user_name
FROM heavy_metal p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_heavy_metal_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,hea_id,ether,ethy,nickle,manganese,tim,blood,m_i_urine,
b_a_u,c_u,alcoho,silica,methy,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,conclusion,remark,conclusion_en,remark_en,user_name
FROM heavy_metal p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_immunity` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,im_id,anti_hav,ab,ag,hcv,vdrl,hiv,conclusion,remark,conclusion_en,remark_en,user_name FROM immunity p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_immunity_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,im_id,anti_hav,ab,ag,hcv,vdrl,hiv,conclusion,remark,conclusion_en,remark_en,user_name FROM immunity p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,50;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_mac` ()  NO SQL
BEGIN
SELECT * FROM machine;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_metham` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,meth_id,methamphetamine,conclusion,remark,conclusion_en,remark_en,user_name
FROM methamphetamine p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_metham_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,meth_id,methamphetamine,conclusion,remark,conclusion_en,remark_en,user_name
FROM methamphetamine p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_muscle` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,muscle_id,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_name FROM muscle p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_muscle_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,muscle_id,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_name FROM muscle p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_oc_vision` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,oc_id,look_far,
look_near,look_up,check_eye,check_color,radius,conclusion,remark,conclusion_en,remark_en,user_name
 FROM oc_vision p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_oc_vision_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,oc_id,look_far,
look_near,look_up,check_eye,check_color,radius,conclusion,remark,conclusion_en,remark_en,user_name
 FROM oc_vision p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_package` (IN `s` VARCHAR(50))  NO SQL
BEGIN
select * from package where pack_id like s or pack_name like s ORDER BY pack_id asc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_package_limit` (IN `s` VARCHAR(50), IN `page` INT(5))  NO SQL
BEGIN
select * from package where pack_id like s or pack_name like s ORDER BY pack_id asc LIMIT page,15;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_pe` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,pe_id,hpi,pmhi,personal,family,asi,height,weight,bmi,bp,pulse,
abo,eye,teeth,ears,lymph,thyroid,extremities,hear,lung,als,other,breat,skin,conclusion,remark,hpi_en,pmhi_en,personal_en,family_en,
asi_en,eye_en,teeth_en,ears_en,lymph_en,thryroid_en,extremities_en,skin_en,hear_en,lung_en,als_en,other_en,conclusion_en,remark_en,user_name FROM pe p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys and p.year LIKE years and (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_pe_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,pe_id,hpi,pmhi,personal,family,asi,height,weight,bmi,bp,pulse,
abo,eye,teeth,ears,lymph,thyroid,extremities,hear,lung,als,other,breat,skin,conclusion,remark,hpi_en,pmhi_en,personal_en,family_en,
asi_en,eye_en,teeth_en,ears_en,lymph_en,thryroid_en,extremities_en,skin_en,hear_en,lung_en,als_en,other_en,conclusion_en,remark_en,user_name FROM pe p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_register` (IN `companys` VARCHAR(50), IN `name` VARCHAR(50), IN `dates` VARCHAR(50))  NO SQL
BEGIN
select reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,company,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where c.company like companys and (e.emp_id like name or emp_name like name or surname LIKE name or age LIKE name) and date like dates ORDER BY date DESC, queue DESC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_registerdetail` (IN `s` VARCHAR(11))  NO SQL
BEGIN
select id,d.reg_id,d.pack_id,pack_name from registerdetail d left join register r on d.reg_id=r.reg_id left join package p on d.pack_id=p.pack_id where d.reg_id=s;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_register_limit` (IN `companys` VARCHAR(50), IN `name` VARCHAR(50), IN `dates` VARCHAR(50), IN `page` INT(5))  NO SQL
BEGIN
select reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,c.company,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where c.company like companys and (e.emp_id like name or emp_name like name or surname like name or age LIKE name) and date like dates ORDER BY date DESC, queue DESC LIMIT page,50;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_se` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,se_id,color,stool_ap,wbc,rbc,parasite,samonella,shigella,vivrio,vibrio,conclusion,remark,conclusion_en,remark_en,user_name
 FROM se p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_se_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,se_id,color,stool_ap,wbc,rbc,parasite,samonella,shigella,vivrio,vibrio,conclusion,remark,conclusion_en,remark_en,user_name
 FROM se p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_spiro` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,spir_id,fvc_means,fvc_predict,fvc_predicts,fevi_means,
fevi_predict,fevi_predicts,fevi_fvc,conclusion,remark,conclusion_en,remark_en,user_name FROM spirometry p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_spiro_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,spir_id,fvc_means,fvc_predict,fvc_predicts,fevi_means,
fevi_predict,fevi_predicts,fevi_fvc,conclusion,remark,conclusion_en,remark_en,user_name FROM spirometry p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_test` (IN `test` VARCHAR(100))  BEGIN

Select * from package;
Select * from  company;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_thryroid` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,th_id,free_t3,free_t4,tsh,t3,t4,conclusion,remark,conclusion_en,remark_en,user_name
FROM thryroid p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_thryroid_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,th_id,free_t3,free_t4,tsh,t3,t4,conclusion,remark,conclusion_en,remark_en,user_name
FROM thryroid p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_marker` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,tum_id,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,conclusion_en,remark_en,user_name
FROM tumor_marker p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_marker_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,tum_id,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,conclusion_en,remark_en,user_name
FROM tumor_marker p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_urine` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,urin_id,color,appearance,ph,specifics,protein,sugar,ketone,blood,wbc,rbc,epit,conclusion,remark,conclusion_en,remark_en,user_name
FROM urinalvsis p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_urine_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,urin_id,color,appearance,ph,specifics,protein,sugar,ketone,blood,wbc,rbc,epit,conclusion,remark,conclusion_en,remark_en,user_name
FROM urinalvsis p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_username` (IN `search` VARCHAR(100))  NO SQL
BEGIN
SELECT user_id,staff_id,user_name,email,pass,u.stt_id,stt_name,profile_path FROM username u LEFT JOIN user_status s ON u.stt_id=s.stt_id WHERE staff_id LIKE search OR user_name LIKE search OR stt_name LIKE search ORDER BY user_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_username_limit` (IN `search` VARCHAR(100), IN `page` INT(5))  NO SQL
BEGIN
SELECT user_id,staff_id,user_name,email,pass,u.stt_id,stt_name,profile_path FROM username u LEFT JOIN user_status s ON u.stt_id=s.stt_id WHERE staff_id LIKE search OR user_name LIKE search OR stt_name LIKE search ORDER BY user_name ASC LIMIT page,50;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_x_ray` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,x_id,x_ray,conclusion,remark,x_ray_en,conclusion_en,user_name FROM x_ray p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_x_ray_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,x_id,x_ray,conclusion,remark,x_ray_en,conclusion_en,user_name FROM x_ray p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_` ()  NO SQL
BEGIN
SELECT emp_name from employee WHERE barcode='108042100264';
SELECT reg_id from register where reg_id='1';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_company` (IN `com_ids` VARCHAR(11), IN `companys` VARCHAR(100), IN `company_ens` VARCHAR(100))  NO SQL
BEGIN
UPDATE company SET company=companys,company_en=company_ens WHERE com_id=com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_employee` (IN `barcodes` VARCHAR(30), IN `emp_ids` VARCHAR(20), IN `emp_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `dobs` DATE, IN `ages` VARCHAR(3), IN `genders` VARCHAR(10), IN `companys` VARCHAR(80), IN `branchs` VARCHAR(50), IN `departments` VARCHAR(50), IN `tels` VARCHAR(30), IN `family_stts` VARCHAR(50), IN `nations` VARCHAR(50), IN `ethnics` VARCHAR(50), IN `religions` VARCHAR(50), IN `jobs` VARCHAR(50), IN `house_nos` VARCHAR(10), IN `villages` VARCHAR(50), IN `districts` VARCHAR(50), IN `provinces` VARCHAR(50), IN `emp_name_ens` VARCHAR(50), IN `surname_ens` VARCHAR(50), IN `village_ens` VARCHAR(50), IN `district_ens` VARCHAR(50), IN `province_ens` VARCHAR(50), IN `national_ens` VARCHAR(50), IN `religion_ens` VARCHAR(50), IN `occupation_ens` VARCHAR(50))  NO SQL
BEGIN
UPDATE employee SET emp_id=emp_ids,emp_name=emp_names,surname=surnames,dob=dobs,age=ages,gender=genders,com_id=companys,branch=branchs,
department=departments,tel=tels,family_stt=family_stts,nation=nations,ethnic=ethnics,religion=religions,job=jobs,house_no=house_nos,
village=villages,district=districts,province=provinces,emp_name_en=emp_name_ens,surname_en=surname_ens,village_en=village_ens,
district_en=district_ens,province_en=province_ens,national_en=national_ens,religion_en=religion_ens,occupation_en=occupation_ens WHERE barcode=barcodes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_package_register` (IN `reg_ids` VARCHAR(50), IN `pack_ids` VARCHAR(50))  NO SQL
BEGIN
INSERT INTO registerdetail(reg_id,pack_id) VALUES(reg_ids,pack_ids); 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pe` (IN `barcodes` VARCHAR(50), IN `years` VARCHAR(50), IN `hpi_ens` VARCHAR(50), IN `pmhi_ens` VARCHAR(50), IN `personal_ens` VARCHAR(50), IN `family_ens` VARCHAR(50), IN `asi_ens` VARCHAR(50), IN `eye_ens` VARCHAR(50), IN `teeth_ens` VARCHAR(50), IN `ears_ens` VARCHAR(50), IN `lymph_ens` VARCHAR(50), IN `thryroid_ens` VARCHAR(50), IN `extremities_ens` VARCHAR(50), IN `skin_ens` VARCHAR(50), IN `hear_ens` VARCHAR(50), IN `lung_ens` VARCHAR(50), IN `als_ens` VARCHAR(50), IN `other_ens` VARCHAR(50), IN `conclusion_ens` VARCHAR(50), IN `remark_ens` VARCHAR(50))  NO SQL
BEGIN
UPDATE pe SET hpi_en=hpi_ens,pmhi_en=pmhi_ens,personal_en=personal_ens,family_en=family_ens,asi_en=asi_ens,eye_en=eye_ens,teeth_en=teeth_ens,ears_en=ears_ens,lymph_en=lymph_ens,thryroid_en=thryroid_ens,
extremities_en=extremities_ens,skin_en=skin_ens,hear_en=hear_ens,lung_en=lung_ens,als_en=als_ens,other_en=other_ens,
conclusion_en=conclusion_ens,remark_en=remark_ens where barcode=barcodes and year=years;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_username` (IN `user_ids` VARCHAR(11), IN `staff_ids` VARCHAR(30), IN `user_names` VARCHAR(50), IN `emails` VARCHAR(100), IN `passes` VARCHAR(100), IN `stt_ids` INT(11), IN `profile_paths` VARCHAR(100))  NO SQL
BEGIN
UPDATE username SET staff_id=staff_ids,user_name=user_names,email=emails,pass=passes,stt_id=stt_ids,profile_path=profile_paths WHERE user_id=user_ids;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `audiogram`
--

CREATE TABLE `audiogram` (
  `audi_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `r_500` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_1000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_2000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_3000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_l_avg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_4000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_6000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_8000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_h_avg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_500` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_1000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_2000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_3000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_l_avg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_4000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_6000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_8000` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_h_avg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biochemistry`
--

CREATE TABLE `biochemistry` (
  `bio_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fbs` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cho` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hdl` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldl` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trig` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ua` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bun` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creatinine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sgot` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sgpt` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alk` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ggt` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hbac` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbc`
--

CREATE TABLE `cbc` (
  `cbc_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hb` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hct` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wbc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ne` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lym` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monocyte` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baso` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platelets` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rbc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mvc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mchc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `red_blood` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkup_status`
--

CREATE TABLE `checkup_status` (
  `id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `physic` int(1) DEFAULT NULL,
  `cbc` int(1) DEFAULT NULL,
  `bio` int(1) DEFAULT NULL,
  `urine` int(1) DEFAULT NULL,
  `meth` int(1) DEFAULT NULL,
  `thry` int(1) DEFAULT NULL,
  `stool` int(1) DEFAULT NULL,
  `metal` int(1) DEFAULT NULL,
  `tumor` int(1) DEFAULT NULL,
  `vision` int(1) DEFAULT NULL,
  `audio` int(1) DEFAULT NULL,
  `spiro` int(1) DEFAULT NULL,
  `cxr` int(1) DEFAULT NULL,
  `intt` int(1) DEFAULT NULL,
  `ekg` int(1) DEFAULT NULL,
  `muscle` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `com_id` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_package`
--

CREATE TABLE `company_package` (
  `id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekg`
--

CREATE TABLE `ekg` (
  `ekg_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `ekg_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ekg_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `emp_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `branch` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family_stt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethnic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_no` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_name_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heavy_metal`
--

CREATE TABLE `heavy_metal` (
  `hea_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ether` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manganese` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_a_u` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_u` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alcoho` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `silica` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methy_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methanoi_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phenolic_resin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `immunity`
--

CREATE TABLE `immunity` (
  `im_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `anti_hav` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ab` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ag` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hcv` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdrl` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiv` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `machine_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`machine_id`, `expire`) VALUES
('01184701013D29010185FD01', '2021-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `methamphetamine`
--

CREATE TABLE `methamphetamine` (
  `meth_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `methamphetamine` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `muscle`
--

CREATE TABLE `muscle` (
  `muscle_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `muscle_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `muscle_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_vision`
--

CREATE TABLE `oc_vision` (
  `oc_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `look_far` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `look_near` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `look_up` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_eye` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `radius` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pack_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pe`
--

CREATE TABLE `pe` (
  `pe_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `year` year(4) DEFAULT NULL,
  `hpi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bmi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pulse` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teeth` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ears` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lymph` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thyroid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extremities` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hear` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `als` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hpi_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmhi_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asi_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teeth_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ears_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lymph_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thryroid_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extremities_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hear_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lung_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `als_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `queue` int(5) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registerdetail`
--

CREATE TABLE `registerdetail` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se`
--

CREATE TABLE `se` (
  `se_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stool_ap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wbc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rbc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parasite` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samonella` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shigella` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vivrio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vibrio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spirometry`
--

CREATE TABLE `spirometry` (
  `spir_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvc_means` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvc_predict` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvc_predicts` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fevi_means` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fevi_predict` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fevi_predicts` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fevi_fvc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thryroid`
--

CREATE TABLE `thryroid` (
  `th_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `free_t3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `free_t4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tsh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tumor_marker`
--

CREATE TABLE `tumor_marker` (
  `tum_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `afp` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cea` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psa` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ca_19` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ca_15` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ca_125` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urinalvsis`
--

CREATE TABLE `urinalvsis` (
  `urin_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appearance` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ph` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specifics` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protein` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sugar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ketone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wbc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rbc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

CREATE TABLE `username` (
  `user_id` int(11) NOT NULL,
  `staff_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`user_id`, `staff_id`, `user_name`, `email`, `pass`, `profile_path`, `stt_id`) VALUES
(2, '001', 'ປູນາ', 'puna@gmail.com', '202cb962ac59075b964b07152d234b70', 'Health_60894840197d2.png', 1),
(3, '002', 'ຫຼ້າ', 'lar@gmail.com', '202cb962ac59075b964b07152d234b70', 'Health_6089484d66750.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `stt_id` int(11) NOT NULL,
  `stt_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`stt_id`, `stt_name`) VALUES
(1, 'ປະຕິບັດງານ'),
(2, 'ຜູ້ຈັດການຜູ້ໃຊ້');

-- --------------------------------------------------------

--
-- Table structure for table `x_ray`
--

CREATE TABLE `x_ray` (
  `x_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x_ray` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `x_ray_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audiogram`
--
ALTER TABLE `audiogram`
  ADD PRIMARY KEY (`audi_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `biochemistry`
--
ALTER TABLE `biochemistry`
  ADD PRIMARY KEY (`bio_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cbc`
--
ALTER TABLE `cbc`
  ADD PRIMARY KEY (`cbc_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `checkup_status`
--
ALTER TABLE `checkup_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcode` (`barcode`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `company_package`
--
ALTER TABLE `company_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `com_id` (`com_id`),
  ADD KEY `pack_id` (`pack_id`);

--
-- Indexes for table `ekg`
--
ALTER TABLE `ekg`
  ADD PRIMARY KEY (`ekg_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`barcode`),
  ADD KEY `com_id` (`com_id`);

--
-- Indexes for table `heavy_metal`
--
ALTER TABLE `heavy_metal`
  ADD PRIMARY KEY (`hea_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `immunity`
--
ALTER TABLE `immunity`
  ADD PRIMARY KEY (`im_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`machine_id`);

--
-- Indexes for table `methamphetamine`
--
ALTER TABLE `methamphetamine`
  ADD PRIMARY KEY (`meth_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `muscle`
--
ALTER TABLE `muscle`
  ADD PRIMARY KEY (`muscle_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `oc_vision`
--
ALTER TABLE `oc_vision`
  ADD PRIMARY KEY (`oc_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `pe`
--
ALTER TABLE `pe`
  ADD PRIMARY KEY (`pe_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `registerdetail`
--
ALTER TABLE `registerdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pack_id` (`pack_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `se`
--
ALTER TABLE `se`
  ADD PRIMARY KEY (`se_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `spirometry`
--
ALTER TABLE `spirometry`
  ADD PRIMARY KEY (`spir_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `thryroid`
--
ALTER TABLE `thryroid`
  ADD PRIMARY KEY (`th_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tumor_marker`
--
ALTER TABLE `tumor_marker`
  ADD PRIMARY KEY (`tum_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `urinalvsis`
--
ALTER TABLE `urinalvsis`
  ADD PRIMARY KEY (`urin_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `username`
--
ALTER TABLE `username`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `stt_id` (`stt_id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`stt_id`);

--
-- Indexes for table `x_ray`
--
ALTER TABLE `x_ray`
  ADD PRIMARY KEY (`x_id`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audiogram`
--
ALTER TABLE `audiogram`
  MODIFY `audi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `biochemistry`
--
ALTER TABLE `biochemistry`
  MODIFY `bio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cbc`
--
ALTER TABLE `cbc`
  MODIFY `cbc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `checkup_status`
--
ALTER TABLE `checkup_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company_package`
--
ALTER TABLE `company_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ekg`
--
ALTER TABLE `ekg`
  MODIFY `ekg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `heavy_metal`
--
ALTER TABLE `heavy_metal`
  MODIFY `hea_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `immunity`
--
ALTER TABLE `immunity`
  MODIFY `im_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `methamphetamine`
--
ALTER TABLE `methamphetamine`
  MODIFY `meth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `muscle`
--
ALTER TABLE `muscle`
  MODIFY `muscle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_vision`
--
ALTER TABLE `oc_vision`
  MODIFY `oc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pe`
--
ALTER TABLE `pe`
  MODIFY `pe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `registerdetail`
--
ALTER TABLE `registerdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `se`
--
ALTER TABLE `se`
  MODIFY `se_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `spirometry`
--
ALTER TABLE `spirometry`
  MODIFY `spir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `thryroid`
--
ALTER TABLE `thryroid`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tumor_marker`
--
ALTER TABLE `tumor_marker`
  MODIFY `tum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `urinalvsis`
--
ALTER TABLE `urinalvsis`
  MODIFY `urin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `username`
--
ALTER TABLE `username`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `stt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `x_ray`
--
ALTER TABLE `x_ray`
  MODIFY `x_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audiogram`
--
ALTER TABLE `audiogram`
  ADD CONSTRAINT `audiogram_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `audiogram_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `biochemistry`
--
ALTER TABLE `biochemistry`
  ADD CONSTRAINT `biochemistry_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `biochemistry_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `cbc`
--
ALTER TABLE `cbc`
  ADD CONSTRAINT `cbc_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `cbc_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `checkup_status`
--
ALTER TABLE `checkup_status`
  ADD CONSTRAINT `checkup_status_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`);

--
-- Constraints for table `company_package`
--
ALTER TABLE `company_package`
  ADD CONSTRAINT `company_package_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `company` (`com_id`),
  ADD CONSTRAINT `company_package_ibfk_2` FOREIGN KEY (`pack_id`) REFERENCES `package` (`pack_id`);

--
-- Constraints for table `ekg`
--
ALTER TABLE `ekg`
  ADD CONSTRAINT `ekg_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `ekg_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `company` (`com_id`);

--
-- Constraints for table `heavy_metal`
--
ALTER TABLE `heavy_metal`
  ADD CONSTRAINT `heavy_metal_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `heavy_metal_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `immunity`
--
ALTER TABLE `immunity`
  ADD CONSTRAINT `immunity_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `immunity_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `methamphetamine`
--
ALTER TABLE `methamphetamine`
  ADD CONSTRAINT `methamphetamine_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `methamphetamine_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `muscle`
--
ALTER TABLE `muscle`
  ADD CONSTRAINT `muscle_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `muscle_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `oc_vision`
--
ALTER TABLE `oc_vision`
  ADD CONSTRAINT `oc_vision_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `oc_vision_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `pe`
--
ALTER TABLE `pe`
  ADD CONSTRAINT `pe_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `pe_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `registerdetail`
--
ALTER TABLE `registerdetail`
  ADD CONSTRAINT `registerdetail_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `package` (`pack_id`),
  ADD CONSTRAINT `registerdetail_ibfk_2` FOREIGN KEY (`reg_id`) REFERENCES `register` (`reg_id`);

--
-- Constraints for table `se`
--
ALTER TABLE `se`
  ADD CONSTRAINT `se_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `se_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `spirometry`
--
ALTER TABLE `spirometry`
  ADD CONSTRAINT `spirometry_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `spirometry_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `thryroid`
--
ALTER TABLE `thryroid`
  ADD CONSTRAINT `thryroid_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `thryroid_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `tumor_marker`
--
ALTER TABLE `tumor_marker`
  ADD CONSTRAINT `tumor_marker_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `tumor_marker_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `urinalvsis`
--
ALTER TABLE `urinalvsis`
  ADD CONSTRAINT `urinalvsis_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `urinalvsis_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`),
  ADD CONSTRAINT `urinalvsis_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `username`
--
ALTER TABLE `username`
  ADD CONSTRAINT `username_ibfk_1` FOREIGN KEY (`stt_id`) REFERENCES `user_status` (`stt_id`);

--
-- Constraints for table `x_ray`
--
ALTER TABLE `x_ray`
  ADD CONSTRAINT `x_ray_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `x_ray_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
