-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 07:09 AM
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_checkup` ()  BEGIN
DELETE FROM audiogram;
DELETE FROM biochemistry;
DELETE FROM cbc;
DELETE FROM ekg;
DELETE FROM heavy_metal;
DELETE FROM immunity;
DELETE FROM methamphetamine;
DELETE FROM muscle;
DELETE FROM oc_vision;
DELETE FROM pe;
DELETE FROM spirometry;
DELETE FROM thryroid;
DELETE FROM tumor_marker;
DELETE FROM tumor_gttgk;
DELETE FROM urinalvsis;
DELETE FROM x_ray;
DELETE FROM test_vision;
DELETE FROM ultrasound;
DELETE FROM se;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_company_package` (IN `com_ids` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM company_package WHERE com_id=com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_database` ()  NO SQL
BEGIN
DELETE FROM audiogram;
DELETE FROM biochemistry;
DELETE FROM cbc;
DELETE FROM checkup_status;
DELETE FROM ekg;
DELETE FROM heavy_metal;
DELETE FROM immunity;
DELETE FROM methamphetamine;
DELETE FROM muscle;
DELETE FROM oc_vision;
DELETE FROM pe;
DELETE FROM spirometry;
DELETE FROM thryroid;
DELETE FROM tumor_marker;
DELETE FROM tumor_gttgk;
DELETE FROM urinalvsis;
DELETE FROM x_ray;
DELETE FROM test_vision;
DELETE FROM ultrasound;
DELETE FROM se;
DELETE FROM registerdetail;
DELETE FROM register;
DELETE FROM company_package;
DELETE FROM employee;
DELETE FROM company;
DELETE FROM package;
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_test_vision` (IN `id` INT(11))  NO SQL
BEGIN
DELETE FROM test_vision WHERE test_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_thryroid` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM thryroid WHERE th_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_tumor_gttgk` (IN `ids` INT(11))  NO SQL
BEGIN
DELETE FROM tumor_gttgk WHERE id=ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_tumor_marker` (IN `id` VARCHAR(11))  NO SQL
BEGIN
DELETE FROM tumor_marker WHERE tum_id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_ultrasound` (IN `ul_ids` INT(11))  NO SQL
BEGIN
DELETE FROM ultrasound WHERE ul_id=ul_ids;
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
SELECT e.barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,current_address,road,email  ,queue,year,date,time FROM employee e LEFT JOIN register r on e.barcode=r.barcode LEFT JOIN company c on e.com_id=c.com_id where company LIKE companys and (emp_id LIKE name OR emp_name LIKE name OR age LIKE name OR gender LIKE name OR department LIKE name) ORDER BY date asc, queue ASC; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_name_sticker` (IN `reg_ids` VARCHAR(50))  NO SQL
BEGIN
SELECT emp_name,surname,queue,company,r.barcode,date,sticker FROM register r LEFT JOIN employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id WHERE reg_id=reg_ids;
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_company` (IN `companys` VARCHAR(100), IN `company_ens` VARCHAR(100), IN `stickers` VARCHAR(50))  NO SQL
BEGIN
INSERT INTO company(company,company_en,sticker) VALUES(companys,company_ens,stickers);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ekg` (IN `barcodes` VARCHAR(30), IN `years` YEAR(4), IN `ekgs` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `ekg_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO ekg(barcode,year,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_id) VALUES(barcodes,years,ekgs,conclusions,remarks,ekg_ens,conclusion_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_employee` (IN `barcodes` VARCHAR(30), IN `emp_ids` VARCHAR(20), IN `emp_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `dobs` DATE, IN `ages` VARCHAR(3), IN `genders` VARCHAR(10), IN `companys` VARCHAR(80), IN `branchs` VARCHAR(50), IN `departments` VARCHAR(50), IN `tels` VARCHAR(30), IN `family_stts` VARCHAR(50), IN `nations` VARCHAR(50), IN `ethnics` VARCHAR(50), IN `religions` VARCHAR(50), IN `jobs` VARCHAR(50), IN `house_nos` VARCHAR(10), IN `villages` VARCHAR(50), IN `districts` VARCHAR(50), IN `provinces` VARCHAR(50), IN `current_addresss` VARCHAR(250), IN `roads` VARCHAR(100), IN `emails` VARCHAR(150))  NO SQL
BEGIN 
INSERT INTO employee(barcode,emp_id,emp_name,surname,dob,age,gender,com_id,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,current_address,road,email) VALUES(barcodes,emp_ids,emp_names,surnames,dobs,ages,genders,companys,branchs,departments,tels,family_stts,nations,ethnics,religions,jobs,house_nos,villages,districts,provinces,current_addresss,roads,emails); END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_heavy_metal` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `leads` VARCHAR(50), IN `chromlums` VARCHAR(50), IN `ethers` VARCHAR(50), IN `ethys` VARCHAR(50), IN `nickles` VARCHAR(50), IN `manganeses` VARCHAR(50), IN `tims` VARCHAR(50), IN `bloods` VARCHAR(50), IN `m_i_urines` VARCHAR(50), IN `b_a_us` VARCHAR(50), IN `c_us` VARCHAR(50), IN `coppers` VARCHAR(50), IN `alums` VARCHAR(50), IN `zines` VARCHAR(50), IN `alcohos` VARCHAR(50), IN `silicas` VARCHAR(50), IN `methys` VARCHAR(50), IN `arsenics` VARCHAR(50), IN `a_i_urines` VARCHAR(50), IN `t_i_urines` VARCHAR(50), IN `methy_urines` VARCHAR(50), IN `methanoi_urines` VARCHAR(50), IN `phenolic_resins` VARCHAR(50), IN `xylenes` VARCHAR(50), IN `m_e_k_i_urines` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO heavy_metal(barcode,lead,chromlum,ether,ethy,nickle,manganese,tim,blood,m_i_urine,b_a_u,c_u,copper,alum,zine,alcoho,silica,
methy,arsenic,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,xylene,m_e_k_i_urine,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,leads,chromlums,ethers,ethys,nickles,manganeses,tims,bloods,m_i_urines,b_a_us,c_us,coppers,alums,zines,alcohos,silicas,
methys,arsenics,a_i_urines,t_i_urines,methy_urines,methanoi_urines,phenolic_resins,xylenes,m_e_k_i_urines,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_immunity` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `anti_havs` VARCHAR(30), IN `abs` VARCHAR(30), IN `ags` VARCHAR(30), IN `hcvs` VARCHAR(30), IN `vdrls` VARCHAR(30), IN `hivs` VARCHAR(30), IN `hpyloris` VARCHAR(50), IN `paps` VARCHAR(50), IN `calciums` VARCHAR(50), IN `phosphoruss` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  BEGIN
INSERT INTO
immunity (barcode,anti_hav,ab,ag,hcv,vdrl,hiv,hpylori,pap,calcium,phosphorus,conclusion,remark,year,conclusion_en,remark_en,user_id)
VALUES(barcodes,anti_havs,abs,ags,hcvs,vdrls,hivs,hpyloris,paps,calciums,phosphoruss,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_metham` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `methamphetamines` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO methamphetamine(barcode,methamphetamine,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,methamphetamines,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_muscle` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(4), IN `muscles` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `muscle_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO muscle(barcode,year,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_id) VALUES(barcodes,years,muscles,conclusions,remarks,muscle_ens,conclusion_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_pe` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `hpis` VARCHAR(50), IN `pmhis` VARCHAR(50), IN `personals` VARCHAR(50), IN `familys` VARCHAR(50), IN `asis` VARCHAR(50), IN `heights` VARCHAR(50), IN `weights` VARCHAR(50), IN `bmis` VARCHAR(50), IN `bps` VARCHAR(50), IN `pulses` VARCHAR(50), IN `abos` VARCHAR(50), IN `eyes` VARCHAR(50), IN `teeths` VARCHAR(50), IN `earss` VARCHAR(50), IN `lymphs` VARCHAR(50), IN `thyroids` VARCHAR(50), IN `extremitiess` VARCHAR(50), IN `skins` VARCHAR(50), IN `hears` VARCHAR(50), IN `lungs` VARCHAR(50), IN `alss` VARCHAR(50), IN `others` VARCHAR(50), IN `breats` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `hpi_ens` VARCHAR(50), IN `pmhi_ens` VARCHAR(50), IN `personal_ens` VARCHAR(50), IN `family_ens` VARCHAR(50), IN `asi_ens` VARCHAR(50), IN `eye_ens` VARCHAR(50), IN `teeth_ens` VARCHAR(50), IN `ears_ens` VARCHAR(50), IN `lymph_ens` VARCHAR(50), IN `thryroid_ens` VARCHAR(50), IN `extremities_ens` VARCHAR(50), IN `skin_ens` VARCHAR(50), IN `hear_ens` VARCHAR(50), IN `lung_ens` VARCHAR(50), IN `als_ens` VARCHAR(50), IN `other_ens` VARCHAR(50), IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO pe(barcode,year,hpi,pmhi,personal,family,asi,height,weight,bmi,bp,pulse,abo,eye,teeth,ears,lymph,
thyroid,extremities,skin,hear,lung,als,other,breat,conclusion,remark,hpi_en,pmhi_en,personal_en,family_en,asi_en,eye_en,teeth_en,ears_en,lymph_en,thryroid_en,extremities_en,skin_en,hear_en,lung_en,als_en,other_en,conclusion_en,remark_en,user_id) VALUES(barcodes,years,hpis,pmhis,personals,familys,asis,heights,weights,bmis,bps,pulses,abos,eyes,
teeths,earss,lymphs,thyroids,extremitiess,skins,hears,lungs,alss,others,breats,conclusions,remarks,hpi_ens,pmhi_ens,personal_ens,family_ens,asi_ens,eye_ens,teeth_ens,ears_ens,lymph_ens,thryroid_ens,extremities_ens,skin_ens,hear_ens,lung_ens,als_ens,other_ens,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_oc_vision` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `look_fars` VARCHAR(50), IN `look_nears` VARCHAR(50), IN `look_ups` VARCHAR(50), IN `check_eyes` VARCHAR(50), IN `check_colors` VARCHAR(50), IN `radiuss` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO oc_vision(barcode,look_far,look_near,look_up,check_eye,check_color,radius,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,look_fars,look_nears,look_ups,check_eyes,check_colors,radiuss,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_package` (IN `pack_ids` VARCHAR(20), IN `pack_names` VARCHAR(50))  NO SQL
BEGIN
INSERT INTO package(pack_id,pack_name) VALUES(pack_ids,pack_names);
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_test_vision` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `r_shorts` VARCHAR(50), IN `r_longs` VARCHAR(50), IN `r_titeds` VARCHAR(50), IN `r_colors` VARCHAR(50), IN `r_conclusions` VARCHAR(50), IN `l_shorts` VARCHAR(50), IN `l_longs` VARCHAR(50), IN `l_titeds` VARCHAR(50), IN `l_colors` VARCHAR(50), IN `l_conclusions` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO test_vision(barcode,year,r_short,r_long,r_tited,r_color,r_conclusion,l_short,l_long,l_tited,l_color,l_conclusion,conclusion,remark,conclusion_en,remark_en,user_id)
VALUES(barcodes,years,r_shorts,r_longs,r_titeds,r_colors,r_conclusions,l_shorts,l_longs,l_titeds,l_colors,l_conclusions,conclusions,remarks,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_thyroid` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `free_t3s` VARCHAR(50), IN `free_t4s` VARCHAR(50), IN `tshs` VARCHAR(50), IN `t3s` VARCHAR(50), IN `t4s` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO thryroid(barcode,free_t3,free_t4,tsh,t3,t4,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,free_t3s,free_t4s,tshs,t3s,t4s,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tumor_gttgk` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `total_bills` VARCHAR(50), IN `drect_bills` VARCHAR(50), IN `proteins` VARCHAR(50), IN `ambumins` VARCHAR(50), IN `globulins` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO tumor_gttgk(barcode,year,total_bill,drect_bill,protein,ambumin,globulin,conclusion,remark,conclusion_en,remark_en,user_id)
VALUES(barcodes,years,total_bills,drect_bills,proteins,ambumins,globulins,conclusions,remarks,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tumor_marker` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `afps` VARCHAR(50), IN `ceas` VARCHAR(50), IN `psas` VARCHAR(50), IN `ca_19s` VARCHAR(50), IN `ca_15s` VARCHAR(50), IN `ca_125` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO tumor_marker(barcode,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,year,conclusion_en,remark_en,user_id) VALUES(barcodes,afps,ceas,psas,ca_19s,ca_15s,ca_125,conclusions,remarks,years,conclusion_ens,remark_ens,user_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ultrasound` (IN `barcodes` VARCHAR(30), IN `years` VARCHAR(10), IN `ultra_names` VARCHAR(50), IN `conclusions` TEXT, IN `remarks` TEXT, IN `conclusion_ens` TEXT, IN `remark_ens` TEXT, IN `user_ids` INT(11))  NO SQL
BEGIN
INSERT INTO ultrasound(barcode,year,ultra_name,conclusion,remark,conclusion_en,remark_en,user_id) VALUES(barcodes,years,ultra_names,conclusions,remarks,conclusion_ens,remark_ens,user_ids);
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
SELECT SUBSTRING(barcode,2,6), DATE_FORMAT(NOW(),'%d%m%y'),max(SUBSTRING(barcode,8)) AS barcode FROM employee WHERE SUBSTRING(barcode,2,6) = DATE_FORMAT(NOW(),'%d%m%y') GROUP BY SUBSTRING(barcode,2,6);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `morepackage` (IN `reg_ids` VARCHAR(50))  NO SQL
BEGIN
SELECT p.pack_id,pack_name FROM package p WHERE p.pack_id NOT IN (SELECT d.pack_id FROM registerdetail d WHERE reg_id = reg_ids);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `register_print` (IN `reg_ids` VARCHAR(11))  NO SQL
BEGIN
select r.reg_id,r.barcode,emp_name,surname,queue,company,date,pack_id,sticker from register r left join employee e on r.barcode=e.barcode left join registerdetail d on r.reg_id=d.reg_id LEFT JOIN company c on e.com_id=c.com_id where r.reg_id=reg_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_audio` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,audi_id,r_500,r_1000,r_2000,r_3000,r_l_avg,r_4000,r_6000,r_8000,r_h_avg,l_500,l_1000,
l_2000,l_3000,l_l_avg,l_4000,l_6000,l_8000,l_h_avg,conclusion,remark,conclusion_en,remark_en,user_name
FROM audiogram p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_audio_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,audi_id,r_500,r_1000,r_2000,r_3000,r_l_avg,r_4000,r_6000,r_8000,r_h_avg,l_500,l_1000,
l_2000,l_3000,l_l_avg,l_4000,l_6000,l_8000,l_h_avg,conclusion,remark,conclusion_en,remark_en,user_name
FROM audiogram p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_biochemistry` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,bio_id,fbs,cho,hdl,ldl,trig,ua,bun,creatinine,sgot,sgpt,alk,ggt,hbac,conclusion,remark,conclusion_en,remark_en,user_name FROM biochemistry p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_biochemistry_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,bio_id,fbs,cho,hdl,ldl,trig,ua,bun,creatinine,sgot,sgpt,alk,ggt,hbac,conclusion,remark,conclusion_en,remark_en,user_name FROM biochemistry p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_book` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10), IN `names` VARCHAR(100))  BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt,ekg,muscle,ultra,tumor_gttgk,test_vision,emp_id FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years AND (emp_id LIKE names OR emp_name LIKE names OR surname LIKE names) ORDER BY emp_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_book_limit` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10), IN `names` VARCHAR(100), IN `page` INT(5))  BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt,ekg,muscle,ultra,tumor_gttgk,test_vision,emp_id FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years AND (emp_id LIKE names OR emp_name LIKE names OR surname LIKE names) ORDER BY emp_name LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_cbc` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,cbc_id,hb,hct,wbc,ne,lym,monocyte,eo,baso,platelets,
rbc,mvc,mch,mchc,red_blood,conclusion,remark,conclusion_en,remark_en,user_name FROM cbc p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_cbc_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,cbc_id,hb,hct,wbc,ne,lym,monocyte,eo,baso,platelets,
rbc,mvc,mch,mchc,red_blood,conclusion,remark,conclusion_en,remark_en,user_name FROM cbc p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_checkup_status` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt,ekg,muscle,ultra,tumor_gttgk,test_vision,emp_id FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years ORDER BY emp_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_checkup_status_limit` (IN `companys` VARCHAR(100), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT s.barcode,emp_name,surname,company,s.year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt,ekg,muscle,ultra,tumor_gttgk,test_vision,emp_id FROM checkup_status s LEFT JOIN employee e ON s.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id WHERE company LIKE companys and s.year LIKE years ORDER BY emp_name LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_company` (IN `companys` VARCHAR(100))  NO SQL
BEGIN
SELECT * FROM company WHERE company LIKE companys or company_en LIKE companys OR sticker LIKE companys ORDER BY company ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_company_limit` (IN `companys` VARCHAR(100), IN `page` INT(11))  NO SQL
BEGIN
SELECT * FROM company WHERE company LIKE companys or company_en LIKE companys OR sticker LIKE companys ORDER BY company ASC LIMIT page,15;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ekg` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,ekg_id,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_name FROM ekg p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ekg_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(100), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,ekg_id,ekg_name,conclusion,remark,ekg_en,conclusion_en,user_name FROM ekg p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_employee` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50))  NO SQL
BEGIN
select barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,emp_name_en,surname_en,village_en,district_en,province_en,national_en,religion_en,occupation_en,current_address,road,email from employee e LEFT JOIN company c on e.com_id=c.com_id where company LIKE companys and (emp_id LIKE name or emp_name or surname like name or age like name or gender like name or department like name or barcode like name or sticker like name) ORDER BY emp_name asc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_employee_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `page` INT)  NO SQL
BEGIN
select barcode,emp_id,emp_name,surname,dob,age,gender,c.company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,emp_name_en,surname_en,village_en,district_en,province_en,e.com_id,emp_name_en,surname_en,village_en,district_en,province_en,national_en,religion_en,occupation_en,current_address,road,email from employee e LEFT JOIN company c on e.com_id=c.com_id where c.company LIKE companys and (emp_id LIKE name or emp_name like name or surname LIKE name or age like name or gender like name or department like name or barcode like name or sticker like name) ORDER BY emp_name asc limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_employee_package_sheet` (IN `id` VARCHAR(30), IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `dates` VARCHAR(50))  NO SQL
BEGIN
select r.reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,company,pack_id,year,date,time,user_name from register r LEFT JOIN registerdetail d ON r.reg_id=d.reg_id left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where pack_id=id and r.date like dates and c.company like companys and (e.emp_id like name or emp_name like name or surname like name or age LIKE name or r.barcode like name or sticker like name) ORDER BY pack_id ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_export_sheet_register` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `dates` VARCHAR(50))  NO SQL
BEGIN
select d.pack_id from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id  where c.company like companys and (e.emp_id like name or emp_name like name or surname LIKE name or age LIKE name or r.barcode like name or sticker like name) and r.date like dates GROUP BY d.pack_id ORDER BY d.pack_id ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_heavy_metal` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,hea_id,ether,ethy,nickle,manganese,tim,blood,m_i_urine,
b_a_u,c_u,alcoho,silica,methy,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,conclusion,remark,conclusion_en,remark_en,user_name,
lead,chromlum,copper,alum,zine,arsenic,xylene,m_e_k_i_urine
FROM heavy_metal p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_heavy_metal_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,hea_id,ether,ethy,nickle,manganese,tim,blood,m_i_urine,
b_a_u,c_u,alcoho,silica,methy,a_i_urine,t_i_urine,methy_urine,methanoi_urine,phenolic_resin,conclusion,remark,conclusion_en,remark_en,user_name,
lead,chromlum,copper,alum,zine,arsenic,xylene,m_e_k_i_urine
FROM heavy_metal p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_immunity` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,im_id,anti_hav,ab,ag,hcv,vdrl,hiv,hpylori,pap,calcium,phosphorus,conclusion,remark,conclusion_en,remark_en,user_name FROM immunity p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_immunity_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,im_id,anti_hav,ab,ag,hcv,vdrl,hiv,hpylori,pap,calcium,phosphorus,conclusion,remark,conclusion_en,remark_en,user_name FROM immunity p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,50;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_mac` ()  NO SQL
BEGIN
SELECT * FROM machine;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_metham` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,meth_id,methamphetamine,conclusion,remark,conclusion_en,remark_en,user_name
FROM methamphetamine p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_metham_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,meth_id,methamphetamine,conclusion,remark,conclusion_en,remark_en,user_name
FROM methamphetamine p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_muscle` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,muscle_id,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_name FROM muscle p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_muscle_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,muscle_id,muscle_name,conclusion,remark,muscle_en,conclusion_en,user_name FROM muscle p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_oc_vision` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,oc_id,look_far,
look_near,look_up,check_eye,check_color,radius,conclusion,remark,conclusion_en,remark_en,user_name
 FROM oc_vision p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_oc_vision_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,oc_id,look_far,
look_near,look_up,check_eye,check_color,radius,conclusion,remark,conclusion_en,remark_en,user_name
 FROM oc_vision p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
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
asi_en,eye_en,teeth_en,ears_en,lymph_en,thryroid_en,extremities_en,skin_en,hear_en,lung_en,als_en,other_en,conclusion_en,remark_en,user_name FROM pe p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys and p.year LIKE years and (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_pe_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,pe_id,hpi,pmhi,personal,family,asi,height,weight,bmi,bp,pulse,
abo,eye,teeth,ears,lymph,thyroid,extremities,hear,lung,als,other,breat,skin,conclusion,remark,hpi_en,pmhi_en,personal_en,family_en,
asi_en,eye_en,teeth_en,ears_en,lymph_en,thryroid_en,extremities_en,skin_en,hear_en,lung_en,als_en,other_en,conclusion_en,remark_en,user_name FROM pe p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_register` (IN `companys` VARCHAR(50), IN `name` VARCHAR(50), IN `dates` VARCHAR(50))  NO SQL
BEGIN
select reg_id,r.barcode,e.emp_id,emp_name,surname,dob,queue,age,gender,company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,current_address,road,e.email,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where c.company like companys and (e.emp_id like name or emp_name like name or surname LIKE name or age LIKE name or r.barcode like name or sticker like name) and date like dates ORDER BY date DESC, queue ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_registerdetail` (IN `s` VARCHAR(11))  NO SQL
BEGIN
select id,d.reg_id,d.pack_id,pack_name from registerdetail d left join register r on d.reg_id=r.reg_id left join package p on d.pack_id=p.pack_id where d.reg_id=s;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_register_limit` (IN `companys` VARCHAR(50), IN `name` VARCHAR(50), IN `dates` VARCHAR(50), IN `page` INT(5))  NO SQL
BEGIN
select reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,c.company,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where c.company like companys and (e.emp_id like name or emp_name like name or surname like name or age LIKE name or r.barcode like name or sticker like name) and date like dates ORDER BY date DESC, queue DESC LIMIT page,50;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_se` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,se_id,color,stool_ap,wbc,rbc,parasite,samonella,shigella,vivrio,vibrio,conclusion,remark,conclusion_en,remark_en,user_name
 FROM se p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_se_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,se_id,color,stool_ap,wbc,rbc,parasite,samonella,shigella,vivrio,vibrio,conclusion,remark,conclusion_en,remark_en,user_name
 FROM se p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_spiro` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,spir_id,fvc_means,fvc_predict,fvc_predicts,fevi_means,
fevi_predict,fevi_predicts,fevi_fvc,conclusion,remark,conclusion_en,remark_en,user_name FROM spirometry p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_spiro_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,spir_id,fvc_means,fvc_predict,fvc_predicts,fevi_means,
fevi_predict,fevi_predicts,fevi_fvc,conclusion,remark,conclusion_en,remark_en,user_name FROM spirometry p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_test` (IN `test` VARCHAR(100))  BEGIN

Select * from package;
Select * from  company;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_test_vision` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,test_id,r_short,r_long,r_tited,r_color,r_conclusion,l_short,l_long,l_tited,l_color,l_conclusion,conclusion,remark,conclusion_en,remark_en,user_name FROM test_vision p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_test_vision_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,test_id,r_short,r_long,r_tited,r_color,r_conclusion,l_short,l_long,l_tited,l_color,l_conclusion,conclusion,remark,conclusion_en,remark_en,user_name FROM test_vision p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_thryroid` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,th_id,free_t3,free_t4,tsh,t3,t4,conclusion,remark,conclusion_en,remark_en,user_name
FROM thryroid p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_thryroid_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,th_id,free_t3,free_t4,tsh,t3,t4,conclusion,remark,conclusion_en,remark_en,user_name
FROM thryroid p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_gttgk` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,p.id,total_bill,drect_bill,protein,ambumin,globulin,conclusion,remark,conclusion_en,remark_en,user_name FROM tumor_gttgk p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_gttgk_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,p.id,total_bill,drect_bill,protein,ambumin,globulin,conclusion,remark,conclusion_en,remark_en,user_name FROM tumor_gttgk p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_marker` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,tum_id,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,conclusion_en,remark_en,user_name
FROM tumor_marker p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tumor_marker_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,tum_id,afp,cea,psa,ca_19,ca_15,ca_125,conclusion,remark,conclusion_en,remark_en,user_name
FROM tumor_marker p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ultrasound` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT ul_id,u.barcode,emp_id,emp_name,surname,company,u.year,ultra_name,conclusion,remark,conclusion_en,remark_en,user_name FROM ultrasound u LEFT JOIN employee e ON
u.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON u.user_id=z.user_id WHERE company LIKE companys AND u.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR u.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_ultrasound_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(100), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT ul_id,u.barcode,emp_id,emp_name,surname,company,u.year,ultra_name,conclusion,remark,conclusion_en,remark_en,user_name FROM ultrasound u LEFT JOIN employee e ON
u.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON u.user_id=z.user_id WHERE company LIKE companys AND u.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR u.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_urine` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,urin_id,color,appearance,ph,specifics,protein,sugar,ketone,blood,wbc,rbc,epit,conclusion,remark,conclusion_en,remark_en,user_name
FROM urinalvsis p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_urine_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  NO SQL
BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,urin_id,color,appearance,ph,specifics,protein,sugar,ketone,blood,wbc,rbc,epit,conclusion,remark,conclusion_en,remark_en,user_name
FROM urinalvsis p LEFT JOIN employee e on p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC LIMIT page,100;
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
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_x_ray_limit` (IN `companys` VARCHAR(100), IN `name` VARCHAR(50), IN `years` VARCHAR(10), IN `page` INT(5))  BEGIN
SELECT p.barcode,emp_id,emp_name,surname,company,p.year,x_id,x_ray,conclusion,remark,x_ray_en,conclusion_en,user_name FROM x_ray p LEFT JOIN employee e ON
p.barcode=e.barcode LEFT JOIN company c ON e.com_id=c.com_id LEFT JOIN username z ON p.user_id=z.user_id WHERE company LIKE companys AND p.year LIKE years AND (emp_id LIKE name OR emp_name LIKE name OR surname LIKE name OR p.barcode LIKE name or sticker like name) ORDER BY emp_name ASC limit page,100;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_` ()  NO SQL
BEGIN
SELECT emp_name from employee WHERE barcode='108042100264';
SELECT reg_id from register where reg_id='1';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_company` (IN `com_ids` VARCHAR(11), IN `companys` VARCHAR(100), IN `company_ens` VARCHAR(100), IN `stickers` VARCHAR(50))  NO SQL
BEGIN
UPDATE company SET company=companys,company_en=company_ens,sticker=stickers WHERE com_id=com_ids;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_employee` (IN `barcodes` VARCHAR(30), IN `emp_ids` VARCHAR(20), IN `emp_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `dobs` DATE, IN `ages` VARCHAR(3), IN `genders` VARCHAR(10), IN `companys` VARCHAR(80), IN `branchs` VARCHAR(50), IN `departments` VARCHAR(50), IN `tels` VARCHAR(30), IN `family_stts` VARCHAR(50), IN `nations` VARCHAR(50), IN `ethnics` VARCHAR(50), IN `religions` VARCHAR(50), IN `jobs` VARCHAR(50), IN `house_nos` VARCHAR(10), IN `villages` VARCHAR(50), IN `districts` VARCHAR(50), IN `provinces` VARCHAR(50), IN `emp_name_ens` VARCHAR(50), IN `surname_ens` VARCHAR(50), IN `village_ens` VARCHAR(50), IN `district_ens` VARCHAR(50), IN `province_ens` VARCHAR(50), IN `national_ens` VARCHAR(50), IN `religion_ens` VARCHAR(50), IN `occupation_ens` VARCHAR(50), IN `current_addresss` VARCHAR(250), IN `roads` VARCHAR(150), IN `emails` VARCHAR(150))  NO SQL
BEGIN
UPDATE employee SET emp_id=emp_ids,emp_name=emp_names,surname=surnames,dob=dobs,age=ages,gender=genders,com_id=companys,branch=branchs,
department=departments,tel=tels,family_stt=family_stts,nation=nations,ethnic=ethnics,religion=religions,job=jobs,house_no=house_nos,
village=villages,district=districts,province=provinces,emp_name_en=emp_name_ens,surname_en=surname_ens,village_en=village_ens,
district_en=district_ens,province_en=province_ens,national_en=national_ens,religion_en=religion_ens,occupation_en=occupation_ens,current_address=current_addresss,road=roads,email=emails WHERE barcode=barcodes;
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
  `user_id` int(11) DEFAULT NULL,
  `audiogram_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `biochemistry_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `cbc_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `muscle` int(1) DEFAULT NULL,
  `ultra` int(1) DEFAULT NULL,
  `tumor_gttgk` int(1) DEFAULT NULL,
  `test_vision` int(1) DEFAULT NULL,
  `checkup_status_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checkup_status`
--

INSERT INTO `checkup_status` (`id`, `barcode`, `year`, `physic`, `cbc`, `bio`, `urine`, `meth`, `thry`, `stool`, `metal`, `tumor`, `vision`, `audio`, `spiro`, `cxr`, `intt`, `ekg`, `muscle`, `ultra`, `tumor_gttgk`, `test_vision`, `checkup_status_log`) VALUES
(143, '204072101293', 2021, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, '2021-07-04 13:37:03'),
(144, '204072100161', 2021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2021-07-07 04:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `com_id` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sticker` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`com_id`, `company`, `company_en`, `sticker`, `company_log`) VALUES
(26, 'Mangkone', 'Mangkone', 'MkS', '2021-07-04 13:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_package`
--

CREATE TABLE `company_package` (
  `id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `company_package_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_package`
--

INSERT INTO `company_package` (`id`, `com_id`, `pack_id`, `company_package_log`) VALUES
(129, 26, 'AUDIO', '2021-07-04 13:26:51'),
(130, 26, 'CBC', '2021-07-04 13:26:51'),
(131, 26, 'CLOT', '2021-07-04 13:26:51'),
(132, 26, 'EKG', '2021-07-04 13:26:51'),
(133, 26, 'NAFA', '2021-07-04 13:26:51'),
(134, 26, 'PE', '2021-07-04 13:26:51'),
(135, 26, 'Urine', '2021-07-04 13:26:51'),
(136, 26, 'X-Ray', '2021-07-04 13:26:51'),
(137, 26, 'ຕາອາຊີບ', '2021-07-04 13:26:51'),
(138, 26, 'ສາຍຕາ', '2021-07-04 13:26:51');

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
  `user_id` int(11) DEFAULT NULL,
  `ekg_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `province_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `road` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100001', 'VT2420', 'ທ່ານ ແກ້ວອຸໃດ ບົວສີ', '', '1986-01-02', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055590644', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'test', 'test', 0),
('204072100002', 'VT1141', 'ທ່ານ ອິດທິພົນ ວໍລະວົງ', '', '1969-11-27', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055500789', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນປ່າໃໝ່', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100003', 'VT0900', 'ທ່ານ ອຸລະສັກ ບຸນນະສີ', '', '1976-11-02', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055590550', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100004', 'VT2741', 'ທ່ານ ກິໂຕ້ ລາຊາວັດ', '', '1987-10-04', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055590767', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100005', 'VT2558', 'ທ່ານ ຄຳສະຫວັດ ວົງມະນີ', '', '1984-04-22', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055626826', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100006', 'VT2535', 'ທ່ານນາງ ໂສພາລັກ ສິງກາວົງໄຊ', '', '1983-09-23', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055544555', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100007', 'VT1693', 'ທ່ານນາງ ພູຄຳ ວົງລໍຄຳ', '', '1978-03-22', '', 'ຍິງ', 26, '', 'ໄອທີ', '2054289665', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໂພນປ່າເປົ່າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100008', 'VT2723', 'ທ່ານນາງ ມອນມະນີ ຈັນທະອາສາ', '', '1987-11-10', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055584455', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ່', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100009', 'VT2074', 'ທ່ານ ວິລະເດດ ລາດຊະວົງ', '', '1985-04-03', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055628069', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂສກປ່າຫຼວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100010', 'VT3508', 'ທ່ານ ນິຕິພອນ ໄຊຍະແສງ', '', '1988-09-17', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059545659', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100011', 'VT2849', 'ທ່ານ ກົງແກ້ວ ເຄືອມີໄຊ', '', '1987-04-01', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055615153', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100012', 'VT2589', 'ທ່ານນາງ ເຂັມຈັນ ແກ້ວສີລາວົງ', '', '1984-09-12', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055598065', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100013', 'VT2431', 'ທ່ານນາງ ມະນີລັດດາ ວົງໄຊ', '', '1984-05-21', '', 'ຍິງ', 26, '', 'ໄອທີ', '2056666621', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100014', 'VT1734', 'ທ່ານນາງ ປານີພອນ ໄຊຍະຄຳ', '', '1972-01-26', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055798899', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100015', 'VT2829', 'ທ່ານ ຈິດຕະກອນ ສີສຸພັນ', '', '1989-07-19', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055667789', 'ໂສດ', '', '', '', '', '', 'ຫົວຫ້າ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100016', 'VT2403', 'ທ່ານ ພຸດທະສອນ ໂພທິລາດ', '', '1981-05-09', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2056991456', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100017', 'VT3333', 'ທ່ານ ແສງອາລຸນ ຂັນຄຳເພັງ', '', '1985-12-15', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055550516', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຂັນຄຳ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100018', 'VT3357', 'ທ່ານ ແສງຄຳ ລັດຖະມອນ', '', '1985-08-18', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054656226', 'ໂສດ', '', '', '', '', '', 'ສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100019', 'VT3371', 'ທ່ານ ບົວໄລ ສົມວິຈິດ', '', '1985-07-14', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059956969', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100020', 'VT4523', 'ທ່ານ ທອງພູນ ສາສຸດທະສີ', '', '1990-09-18', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055590585', 'ໂສດ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100021', 'VT2845', 'ທ່ານນາງ ວຽງໃຈ ໄຊຍະທິລາ', '', '1987-11-15', '', 'ຍິງ', 26, '', 'ໄອທີ', '2056565696', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແສງຈັນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100022', 'VT2842', 'ທ່ານນາງ ສາຍໃຈ ແກ້ວມະນີ', '', '1987-03-16', '', 'ຍິງ', 26, '', 'ໄອທີ', '2056236665', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100023', 'VT1784', 'ທ່ານນາງ ດາວສະຫວັນ ຈັນທະວົງ', '', '1979-05-29', '', 'ຍິງ', 26, '', 'ໄອທີ', '2054948999', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100024', 'VT2715', 'ທ່ານນາງ ພາວັນ ສໍສຳພັນ', '', '1988-09-04', '', 'ຍິງ', 26, '', 'ໄອທີ', '2059978899', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100025', 'VT2705', 'ທ່ານນາງ ສຸພາພອນ ທິບປັນຍາ', '', '1987-01-09', '', 'ຍິງ', 26, '', 'ໄອທີ', '2052275999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100026', 'VT2840', 'ທ່ານ ປະເສີດສັກ ສຸລິຍະວົງ', '', '1987-10-26', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2058587893', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100027', 'VT2844', 'ທ່ານນາງ ແສງວອນ ອິນຈັກ', '', '1986-02-06', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055599169', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100028', 'VT2827', 'ທ່ານ ວຽງພັນ ມະນີວົງ', '', '1986-03-17', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2056555569', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮູ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100029', 'VT2841', 'ທ່ານ ອານຸສັກ ຈັນທະລາດ', '', '1984-01-26', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055331933', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100030', 'VT2850', 'ທ່ານນາງ ປາດຖະໜາ ສີໂພໄຊ', '', '1986-09-30', '', 'ຍິງ', 26, '', 'ໄອທີ', '2058589921', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100031', 'VT3190', 'ທ່ານ ບຸນກອງ ສຸນດາລາ', '', '1987-07-30', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055555450', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100032', 'VT3332', 'ທ່ານນາງ ພຸດນິນດາ ອີດາວົງ', '', '1990-12-12', '', 'ຍິງ', 26, '', 'ໄອທີ', '2054584848', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100033', 'VT3358', 'ທ່ານ ໂພໄຊ ແອ່ນສີນວນຕາ', '', '1990-01-11', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054172268', 'ໂສດ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100034', 'VT3370', 'ທ່ານ ສອນທະວີ ວົງໃຈທອງ', '', '1988-02-01', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059999939', 'ໂສດ', '', '', '', '', '', 'ຫວ້ຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100035', 'VT3383', 'ທ່ານນາງ ວົງຕາວັນ ພົງໄພ', '', '1990-09-02', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055446298', 'ໂສດ', '', '', '', '', '', 'ຫນອງປາໃນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100036', 'VT3530', 'ທ່ານ ວັນນິດໄຊ ສຸກຖາວອນ', '', '1991-10-12', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2058684888', 'ໂສດ', '', '', '', '', '', 'ໂພນເຄັງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100037', 'VT3536', 'ທ່ານນາງ ສຸກສະຫວັນ ອຸໄທທິດ', '', '1991-10-25', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055059119', 'ໂສດ', '', '', '', '', '', 'ນາເລົ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100038', 'VT3538', 'ທ່ານນາງ ພູສະໄຫວ ດີເລີດ', '', '1991-06-16', '', 'ຍິງ', 26, '', 'ໄອທີ', '2059983999', 'ແຕ່ງງານ', '', '', '', '', '', 'ອີ່ໄລໃຕ້', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100039', 'VT3535', 'ທ່ານ ວັນຊະນະ ຜຸຍສະຫງ່ຽມ', '', '1991-08-27', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2058112388', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100040', 'VT3537', 'ທ່ານ ເດດນະພອນໄຊ ຊຸມພົນພັກດີ', '', '1991-03-18', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059918383', 'ໂສດ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100041', 'VT3534', 'ທ່ານ ສະເຫຼີມສຸກ ພົມມະຈັນ', '', '1991-10-24', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055335588', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100042', 'VT3533', 'ທ່ານ ໄຊບັນດິດ ອິນທະປັນຍາ', '', '1990-07-22', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055887789', 'ໂສດ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100043', 'VT3717', 'ທ່ານ ຄຳຫຼ້າ ແສງມະໂນທອງ', '', '1993-04-03', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055660999', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100044', 'VT3718', 'ທ່ານ ບຸນລັດ ຈິນດາວົງ', '', '1993-08-01', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055557770', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100045', 'VT3715', 'ທ່ານ ພຸດທະສອນ ສິດທິສັກ', '', '1991-04-24', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055552326', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100046', 'VT3716', 'ທ່ານ ສຸກສາຍຄຳ ພົມມະຈິດ', '', '1986-10-10', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054548885', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100047', 'VT3709', 'ທ່ານ ພູວຽງ ເຮືອງມະນີ', '', '1977-11-30', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054162056', 'ໂສດ', '', '', '', '', '', 'ທົ່ງຂັນຄຳ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100048', 'VT3710', 'ທ່ານ ເດຊາ ໄຊໂກສີ', '', '1990-10-24', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055121234', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍາພະ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100049', 'VT3711', 'ທ່ານ ອຸດົມສັກ ພາບຸດດີ', '', '1990-09-02', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059395777', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100050', 'VT3714', 'ທ່ານ ສຸດຕາ ນຶມອາສາ', '', '1985-07-03', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054542399', 'ໂສດ', '', '', '', '', '', 'ດົງໂພນເລົ່າ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100051', 'VT3708', 'ທ່ານ ໂກ້ຄຳ ສີຫາລາດ', '', '1989-07-05', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2055357888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍາພະ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100052', 'VT3720', 'ທ່ານ ອານຸສັກ ໄຊສົມບັດ', '', '1992-04-04', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059996449', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100053', 'VT3719', 'ທ່ານ ເພັຍໄຊ ບຸນມາ', '', '1987-10-10', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054468444', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100054', 'VT3713', 'ທ່ານນາງ ນຸດນິລັນ ສີດາລາ', '', '1993-03-31', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055554298', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຫຼວງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100055', 'VT3712', 'ທ່ານນາງ ກິ່ງສະດາ ລາດຊະວົງ', '', '1991-12-20', '', 'ຍິງ', 26, '', 'ໄອທີ', '2056335656', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຄຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100056', 'VT4117', 'ທ່ານນາງ ສອນນະພາ ສິງສະຫວັນ', '', '1994-05-02', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055595456', 'ໂສດ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100057', 'VT4191', 'ທ່ານ ວັນດີວ່າງ ຫວັງຫຼື', '', '1992-03-14', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2054143131', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100058', 'VT4115', 'ທ່ານ ສຸກຈະເລີນ ບຸນລີວົງ', '', '1991-09-20', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059516395', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100059', 'VT4116', 'ທ່ານ ແສງຈັນ ພານຸເດດ', '', '1988-12-17', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059882626', 'ໂສດ', '', '', '', '', '', 'ໂພນແພງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100060', 'VT4118', 'ທ່ານ ສະຖາພອນ ອິນທະວົງ', '', '1994-02-23', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2059879995', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100061', 'VT3986', 'ທ່ານນາງ ສຸນິສາ ດວງຖະໜອມ', '', '1993-10-30', '', 'ຍິງ', 26, '', 'ໄອທີ', '2058888648', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100062', 'VT3987', 'ທ່ານນາງ ນົກທອງ ຫຼ້າພໍສໍ', '', '1992-04-13', '', 'ຍິງ', 26, '', 'ໄອທີ', '2056148889', 'ໂສດ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100063', 'VT3985', 'ທ່ານ ຫີນເພັດ ອະໄພ', '', '1990-01-05', '', 'ຊາຍ', 26, '', 'ໄອທີ', '2052843575', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100064', 'VT4455', 'ທ່ານນາງ ລິນລີ້ ບຸຜາ', '', '1996-12-08', '', 'ຍິງ', 26, '', 'ໄອທີ', '2055555780', 'ໂສດ', '', '', '', '', '', 'ດຸງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100065', 'VT4456', 'ທ່ານນາງ ສຸດສະດາ ສີລິພົງພັນ', '', '1996-03-16', '', 'ຍິງ', 26, '', 'ໄອທີ', '2058513789', 'ໂສດ', '', '', '', '', '', 'ສວນມອນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100066', 'VT4526', 'ທ່ານນາງ ສຸລິພອນ ຊື່ນຊົມ', '', '1992-10-04', '', 'ຍິງ', 26, '', 'ໄອທີ', '2054353444', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100067', 'VT1091', 'ທ່ານນາງ ລັດສະໝີ ສາຍຊົງເດດ', '', '1968-07-10', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055590326', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100068', 'VT0981', 'ທ່ານ ສີໂນລົດ ຈັນສະຫວ່າງ', '', '1975-08-17', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2055590377', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານ​ທອງ​ໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100069', 'VT4527', 'ທ່ານນາງ ທະນັດຊາ ສົມບູນ', '', '1994-04-24', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055500805', 'ໂສດ', '', '', '', '', '', 'ຫັດສະດີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100070', 'VT2003', 'ທ່ານ ຄຳສອນ ສາລີວັນນະລາ', '', '1976-10-28', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2055621611', 'ໂສດ', '', '', '', '', '', 'ບ້ານດອນ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100071', 'VT1900', 'ທ່ານນາງ ເຄືອຄຳ ໂພທິສັດ', '', '1981-01-01', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055553739', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100072', 'VT1088', 'ທ່ານນາງ ສຸນັນທາ ພອນ', '', '1972-01-28', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2059515789', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100073', 'VT0670', 'ທ່ານ ສຸກຂະພອນ ໃບສີຍາວົງ', '', '1972-06-17', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2059644789', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100074', 'VT2443', 'ທ່ານນາງ ວິລານີ ພັນປຣາຈິດ', '', '1985-09-19', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055705588', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕາດທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100075', 'VT2110', 'ທ່ານນາງ ເສີມປະສົງ ສີປະເສີດ', '', '1979-04-25', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055713377', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100076', 'VT2284', 'ທ່ານນາງ ໄພບຸນ ອ່ອນນຸສອນ', '', '1983-12-24', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055475377', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100077', 'VT1812', 'ທ່ານນາງ ແພນທະລີ ໂທປະການ', '', '1979-12-08', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2052956615', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂສກປ່າຫລວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100078', 'VT1899', 'ທ່ານ ສົມພະໜອມ ພັນທະວົງ', '', '1976-05-16', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2055579777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຈັນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100079', 'VT2124', 'ທ່ານນາງ ອຳພອນ ສະໄຫວງາມ', '', '1978-04-05', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055696598', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງວາທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100080', 'VT3342', 'ທ່ານນາງ ສະດາພອນ ນະຄຽງຈັນ', '', '1975-05-16', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2054132444', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100081', 'VT3385', 'ທ່ານ ພຸດທະສິນ ຈັນທະມຸງຄຸນ', '', '1991-12-08', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2054502000', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100082', 'VT3579', 'ທ່ານນາງ ວິໄລວັນ ສຸນາລາດ', '', '1983-07-08', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055965456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100083', 'VT3610', 'ທ່ານນາງ ສຸກັນຍາ ອຳນວຍພອນ', '', '1991-09-23', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2057946363', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100084', 'VT2442', 'ທ່ານນາງ ທຸມມາລີ ວົງໃຈທອງ', '', '1982-02-21', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055161456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100085', 'VT3433', 'ທ່ານນາງ ແສງມະນີ ສິງຫາປັນຍາ', '', '1983-12-02', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2054795999', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງສະຫວັນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100086', 'VT3434', 'ທ່ານນາງ ອານຸລັກ ກັນລະຍາ', '', '1988-04-16', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055945343', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100087', 'VT3505', 'ທ່ານນາງ ວຽງໄຊ ໄຊຍະລາດ', '', '1979-11-20', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2054569922', 'ໂສດ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100088', 'VT3681', 'ທ່ານນາງ ເຕືອນໃຈ ພົມມະຈັນ', '', '1983-04-25', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2058198727', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100089', 'VT3787', 'ທ່ານ ໄຊຍະສັກ ສິດທິລາດ', '', '1986-12-07', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2054099666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100090', 'VT3957', 'ທ່ານ ສຸກສາຄອນ ພໍນະຖາ', '', '1991-01-25', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2055636116', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100091', 'VT3959', 'ທ່ານນາງ ພະນົມວັນ ສີສົມເດດ', '', '1991-04-12', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2056505661', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100092', 'VT3998', 'ທ່ານນາງ ພັດຊະລິນ ທຳມະວົງ', '', '1991-02-14', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2058195656', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100093', 'VT3958', 'ທ່ານນາງ ກົງພະຈັນ ກາລິຍາວົງ', '', '1994-05-09', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2056668838', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100094', 'VT3960', 'ທ່ານນາງ ຄຳຮູ້ ກິຕິຄຳມູນ', '', '1989-04-09', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2059059578', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງສຸພາບ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100095', 'VT3962', 'ທ່ານນາງ ແອນລິ້ ຄູນຈັນທາ', '', '1995-05-15', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2052222999', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100096', 'VT3963', 'ທ່ານນາງ ວິກັນດາ ພັນປຣາຈິດ', '', '1991-07-26', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055508081', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100097', 'VT3961', 'ທ່ານ ຄຳຫຼ້າ ບຸດສະບາ', '', '1993-08-09', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2052229293', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100098', 'VT4187', 'ທ່ານນາງ ນາລີ ຈັນທະວົງ', '', '1976-11-28', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2055664289', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100099', 'VT4358', 'ທ່ານ ແສງແກ້ວ ສູນທອນມະນີວົງ', '', '1993-09-28', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2059222912', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100100', 'VT4359', 'ທ່ານ ສົມຫວັງ ລາວລີ', '', '1994-07-03', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2059222198', 'ໂສດ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100101', 'VT4463', 'ທ່ານນາງ ຕຸລາພອນ ໄຊຍະພານທອງ', '', '1994-10-11', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2057956363', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100102', 'VT4464', 'ທ່ານນາງ ມ໋ອກດາວັນ ບຸນໜາຜາສຸກ', '', '1993-06-05', '', 'ຍິງ', 26, '', 'ບັນຊີ', '2056734666', 'ໂສດ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100103', 'VT4462', 'ທ່ານ ວັດທະນະສິນ ຄໍາຊະນະ', '', '1993-01-01', '', 'ຊາຍ', 26, '', 'ບັນຊີ', '2054705588', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100104', 'PH1742', 'ທ່ານນາງ ແສງສະເດັດ ແສງມະນີ', '', '1977-08-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055590544', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100105', 'PH2194', 'ທ່ານ ເຕັ້ງ ຊົງ', '', '1976-10-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055590332', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳໄຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100106', 'PH0773', 'ທ່ານ ພູສິນ ສິດທິແສງ', '', '1968-11-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055500530', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຮ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100107', 'PH2684', 'ທ່ານ ສອນທະວີ ແກ້ວປັນຍາ', '', '1987-03-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055799747', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100108', 'PH1861', 'ທ່ານ ເລີດວິໄລ ແສງງາມ', '', '1976-11-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056708999', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100109', 'PH1851', 'ທ່ານນາງ ມະລີມອນ ວໍລະວົງ', '', '1978-10-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054232222', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100110', 'PH1887', 'ທ່ານນາງ ວຽງແກ້ວ ວັນທານຸວົງ', '', '1975-11-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056539595', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100111', 'PH2123', 'ທ່ານນາງ ພິດສະໄໝ ອິນໄພຍະລາດ', '', '1978-06-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054232777', 'ໂສດ', '', '', '', '', '', 'ນາຍາງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100112', 'PH1405', 'ທ່ານນາງ ນຸດ ສະຫວັດດີ', '', '1975-11-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054747456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໃຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100113', 'PH1413', 'ທ່ານ ທອງວັນ ສຸນັນທາ', '', '1972-01-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059230001', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູເຂົາຄຳ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100114', 'PH2093', 'ທ່ານ ພັນທະບູນ ວົງໄຊ', '', '1978-07-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055624466', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຫໍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100115', 'PH1018', 'ທ່ານ ໄພລິນ ຫຼວງສົງຄາມ', '', '1977-07-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600164', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງແກ້ວ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100116', 'PH2188', 'ທ່ານ ໝອນ ສີພອນແກ້ວປະເສີດ', '', '1975-10-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055610133', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100117', 'PH2869', 'ທ່ານນາງ ອຸດາລອນ ຈັນທະວົງ', '', '1987-05-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055165555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100118', 'PH2419', 'ທ່ານນາງ ມີໄຊ ແກ້ວສຸດທິວົງ', '', '1980-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055905835', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຫໍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100119', 'PH1860', 'ທ່ານນາງ ທອງດຳ ໄຊຍະສານ', '', '1979-02-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600189', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100120', 'PH2275', 'ທ່ານ ຊົມ ໄຊສັກສີ', '', '1979-05-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054233330', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະກ້າ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100121', 'PH1886', 'ທ່ານ ເນັ່ງ ສິດທິໂສມ', '', '1976-11-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600184', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂພເໝືອ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100122', 'PH2258', 'ທ່ານ ທອງ ຫວ່າງ', '', '1980-09-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055498555', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳງາດ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100123', 'PH2479', 'ທ່ານ ສາຍສະໝອນ ສາຍມະນີ', '', '1984-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054275333', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100124', 'PH2055', 'ທ່ານ ພິມພາ ພິໄຊຍະວົງ', '', '1978-06-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600109', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100125', 'PH2305', 'ທ່ານ ຈັນທະວົງ ພະລະຄອນ', '', '1980-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055101352', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໄຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100126', 'PH2851', 'ທ່ານ ນາລິນ ອິນທະປັດຖາ', '', '1988-07-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054235558', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ52', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100127', 'PH2978', 'ທ່ານນາງ ອານຸສອນ ສຸວັນນະວົງ', '', '1990-04-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055567466', 'ໂສດ', '', '', '', '', '', 'ໂພນຫມີໃຕ້', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100128', 'PH2654', 'ທ່ານນາງ ສຸກສາຄອນ ແສນວິໄລ', '', '1984-02-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054747471', 'ແຕ່ງງານ', '', '', '', '', '', 'ສ້າງໃຫ່ຍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100129', 'PH2287', 'ທ່ານນາງ ບົວວັນ ເພັງພູນສະຫວັດ', '', '1981-11-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055515552', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທາ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100130', 'PH1415', 'ທ່ານ ບົວເງິນ ສີສະຫວາດ', '', '1972-10-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055002999', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນສານ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100131', 'PH2144', 'ທ່ານ ໄຊປະດິດ ແກ້ວມະນີວົງ', '', '1976-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055976999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຊາຍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100132', 'PH1423', 'ທ່ານ ບຸນໄໝ່ ລາດສະສິມມາ', '', '1967-05-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055823476', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງໄຊ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100133', 'PH2136', 'ທ່ານນາງ ສຸກຖາວອນ ອຸດົມ', '', '1977-07-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055829555', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງວຽງ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100134', 'PH1345', 'ທ່ານນາງ ທິນນາລອນ ພົງສະຫວັນ', '', '1976-06-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055586688', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ່ວຫນອງຫວາຍ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100135', 'PH1421', 'ທ່ານ ຄຳພູ ແກ້ວມະນີວົງ', '', '1977-05-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600168', 'ແຕ່ງງານ', '', '', '', '', '', 'ແຈ້ງສະຫວ່າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100136', 'PH1424', 'ທ່ານ ຈັນ ທັກຂິນ', '', '1975-12-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600250', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂພ', 'ແມດ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100137', 'PH2968', 'ທ່ານ ກົງທອງ ໄຊຍະສານ', '', '1985-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054234222', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100138', 'PH2971', 'ທ່ານນາງ ສົມເພັດ ຈັນທະກົງແສງ', '', '1990-04-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054143456', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງເກົ່າ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100139', 'PH2973', 'ທ່ານນາງ ລຳພັນ ສຸນັນທະລັງສີ', '', '1985-12-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058388878', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໃຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100140', 'PH3189', 'ທ່ານ ໄຊທະນາ ວິໄລເຮືອງ', '', '1986-12-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056689789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100141', 'PH2970', 'ທ່ານ ອຸໄທ ສາລິນທອງນິດ', '', '1985-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059195599', 'ໂສດ', '', '', '', '', '', 'ນາເຄືອ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100142', 'PH2972', 'ທ່ານນາງ ຈັນທະບຸນ ລ່ຽມວົງເດືອນ', '', '1979-06-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058235559', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100143', 'PH2969', 'ທ່ານ ດາລັກ ສຸວັນນະແສງ', '', '1984-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058233335', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເຄືອ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100144', 'PH3188', 'ທ່ານນາງ ຂັນແກ້ວ ແກ້ວປະເສີດ', '', '1988-07-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055558485', 'ໂສດ', '', '', '', '', '', 'ທ່າໂພໄຊ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100145', 'PH2974', 'ທ່ານນາງ ໜູພິນ ພົມມະນີຈັນ', '', '1984-03-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2052888859', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທາ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100146', 'PH2977', 'ທ່ານນາງ ວັນດີ ສີທະວົງ', '', '1988-03-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055544487', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງປຸ່ງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100147', 'PH2975', 'ທ່ານນາງ ຫຼ້າຍອດ ວົງສຳພັນ', '', '1987-07-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055555175', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງແກ້ວ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100148', 'PH2976', 'ທ່ານນາງ ນິພາພອນ ພິມມະສອນ', '', '1990-08-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058383883', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳແຈ້ງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100149', 'PH2979', 'ທ່ານນາງ ຈັນລັກ ວິໄລສອນ', '', '1987-09-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055888000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100150', 'PH3430', 'ທ່ານນາງ ຈັກ ທຳມະວົງ', '', '1988-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054163737', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາມອນ', 'ກາສີ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100151', 'PH3429', 'ທ່ານ ຖາວອນ ຈັນທະວົງ', '', '1991-06-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055552279', 'ໂສດ', '', '', '', '', '', 'ຜາຕັງ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100152', 'PH3432', 'ທ່ານນາງ ລັດສະໜີ ໄຊຍະລາດ', '', '1993-04-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055552102', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າລາດ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100153', 'PH3474', 'ທ່ານ ພູວົງ ພອນວິໄລສຸກ', '', '1988-03-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058389929', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງແກ້ວ', 'ກາສີ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100154', 'PH3561', 'ທ່ານ ອ້ອຍ ແກ້ວສະຫວັນ', '', '1992-09-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055557706', 'ໂສດ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100155', 'PH3645', 'ທ່ານນາງ ເພັດມະນີ ພົມຮັກສາ', '', '1992-05-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055564524', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເຄືອ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100156', 'PH3702', 'ທ່ານ ແສງຕາວັນ ວົງພະຈັນ', '', '1992-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059344411', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູເຂົາຄຳ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100157', 'PH3703', 'ທ່ານ ຫວັນໃຈ ມະນິວົງ', '', '1986-10-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056777795', 'ໂສດ', '', '', '', '', '', 'ກົກກ້ຽງ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100158', 'PH3725', 'ທ່ານ ອາດາ ວ່າງ', '', '1990-01-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055596059', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳງາດ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100159', 'PH0781', 'ທ່ານ ພູຄຽງ ໄຊຍະສານ', '', '1969-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055600045', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຖິ່ນຍຸງ', 'ທຸລະຄົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100160', 'PH2478', 'ທ່ານ ໂພຄຳ ແກ້ວບຸນມີ', '', '1982-03-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054233338', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳແຈ້ງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100161', 'PH2616', 'ທ່ານ ກາຢິ່ງ ທ່າວ', '', '1981-02-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058688866', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100162', 'PH2285', 'ທ່ານ ແວວມະນີ ພິລາວົງ', '', '1982-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055544486', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100163', 'PH3510', 'ທ່ານ ພູວັນ ແກ້ວມີໄຊ', '', '1989-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055576474', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງາມ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100164', 'PH3419', 'ທ່ານ ໄພລິນ ສີພອນແກ້ວປະເສີດ', '', '1991-12-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055571712', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100165', 'PH3405', 'ທ່ານນາງ ຟິກ ສີຈັນທາ', '', '1990-05-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055578883', 'ໂສດ', '', '', '', '', '', 'ຖິ່ນແກ້ວ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100166', 'PH3560', 'ທ່ານ ສຸມັງກອນ ພານຸເດດ', '', '1985-01-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056835557', 'ໂສດ', '', '', '', '', '', 'ຊະນະຄາມ', 'ຊະນະຄາມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100167', 'PH3647', 'ທ່ານນາງ ອຳນວຍ ຍອດວິໄຊ', '', '1989-07-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056421512', 'ແຕ່ງງານ', '', '', '', '', '', 'ເລົ່າຄຳ', 'ເຟືອງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100168', 'PH3835', 'ທ່ານ ຄື ຊົ່ງ', '', '1980-05-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055488233', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳໄຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100169', 'PH3811', 'ທ່ານ ບົວເກດ ເກີດວົງສີ', '', '1988-12-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058422009', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫ່ວາງ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100170', 'PH3874', 'ທ່ານນາງ ມີສາ ເທບພະນົນໄຊ', '', '1992-12-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059978688', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100171', 'PH3887', 'ທ່ານ ພຸດທະສອນ ພົງສະນິດ', '', '1988-12-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059188800', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100172', 'PH3889', 'ທ່ານ ວົງຄຳ ເຫຼັກປະເສີດ', '', '1985-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055477166', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100173', 'PH3888', 'ທ່ານ ທົງໄຊ ຈັນທະວົງ', '', '1992-12-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055476664', 'ໂສດ', '', '', '', '', '', 'ສະກ້າ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100174', 'PH3928', 'ທ່ານນາງ ທິບພະກອນ ເພຍເທບ', '', '1994-04-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059207755', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສັກ', 'ຊະນະຄາມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100175', 'PH3927', 'ທ່ານ ອານົງ ສິງຫາຄົມ', '', '1991-01-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058232425', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໜີເໜືອ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100176', 'PH3929', 'ທ່ານນາງ ມິດສາຄອນ ພົມພິພັກ', '', '1992-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058785566', 'ແຕ່ງງານ', '', '', '', '', '', 'ສ້າງໃຫ່ຍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100177', 'PH3971', 'ທ່ານນາງ ຈິດທິດາ ຖາວອນ', '', '1992-10-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059488887', 'ໂສດ', '', '', '', '', '', 'ໂພສີໄຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100178', 'PH3972', 'ທ່ານນາງ ແສງມະນີ ສຸພິດາ', '', '1993-02-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056098898', 'ໂສດ', '', '', '', '', '', 'ໂພນໝີ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100179', 'PH4037', 'ທ່ານນາງ ຕິກຕາ ວັນທານຸວົງ', '', '1992-04-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055319978', 'ແຕ່ງງານ', '', '', '', '', '', 'ແອກຊ້າງ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100180', 'PH4038', 'ທ່ານ ຄຳຝັນ ພານຸເດດ', '', '1992-07-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055599293', 'ໂສດ', '', '', '', '', '', 'ໂພນໝີ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100181', 'PH4040', 'ທ່ານ ອາທິດ ສຸວາໄລ', '', '1982-03-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2056177754', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100182', 'PH4041', 'ທ່ານ ຄຳໄຂ ຈັນທະວົງໄຊ', '', '1988-01-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2058663888', 'ໂສດ', '', '', '', '', '', 'ໂພນໝີໄຕ້', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100183', 'PH4042', 'ທ່ານນາງ ໄກສອນ ບັນນະວົງ', '', '1994-10-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059765666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໃຕ້', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100184', 'PH4043', 'ທ່ານ ໄພວັນ ສີປະເສີດ', '', '1995-04-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055102582', 'ໂສດ', '', '', '', '', '', 'ນໍ້າເພີນ', 'ໜື່ນ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100185', 'PH4044', 'ທ່ານນາງ ເຢີ ຢ່າງ', '', '1986-10-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059428789', 'ໂສດ', '', '', '', '', '', 'ນາປ່າໄຜ່', 'ໜື່ນ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100186', 'PH4184', 'ທ່ານ ຄຳມ້າວ ພົມມະຫາໄຊ', '', '1982-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054252777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຫໍ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100187', 'PH4195', 'ທ່ານນາງ ບຸນຊູ ນັນທະວົງ', '', '1983-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055567666', 'ໂສດ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ແກ້ວອຸດົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100188', 'PH4349', 'ທ່ານ ພຸດທະໄຊ ໄຊຍະບູນ', '', '1993-02-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2052292947', 'ໂສດ', '', '', '', '', '', 'ຊະນະຄາມ', 'ຊະນະຄາມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100189', 'PH4350', 'ທ່ານ ຄຳປະສົງ ມະນີວົງ', '', '1990-12-31', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2052249900', 'ໂສດ', '', '', '', '', '', 'ນາໂພເໜືອ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100190', 'PH4351', 'ທ່ານ ຄອນສະຫວັນ ທິບພະວົງ', '', '1993-03-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054848300', 'ໂສດ', '', '', '', '', '', 'ເມືອງຊອງ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100191', 'PH4352', 'ທ່ານ ຄຳຕອງ ພຸດທະລີ', '', '1993-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2059813997', 'ໂສດ', '', '', '', '', '', 'ຫົວນາ', 'ບໍລິຄັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100192', 'PH4353', 'ທ່ານນາງ ສິນທະຈັນ ພອນປະເສີດ', '', '1994-02-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054413339', 'ໂສດ', '', '', '', '', '', 'ຫລິ່ງຊັນ', 'ທຸລະຄົມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100193', 'PH4398', 'ທ່ານນາງ ອິນທານີ ວິໄລແສນ', '', '1996-08-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2055554961', 'ໂສດ', '', '', '', '', '', 'ຜາຕັ້ງ', 'ວັງວຽງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100194', 'PH4397', 'ທ່ານນາງ ສີລິວັນ ທັກຂິນ', '', '1996-01-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054241912', 'ໂສດ', '', '', '', '', '', 'ເມືອງແມດ', 'ແມດ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100195', 'PH4399', 'ທ່ານ ແຫຼ້ ສຸວັນນະລາດ', '', '1993-09-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2054940555', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ວຽງຄຳ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100196', 'PH4400', 'ທ່ານ ວັນນາ ວົງສັກ', '', '1995-08-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2052222544', 'ໂສດ', '', '', '', '', '', 'ເມືອງແມດ', 'ແມດ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100197', 'PH4488', 'ທ່ານນາງ ແຟນຕ້າ ຈັນທະວີໄຊ', '', '1995-11-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ວຽງຈັນ', '2052109988', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະກ້າ', 'ໂພນໂຮງ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100198', 'PL1171', 'ທ່ານ ສີພັນ ແສງນວນໄຊ', '', '1967-12-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055590689', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮົ່ມສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100199', 'PL1188', 'ທ່ານ ມານະຈິດ ວົງວີວັນ', '', '1974-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055590788', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100200', 'PL2030', 'ທ່ານ ພອນໄຊ ໄຊຍະແສງ', '', '1978-03-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055500958', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕະຫຼາດວິໄລ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100201', 'PL1172', 'ທ່ານ ເຫຼັກ ສີແສງ', '', '1971-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055600040', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເມືອງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100202', 'PL2623', 'ທ່ານ ສົມນິດ ຮຸ່ງແກ້ວ', '', '1983-11-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054116661', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100203', 'PL1779', 'ທ່ານນາງ ຈັນສຸກ ພູມພະລັງຈັນ', '', '1979-02-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055500685', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100204', 'PL1697', 'ທ່ານ ຈັນທາ ນາມວົງ', '', '1976-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2052266066', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຟ້າ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100205', 'PL1186', 'ທ່ານ ສຸກນິຍົມ ອ່ອນດາວວົງ', '', '1976-10-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2059233334', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງຂວາ', 'ຂວາ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100206', 'PL1178', 'ທ່ານນາງ ຄຳສຸກ ເສດຝາຍ', '', '1974-03-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054400005', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຟ້າ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100207', 'PL1177', 'ທ່ານນາງ ສຸກ ສົມພອນ', '', '1972-01-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055095377', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຟ້າ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100208', 'PL2950', 'ທ່ານນາງ ບົວຊ້ອນ ລາວລີ', '', '1988-04-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058005559', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕະຫລາດວິໄລ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100209', 'PL2948', 'ທ່ານນາງ ນ້ອຍ ດາລາພັນ', '', '1986-09-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058005552', 'ໝ້າຍ', '', '', '', '', '', 'ໂພນສະອາດ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100210', 'PL1189', 'ທ່ານ ຄຳຢີນ ສີວົງໄຊ', '', '1971-04-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2059766588', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100211', 'PL2575', 'ທ່ານ ຄຳຫມັ້ນ ສານລາສີ', '', '1983-12-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055588800', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100212', 'PL3176', 'ທ່ານ ໄຊສະຫວາດ ສຸວົງຄຳ', '', '1985-04-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2059399656', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100213', 'PL2260', 'ທ່ານ ສີທອງ ອຸ່ນນະຄຳ', '', '1968-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054116123', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮົ່ມສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100214', 'PL3175', 'ທ່ານ ຄຳມ້າວ ສຸພອນພົມມະແສງ', '', '1989-11-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055588867', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮມ', 'ບູນເໜືອ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100215', 'PL3178', 'ທ່ານ ສົມຈັນ ສຸລິວົງ', '', '1987-12-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058005500', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100216', 'PL2542', 'ທ່ານ ຈັນທະວົງ ແກ້ວຍະແສງ', '', '1983-05-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056790551', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນອິນໃໝ່', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100217', 'PL3177', 'ທ່ານນາງ ຈັນສຸກແກ້ວ ໃຈອີສານ', '', '1988-05-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054922299', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100218', 'PL3179', 'ທ່ານ ສຸກຖາວອນ ແກ້ວສະຫວັນ', '', '1986-05-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055193780', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100219', 'PL3234', 'ທ່ານນາງ ຄຳມະໄລ ເຈັ່ນຄຳເຫຼັກ', '', '1988-07-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056542655', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100220', 'PL3235', 'ທ່ານ ຫຼ້າແສງ ຍີທິດ', '', '1987-07-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055559661', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງກິນນາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100221', 'PL3236', 'ທ່ານ ທະວີໄຊ ສົມທິລາດ', '', '1986-11-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058006660', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100222', 'PL3301', 'ທ່ານ ສົມໄພວັນ ບຸນເຖິງ', '', '1992-03-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054222289', 'ໂສດ', '', '', '', '', '', 'ວັດແກ້ວ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100223', 'PL3339', 'ທ່ານ ທິດຄຳ ຍິລະສານ', '', '1987-05-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056292444', 'ແຕ່ງງານ', '', '', '', '', '', 'ບູນໃຕ້', 'ບູນໃຕ້', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100224', 'PL3376', 'ທ່ານ ສົມນຶກ ວົງທະສັກ', '', '1991-02-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2059292928', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮົ່ມສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100225', 'PL3656', 'ທ່ານນາງ ເກດແກ້ວ ຂົວຄຳ', '', '1990-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054282225', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດແກ້ວ', 'ຍອດອູ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100226', 'PL3658', 'ທ່ານ ສົມວິຈິດ ແສງອຸລາ', '', '1988-12-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056999799', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຊອງ', 'ໃໝ່', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100227', 'PL2945', 'ທ່ານ ເພັດທອງ ເຫຼັກສຸກ', '', '1969-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056868787', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮມ', 'ບູນເໜືອ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100228', 'PL3233', 'ທ່ານ ຄຳຈັນ ໄຊຍະວົງສານ', '', '1980-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2057622299', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100229', 'PL3657', 'ທ່ານນາງ ຈັນສະຫວັນ ອິນດາ', '', '1991-09-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2052266229', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນອິນໃໝ່', 'ໃໝ່', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100230', 'PL4024', 'ທ່ານ ສຸລິວັນ ຫົງວິໄລຈິດ', '', '1993-10-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058555828', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນສາລີ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100231', 'PL4025', 'ທ່ານ ໄຊສົມພອນ ສໍສຸກັນ', '', '1994-08-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055155787', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຕຸ່ນ', 'ຂວາ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100232', 'PL4026', 'ທ່ານ ທອງພະສຸກ ສະກັນທອງ', '', '1991-07-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2054999979', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຕຸ່ນ', 'ຂວາ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100233', 'PL4027', 'ທ່ານນາງ ພອນຄຳ ໄຊຍະວົງ', '', '1991-02-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058006663', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຊ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100234', 'PL4028', 'ທ່ານນາງ ຄອນພະເພັງ ອຸ່ນນະຄຳ', '', '1993-09-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055343039', 'ໂສດ', '', '', '', '', '', 'ຮົ່ມສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100235', 'PL4261', 'ທ່ານນາງ ສອນນາລີ ສີແສງ', '', '1994-04-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055592264', 'ໂສດ', '', '', '', '', '', 'ຈອມເມືອງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100236', 'PL4260', 'ທ່ານນາງ ມະນີກອນ ວັນນະວົງ', '', '1994-09-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2052333772', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານເມືອງຂວາ', 'ຂວາ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100237', 'PL4394', 'ທ່ານ ພູແສງເພັດ ຢ້າງຍະວົງ', '', '1994-05-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056878818', 'ແຕ່ງງານ', '', '', '', '', '', 'ເທີງ', 'ຍອດອູ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100238', 'PL4393', 'ທ່ານ ທອງແກ້ວ ໄຊຍະແສງ', '', '1995-09-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2058997889', 'ໂສດ', '', '', '', '', '', 'ຈອມທອງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100239', 'PL4392', 'ທ່ານນາງ ສອນທະລາ ຈັນທະລາ', '', '1994-09-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2056758777', 'ໂສດ', '', '', '', '', '', 'ຕະຫຼາດວິໄລ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100240', 'PL4467', 'ທ່ານນາງ ສຸພານິດ ໄຊຍະວົງ', '', '1996-08-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2055577996', 'ໂສດ', '', '', '', '', '', 'ນາຊອງ', 'ໃໝ່', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100241', 'PL4507', 'ທ່ານ ສຸກລະນີ ແສງນວນໄຊ', '', '1996-05-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຜົ້ງສາລີ', '2057962888', 'ໂສດ', '', '', '', '', '', 'ຮົ່ມສະຫວ່າງ', 'ຜົ້ງສາລີ', 'ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100242', 'LN1194', 'ທ່ານ ທອງໄຫວ ພອນໄຊຍາວົງ', '', '1968-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590536', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານທົ່ງໃຈເຫນືອ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100243', 'LN1203', 'ທ່ານ ສຸລິນທອງ ພົນທອງສີ', '', '1972-05-31', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590537', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມສິນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100244', 'LN1198', 'ທ່ານ ຄຳແສງ ທຳມະສອນ', '', '1969-07-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590470', 'ແຕ່ງງານ', '', '', '', '', '', 'ປຸ່ງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100245', 'LN1199', 'ທ່ານ ແອນ້ອຍ ຈິດທະວີ', '', '1969-06-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055600317', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານໃຫມ່', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100246', 'LN2433', 'ທ່ານ ໄພວັນ ອຸເທນສັກດາ', '', '1985-10-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055600204', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100247', 'LN1207', 'ທ່ານ ອຸ່ນຄຳ ເລືອງຍໍເຄືອບອິນ', '', '1969-12-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590103', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງບົວວຽງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100248', 'LN1212', 'ທ່ານ ດາວັນ ເລັດທະນາ', '', '1975-08-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590542', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມສິນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100249', 'LN1205', 'ທ່ານ ສຳລວຍ ມີພິມພາຈັນ', '', '1972-07-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055600320', 'ແຕ່ງງານ', '', '', '', '', '', 'ປ່າສັກ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100250', 'LN1012', 'ທ່ານ ຄອນສະຫວັນ ແກ້ວລະຄອນ', '', '1977-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2056644998', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບຸນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100251', 'LN2012', 'ທ່ານ ສົມສັກ ດວງວິຈິດ', '', '1977-10-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055786213', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100252', 'LN1206', 'ທ່ານ ຄຳຮຸ່ງ ພົມມະຈັນ', '', '1975-07-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055195499', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງເໜືອ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100253', 'LN1195', 'ທ່ານ ອຳພົນ ສໍແສງອິນ', '', '1968-10-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055662282', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100254', 'LN2457', 'ທ່ານ ແພງ ມາລາວົງ', '', '1985-08-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2058583789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100255', 'LN1193', 'ທ່ານ ເຊືອຍ ສຸລິຍາ', '', '1969-07-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2054369998', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100256', 'LN3010', 'ທ່ານນາງ ດາວວຽງ ວິໄລວົງ', '', '1980-02-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2054255666', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງເຫນືອ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100257', 'LN3159', 'ທ່ານ ຈອນພະຈິດ ດວງພົມມາ', '', '1980-06-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059784747', 'ແຕ່ງງານ', '', '', '', '', '', 'ນານ້ອຍ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100258', 'LN1991', 'ທ່ານນາງ ຈັນ ແບ່ງມະນີ', '', '1977-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055600319', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100259', 'LN3012', 'ທ່ານນາງ ສາຍຄຳ ສີປະເສີດ', '', '1986-03-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2054038777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼວງຂອນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100260', 'LN3011', 'ທ່ານນາງ ຄານສະຫວັນ ແສງອຸໄທ', '', '1989-03-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2058013110', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100261', 'LN2253', 'ທ່ານນາງ ວິມົນທາ ແບ່ງມະນີ', '', '1983-05-31', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055560555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບຸນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100262', 'LN1702', 'ທ່ານ ໂຮມສອນ ອິນທະແພງ', '', '1977-03-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055255277', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບຸນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100263', 'LN1200', 'ທ່ານ ສົມຄິດ ອິນທະວົງ', '', '1971-11-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055686292', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຫລວງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100264', 'LN1208', 'ທ່ານ ກຳແກ້ວ ສິດທິພອນ', '', '1970-08-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055785578', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງຍືນ', 'ສິງ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100265', 'LN1211', 'ທ່ານ ຄຳພັນ ຈັນທະສອນ', '', '1969-03-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055488189', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງວຽງ', 'ວຽງພູຄຳ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100266', 'LN2234', 'ທ່ານ ທອງສຸກ ທອງວັນ', '', '1980-12-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2054931444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100267', 'LN2445', 'ທ່ານ ໂອລິດາ ໄຈຍະວົງ', '', '1985-02-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052929899', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແຈ້ງ', 'ລອງ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100268', 'LN3141', 'ທ່ານນາງ ສີອຳພອນ ມາລາວົງ', '', '1989-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055195888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100269', 'LN2933', 'ທ່ານນາງ ລິນນາ ສໍແສງອິນ', '', '1987-02-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052376777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100270', 'LN3461', 'ທ່ານ ສົມວຽນ ຫຼ້າຫຼວງລາດ', '', '1989-09-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2056077993', 'ໂສດ', '', '', '', '', '', 'ຫຼວງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100271', 'LN3593', 'ທ່ານ ວັນມະໂນ ໄຊຍະວົງ', '', '1993-07-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055590606', 'ໂສດ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100272', 'LN3684', 'ທ່ານ ແກ້ວ ສິງປະເສີດ', '', '1982-11-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059174747', 'ແຕ່ງງານ', '', '', '', '', '', 'ເລົາ', 'ນາແລ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100273', 'LN3685', 'ທ່ານ ຄຳມ່ວນ ບຸດສະວົງ', '', '1988-05-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2056944468', 'ແຕ່ງງານ', '', '', '', '', '', 'ປຸ່ງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100274', 'LN3326', 'ທ່ານ ສົມໄຊ ບຸນຍະແສງ', '', '1991-04-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059197999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈຽງຍຶນ', 'ສິງ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100275', 'LN3459', 'ທ່ານນາງ ມະໂນລາ ສີວົງໄຊ', '', '1989-08-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055585086', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນສຳພັນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100276', 'LN3460', 'ທ່ານນາງ ຫັດສະດີ ຕຸລາພັນ', '', '1992-05-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055868585', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວວຽງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100277', 'LN3592', 'ທ່ານ ເຊືອຍ ລໍຫວັນຄິດ', '', '1989-08-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052264844', 'ໂສດ', '', '', '', '', '', 'ປຸ່ງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100278', 'LN3594', 'ທ່ານ ບຸນທອນ ແສງທະວົງ', '', '1989-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2054365777', 'ແຕ່ງງານ', '', '', '', '', '', 'ປຸ່ງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100279', 'LN3838', 'ທ່ານ ພຸດທະສັກ ອິນທະວົງ', '', '1987-02-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052343322', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100280', 'LN4029', 'ທ່ານ ສີແພງ ລີຢົງວາ', '', '1990-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059257257', 'ໂສດ', '', '', '', '', '', 'ໜອງບົວວຽງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100281', 'LN4009', 'ທ່ານ ຈ໋າຍຕໍ້ ກວ໋າງບັນແກ໋', '', '1992-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059880077', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳແງ້ນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100282', 'LN4010', 'ທ່ານນາງ ສຸດາລັດ ວິວົງທອງ', '', '1993-09-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059255744', 'ໂສດ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100283', 'LN4258', 'ທ່ານ ຖາວອນ ໄຊເມືອງນາມ', '', '1993-12-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2058020777', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມສິນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100284', 'LN4259', 'ທ່ານ ເພັງລີ ສາລີຄຳສຸກເຍ່ຍເຊັງ', '', '1993-01-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059471355', 'ໂສດ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100285', 'LN4429', 'ທ່ານນາງ ເທ່ ພົມປະດິດ', '', '1992-07-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2059971666', 'ໂສດ', '', '', '', '', '', 'ປຸ່ງ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100286', 'LN4430', 'ທ່ານນາງ ວຽງວິໄລ ຈັນທະວົງ', '', '1993-03-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2056041888', 'ໂສດ', '', '', '', '', '', 'ນາຫ້ອມ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100287', 'LN4431', 'ທ່ານນາງ ນາງ ທິບພະສອນ ໜໍ່ປະເສີດ', '', '1992-06-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052290606', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100288', 'LN4432', 'ທ່ານ ພຶດສະພາ ລີໄຈຈາ', '', '1994-05-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2052800555', 'ໂສດ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ຫຼວງນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100289', 'LN4433', 'ທ່ານ ຕຸ້ຍ ລໍຄຳໄຜ່', '', '1993-06-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງນໍ້າທາ', '2055880868', 'ແຕ່ງງານ', '', '', '', '', '', 'ປຸ່ງ', 'ນ້ຳທາ', 'ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100290', 'UX0898', 'ທ່ານ ວົງແກ້ວ ກິ່ງສັກດາ', '', '1976-05-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055500533', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ່', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100291', 'UX1242', 'ທ່ານ ຄຳເພົ້າ ຜຸຍບົວຈັນ', '', '1966-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055500801', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົາ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100292', 'UX1674', 'ທ່ານນາງ ໂພຄຳ ລືນາມມະຈັກ', '', '1971-09-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055590693', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຈງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100293', 'UX1238', 'ທ່ານ ບຸນວົງ ອຸ່ນພະຈັນ', '', '1967-04-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056866999', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100294', 'UX1240', 'ທ່ານ ສົມເພັດ ອິນທະນາມ', '', '1966-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055782999', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100295', 'UX1858', 'ທ່ານ ບົວໃສ ໂພທິລັກ', '', '1976-09-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059594949', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາແລ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100296', 'UX1246', 'ທ່ານ ວິໄລ ຈິນດາລາ', '', '1966-11-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055182222', 'ແຕ່ງງານ', '', '', '', '', '', 'ແຟນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100297', 'UX1701', 'ທ່ານ ຈັນຖະໝອມ ໂພທິວັນ', '', '1977-05-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056345999', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແກ້ວ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100298', 'UX1859', 'ທ່ານ ວົງເພັດ ວັນນະສີ', '', '1978-11-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054532555', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100299', 'UX2151', 'ທ່ານ ສີສຸກອນ ແບ່ງຕະນະ', '', '1977-11-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055980888', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100300', 'UX1245', 'ທ່ານ ຄຳເພັດ ພົງສະນາ', '', '1971-07-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055980269', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຮມສຸກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100301', 'UX2152', 'ທ່ານ ອ່ອນຈັນ ອຳພາວົງ', '', '1974-03-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055500804', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນເຫນືອ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100302', 'UX1247', 'ທ່ານ ສີສຸພັນ ເຫນືອມະແສງ', '', '1972-09-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055681599', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100303', 'UX2594', 'ທ່ານ ເພັດທະນູສອນ ບຸດຕະວົງ', '', '1983-07-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055808648', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100304', 'UX1910', 'ທ່ານນາງ ມະນີວັນ ກິ່ງສັກດາ', '', '1982-08-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059880888', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຊ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100305', 'UX2949', 'ທ່ານນາງ ບົວທອງ ລັດສະໝີ', '', '1984-08-31', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059766999', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໄຊ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100306', 'UX2527', 'ທ່ານນາງ ແກ້ວນາລີ ຈະເລີນສຸກ', '', '1983-06-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054933336', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງກໍ່ເດື່ອ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100307', 'UX1857', 'ທ່ານ ຄຳສຸກ ຈຳປາທອງ', '', '1968-06-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056062999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຫວານນ້ອຍ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100308', 'UX3180', 'ທ່ານນາງ ຈຳມາລາ ພົມມະຈັກ', '', '1989-04-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055564493', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100309', 'UX2942', 'ທ່ານນາງ ສຸອຳພອນ ອິນທະສັກ', '', '1984-06-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055326262', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງກໍ່ເດື່ອ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100310', 'UX1239', 'ທ່ານນາງ ແອັດ ປັນຍາສິດ', '', '1970-11-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055981999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົາ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100311', 'UX2944', 'ທ່ານ ເຈັຍ ມົວ', '', '1989-07-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054118148', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາແສນຄຳ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100312', 'UX2943', 'ທ່ານ ທິບພາວັນ ວົງປະຈິດ', '', '1989-09-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056588144', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100313', 'UX3217', 'ທ່ານນາງ ກິ່ງມາໄລ ສຸວັນນີ', '', '1990-10-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059797987', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂຄ້ງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100314', 'UX1243', 'ທ່ານ ພົມມີ ອິນທິດາ', '', '1969-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056386999', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຖ້ຽວ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100315', 'UX2498', 'ທ່ານ ວຽງສີ ໄຊຍະສອນ', '', '1984-12-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055446679', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100316', 'UX3353', 'ທ່ານ ສອນໄຊ ອິນທະສອນ', '', '1990-08-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055680859', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100317', 'UX3354', 'ທ່ານ ແສງອາທິດ ແສງຈັນທະລາ', '', '1990-11-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055590714', 'ໂສດ', '', '', '', '', '', 'ປ່າສັກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100318', 'UX3563', 'ທ່ານ ບົວລີ ແກ້ວປັນຍາ', '', '1990-08-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2058055550', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄລ', 'ແບ່ງ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100319', 'UX3565', 'ທ່ານ ແສງສຸລີ ມົວຈົງລື', '', '1988-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055557170', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຮມສຸກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100320', 'UX3566', 'ທ່ານ ສົມບັດ ກິ່ງສັກດາ', '', '1987-03-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055788858', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖີ່ນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100321', 'UX3667', 'ທ່ານ ໄມ່ບຸນສີ ພູມມະແສງ', '', '1987-09-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055200950', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຮຸນ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100322', 'UX3664', 'ທ່ານ ຫຸມເພັງ ວັນນະສັກ', '', '1989-10-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054949666', 'ແຕ່ງງານ', '', '', '', '', '', 'ກໍນ້ອຍ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100323', 'UX3666', 'ທ່ານນາງ ມະນີວອນ ຜຸຍບົວຈັນ', '', '1991-11-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059161666', 'ໂສດ', '', '', '', '', '', 'ນາເລົາ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100324', 'UX3650', 'ທ່ານ ແສງໄຊ ຊາວມົ້ງວື່', '', '1989-02-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054557555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຮມໄຊ', 'ນາໝໍ້', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100325', 'UX3652', 'ທ່ານ ທອງສີ ວາຄື', '', '1989-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056433950', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ຮຸນ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100326', 'UX3181', 'ທ່ານ ສຸລິສັກ ວ້າງ', '', '1982-01-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054961019', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100327', 'UX3216', 'ທ່ານນາງ ວອນ ສ້ອມມະນີ', '', '1989-05-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055539322', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100328', 'UX3215', 'ທ່ານ ວົງສະຫວັນ ສີຈັນທະລາດ', '', '1985-10-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054889000', 'ແຕ່ງງານ', '', '', '', '', '', 'ປ່າສັກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100329', 'UX3352', 'ທ່ານ ເພັດດາວທອງ ອຸ່ນພະຈັນ', '', '1988-05-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059600555', 'ໂສດ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100330', 'UX3562', 'ທ່ານນາງ ຄຳຫຼ້າ ສີລີວົງ', '', '1990-06-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2057924499', 'ແຕ່ງງານ', '', '', '', '', '', 'ປ່າສັກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100331', 'UX3564', 'ທ່ານ ຄຳຊັ່ງ ວົງເພັດ', '', '1990-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055550067', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍລໍ', 'ງາ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100332', 'UX3577', 'ທ່ານນາງ ບ່າລີ ມົວເກຍເຮີ', '', '1991-01-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055781111', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100333', 'UX3665', 'ທ່ານນາງ ບົວຂາວ ໄຊສົງຄາ', '', '1992-06-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2058956800', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຈງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100334', 'UX3834', 'ທ່ານ ຄຳແດງ ລືນາມມະຈັກ', '', '1984-11-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2058845454', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຂຽວ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100335', 'UX3648', 'ທ່ານ ສຸລິນ ເຍື່ອມສຳລານ', '', '1988-09-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054005101', 'ແຕ່ງງານ', '', '', '', '', '', 'ປ່າສັກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100336', 'UX3649', 'ທ່ານ ຊາຍແກ້ວ ວົງພະຈັນ', '', '1988-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054033551', 'ໂສດ', '', '', '', '', '', 'ເຈງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100337', 'UX3651', 'ທ່ານ ສິນໄຊ ລັດສະໝີ', '', '1990-12-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055576065', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຈງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100338', 'UX3789', 'ທ່ານ ວິລັນເນດ ອິນທະມາດ', '', '1990-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2059123452', 'ໂສດ', '', '', '', '', '', 'ຫວ້ຍອອ່ນ', 'ນາໝໍ້', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100339', 'UX3653', 'ທ່ານນາງ ອຸມາພອນ ອິນດາລາ', '', '1992-03-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2052310009', 'ແຕ່ງງານ', '', '', '', '', '', 'ປ່ສັກ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100340', 'UX4196', 'ທ່ານ ດອນໄຊ ຄຳແຫງ', '', '1990-08-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054545751', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100341', 'UX4233', 'ທ່ານ ດວງຈັນ ມົວເກຍເຮີ', '', '1988-08-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2055879595', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100342', 'UX4339', 'ທ່ານນາງ ຕຸ ອິນທິດາ', '', '1993-10-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056522289', 'ໂສດ', '', '', '', '', '', 'ທ້ຽວ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100343', 'UX4340', 'ທ່ານ ແກ້ວມຸງຄຸນ ແກ້ວໜູຈັນ', '', '1993-07-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054548188', 'ໂສດ', '', '', '', '', '', 'ນາຫວານນ້ອຍ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100344', 'UX4341', 'ທ່ານນາງ ພາລີ ອິນທະນາມ', '', '1994-03-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2056588899', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງໄຮ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100345', 'UX4342', 'ທ່ານ ໂຕ້ ອິນວັນດິດ', '', '1993-08-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054626222', 'ໂສດ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100346', 'UX4343', 'ທ່ານ ດ່ອນ ຈ້ອຍມະນີ', '', '1992-09-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອຸດົມໄຊ', '2054935999', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຈງ', 'ໄຊ', 'ອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100347', 'BK1214', 'ທ່ານ ສູນທອນ ມະນີສອນ', '', '1966-09-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056547896', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100348', 'BK1227', 'ທ່ານ ຈອມແສງ ໄຊຍະແສງ', '', '1968-05-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056876666', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໃຫມ່ພູຄາ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100349', 'BK1350', 'ທ່ານ ເພັດສອນ ອິນສີບົວ', '', '1970-11-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055590467', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນແກ່ນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100350', 'BK1215', 'ທ່ານນາງ ທອງສະມຸດ ເພັດທະຈິດ', '', '1973-07-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2054289196', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງຊາຍ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100351', 'BK1831', 'ທ່ານນາງ ຂັນຄຳ ລໍຕະກຸນ', '', '1981-08-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056867444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100352', 'BK1219', 'ທ່ານ ທອງຈັນ ວັນນະສີ', '', '1967-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055590692', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100353', 'BK1228', 'ທ່ານ ສົມເພັດ ພົມມະໃຈ', '', '1970-04-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059525959', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100354', 'BK1231', 'ທ່ານ ແສງຍອດ ວິໄລສານ', '', '1974-04-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055684399', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100355', 'BK1234', 'ທ່ານ ທະວີໄຊ ດວງມາໄລ', '', '1976-01-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2052438888', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100356', 'BK1217', 'ທ່ານ ອ່ອນສີ ວິລະພັນ', '', '1970-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2054318444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100357', 'BK1220', 'ທ່ານ ໜໍ່ແກ້ວ ໄຊຍະວົງ', '', '1972-04-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058635888', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100358', 'BK2067', 'ທ່ານນາງ ຄຳປິ່ນ ວິໄລສຸກ', '', '1980-06-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055683469', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫຍ່ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100359', 'BK2066', 'ທ່ານນາງ ມອນມະລັດ ແຊ່ວູ່', '', '1979-06-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059428996', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫຍ່ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100360', 'BK1703', 'ທ່ານນາງ ມະລີສອນ ເພັດຈະເລີນ', '', '1978-04-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2054715111', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນແກ້ວ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100361', 'BK1406', 'ທ່ານນາງ ຄຳຫຼ້າ ພິດສະລາດ', '', '1975-11-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055208555', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100362', 'BK1218', 'ທ່ານນາງ ສີອາມອນ ກິດຕິມານູລັກ', '', '1975-09-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059515555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນແກ້ວ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100363', 'BK1233', 'ທ່ານ ທອງລິດ ສຸລິຍະສັກ', '', '1976-01-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055285999', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100364', 'BK1785', 'ທ່ານນາງ ວົງວຽນ ສີປະເສີດ', '', '1978-04-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055683252', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນແກ່ນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100365', 'BK1230', 'ທ່ານ ສິດທິກອນ ເສີມມາລາວັນ', '', '1974-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055184444', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100366', 'BK1229', 'ທ່ານ ຄຳຈັນ ໜານສາມ', '', '1972-02-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2054903669', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100367', 'BK1918', 'ທ່ານ ມູນ ວິຈິດດວງ', '', '1979-07-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058034222', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳກຶ້ງ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100368', 'BK1232', 'ທ່ານ ບົວພັນ ສີສຸກ', '', '1977-11-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056091111', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຊາຍ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100369', 'BK2453', 'ທ່ານ ສາຍສະໝອນ ເທບຄຳເຮືອງ', '', '1983-08-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055629577', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100370', 'BK2221', 'ທ່ານນາງ ອ່ອນສີ ສິລິປັນຍາ', '', '1979-09-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056347888', 'ແຕ່ງງານ', '', '', '', '', '', 'ມຸງຄຸນສິນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100371', 'BK2199', 'ທ່ານ ວົງຈັນ ພັນທະບຸດ', '', '1978-11-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055983456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫຍ່ຫ້ວຍຊາຍເໜືອ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100372', 'BK2520', 'ທ່ານນາງ ຈັນທິບ ປະເສີດ', '', '1981-12-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055683491', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນແກ່ນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100373', 'BK2425', 'ທ່ານນາງ ດວງສອນ ດວງຈິດ', '', '1983-01-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055078666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100374', 'BK1226', 'ທ່ານ ທອງສະຫວັນ ຄ້ວນລະພິມ', '', '1970-09-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055600163', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕົ້ນເຜີ້ງ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100375', 'BK2962', 'ທ່ານນາງ ວັນທິດາ ລໍມີໄຊ', '', '1985-08-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2057888555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕົ້ນເຜີ້ງ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100376', 'BK2963', 'ທ່ານ ທອງ ມະນີສອນ', '', '1985-08-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055883723', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຖິ່ນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100377', 'BK2706', 'ທ່ານ ວິໄຊ ນວນຈັນສີ', '', '1984-08-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055121333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ພູຄາ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100378', 'BK2966', 'ທ່ານ ສີພັນດອນ ດວງເພັດ', '', '1977-09-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055583800', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊພັດທະນາ', 'ເມີງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100379', 'BK2964', 'ທ່ານນາງ ສຸວັນນີ ອິນທະພອນ', '', '1989-07-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2052934888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100380', 'BK2965', 'ທ່ານນາງ ຈັນພອນ ມຽງວົງໄຊ', '', '1991-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059595859', 'ໂສດ', '', '', '', '', '', 'ມ່ວງແກ້ວ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100381', 'BK3195', 'ທ່ານ ໜອມ ພົມມະລຽນ', '', '1988-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055581456', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ແກ້ວ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100382', 'BK3196', 'ທ່ານ ສົດໃສ ທອງສະຫັວນ', '', '1984-11-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056792394', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່ງ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100383', 'BK3355', 'ທ່ານນາງ ວິລະທົມ ອຸ່ນທະວີ', '', '1990-09-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055559236', 'ໂສດ', '', '', '', '', '', 'ສົມສະຫວ່າງ', 'ຜາອຸດົມ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100384', 'BK3356', 'ທ່ານ ອ່ອນແກ້ວ ແສງປະດິດ', '', '1985-11-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055774799', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100385', 'BK3539', 'ທ່ານ ສະວິນ ອິນທະເສນ', '', '1989-07-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058367788', 'ແຕ່ງງານ', '', '', '', '', '', 'ເກັ່ງເກົ່າ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100386', 'BK3540', 'ທ່ານນາງ ສາຍບົວ ແກ້ວອຳພອນ', '', '1992-09-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055550497', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳເກີ່ງແກ້ວ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100387', 'BK4192', 'ທ່ານ ເສົາແກ້ວ ມະຫາລາດ', '', '1993-05-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055269595', 'ໂສດ', '', '', '', '', '', 'ໃຫຍ່ຫ້ວຍຊາຍເໜືອ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100388', 'BK3913', 'ທ່ານ ອານຸພົນ ກຽງຄຳ', '', '1989-10-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055883999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍເໜືອ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100389', 'BK4032', 'ທ່ານ ຈັນເພັງ ຄອນດາວົງ', '', '1992-12-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056487999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຄໍ້', 'ປາກອູ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100390', 'BK4033', 'ທ່ານ ອຸກິດ ຈັນສະທິດ', '', '1992-08-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056246449', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຊາຍເໜືອ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100391', 'BK4034', 'ທ່ານ ສຸທີ ວິໄລສັກ', '', '1987-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055999248', 'ໂສດ', '', '', '', '', '', 'ທົ່ງແສງຈັນ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100392', 'BK4035', 'ທ່ານນາງ ແສງເດືອນ ລ້ານຄຳແດງ', '', '1991-09-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2054545541', 'ໂສດ', '', '', '', '', '', 'ອຸດົມ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100393', 'BK4036', 'ທ່ານນາງ ສຸທິດາ ສີປະຊາ', '', '1988-08-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058777878', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100394', 'BK4047', 'ທ່ານ ລັດຕະນະ ໂພທິໄຕ', '', '1991-12-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059858777', 'ໂສດ', '', '', '', '', '', 'ນາສະຫວ່າງ', 'ປາກລາຍ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100395', 'BK4310', 'ທ່ານນາງ ນ້ຳຝົນ ຄຳມະນີ', '', '1994-07-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055118828', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫ່ຍຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100396', 'BK4311', 'ທ່ານນາງ ພອນສະຫວັນ ລໍຫວັນໄຊ', '', '1995-04-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056561619', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຊາຍ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100397', 'BK4312', 'ທ່ານ ເອກະໄຊ ສະຕິ', '', '1994-03-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056246900', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫ່ຍຫວ້ຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100398', 'BK4313', 'ທ່ານ ຄຳຫຼ້າ ວົງດາຈັນ', '', '1993-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055090890', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ພູຄາ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100399', 'BK4355', 'ທ່ານນາງ ມີນາ ໄຊຍະແສງ', '', '1992-03-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2059204888', 'ໂສດ', '', '', '', '', '', 'ໄໜ່ພູຄຳ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100400', 'BK4356', 'ທ່ານນາງ ຫຼ້າຊ້ອຍ ໄຊຍະເດດ', '', '1992-10-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055554571', 'ໂສດ', '', '', '', '', '', 'ນ້ຳຄຳ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100401', 'BK4357', 'ທ່ານນາງ ແພທອງ ໄຊຍະຈັກ', '', '1995-01-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056247900', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100402', 'BK4405', 'ທ່ານ ສົງຄາມ ວົງສະຫວັນ', '', '1994-05-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055077577', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫ່ຍນ້ຳປຸກ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100403', 'BK4406', 'ທ່ານ ຈັນທະພອນ ສຸນາລົງ', '', '1994-02-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058935543', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຄຳ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100404', 'BK4407', 'ທ່ານ ພອນແກ້ວ ທະວີສຸກ', '', '1992-03-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058873399', 'ໂສດ', '', '', '', '', '', 'ໃຫ່ຍຫ້ວຍຊາຍໃຕ້', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100405', 'BK4408', 'ທ່ານ ຈ່າຍນ້ອຍ ໄຊຍະລາດ', '', '1991-05-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2058103336', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼວງສິງໃຈ', 'ຕົ້ນເຜີ້ງ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100406', 'BK4409', 'ທ່ານ ຄຳແກ້ວ ທອງເພັດ', '', '1997-08-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2055313360', 'ໂສດ', '', '', '', '', '', 'ໃໝ່ພູຄາ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100407', 'BK4410', 'ທ່ານ ສຸດສາຄອນ ພວງສີລິ', '', '1992-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍ່ແກ້ວ', '2056666672', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຫ້ວຍຊາຍ', 'ບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100408', 'LP1269', 'ທ່ານ ສຸກສະຫວັດ ມີໄຊ', '', '1975-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055590643', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາວຽງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100409', 'LP1291', 'ທ່ານ ບຸນສະຫວາດ ໝຶ່ນສຸກ', '', '1969-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055590328', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງງ່າ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100410', 'LP2447', 'ທ່ານ ຈັນດາລາ ບຸນນະຜົນ', '', '1984-12-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055590141', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດແສນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100411', 'LP1292', 'ທ່ານ ຈືຢ່າງ ແສນໄຊ', '', '1974-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055600154', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານເມືອງງາ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100412', 'LP1288', 'ທ່ານ ຫົງແກ້ວ ຄຸນພະຈັນສີ', '', '1974-04-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055671196', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຊ່າງຄ້ອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100413', 'LP1672', 'ທ່ານ ບຸນເລີດ ທະວີພອນ', '', '1975-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055500508', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານໂພສີ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100414', 'LP1704', 'ທ່ານ ສົມພາວັນ ປັນຍາສິດ', '', '1979-11-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055792229', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປ່ອງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100415', 'LP2237', 'ທ່ານ ຄຳສຸກ ສີປະເສີດ', '', '1983-06-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055500502', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄົກວ່າ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100416', 'LP1290', 'ທ່ານ ແສງແກ້ວ ແສງດາໄລ', '', '1974-12-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055500765', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປ່ອງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100417', 'LP1293', 'ທ່ານ ແສງສຸລິຍາ ສໍສິງດາລາ', '', '1973-10-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055893879', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານວັດທາດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100418', 'LP2624', 'ທ່ານ ໄຊຍະສອນ ວິຣະວົງສາ', '', '1986-11-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055788877', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງໃໝ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100419', 'LP1263', 'ທ່ານນາງ ແສງມະນີ ພົງວິຈິດ', '', '1975-02-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056574499', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານດອນໃຫມ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100420', 'LP1816', 'ທ່ານ ພົງສະໄຫມ ເດລາອັນທະ', '', '1977-07-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055172225', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຖິ່ນຈະເລີນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100421', 'LP1021', 'ທ່ານ ຈັນ ບຸນທອງສີ', '', '1967-08-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054285777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງແມນ', 'ຈອມເພັດ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100422', 'LP1287', 'ທ່ານ ພົງສະຫັວນ ກິດຕານຸວົງ', '', '1973-02-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055500602', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫຼັກຈະເລີນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100423', 'LP2487', 'ທ່ານ ບຸນຍີ້ມ ອິນທະວັນ', '', '1982-05-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055810704', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານດອນໂມ', 'ຊຽງເງິນ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100424', 'LP1883', 'ທ່ານນາງ ບຸນເລີດ ແສງສຸລິຍາ', '', '1981-01-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055774679', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຄມຂວາງ', 'ງອຍ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100425', 'LP2548', 'ທ່ານ ສົມຫມາຍ ໄຊຍະເພັດ', '', '1980-07-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055587791', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ້າ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100426', 'LP1268', 'ທ່ານ ທັດສະຄອນ ສຸລິໂຍສັກ', '', '1968-09-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055378899', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຊຽງເຫລັກ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100427', 'LP1270', 'ທ່ານ ສີວອນ ໄຊຍະເພັດ', '', '1971-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056670023', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຮ່ຽນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100428', 'LP2412', 'ທ່ານ ກິເພັດ ວົງດາລາ', '', '1980-04-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055299299', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສຳພັນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100429', 'LP2460', 'ທ່ານນາງ ຈິດນະຄອນ ຄອນສະຫັວນ', '', '1983-07-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058299919', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາວຽງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100430', 'LP1278', 'ທ່ານນາງ ບົວລອຍ ແສງສຸລິຍາ', '', '1974-06-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058686789', 'ຮ້າງ', '', '', '', '', '', 'ທາດຮ່ຽນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100431', 'LP3226', 'ທ່ານ ເນັ່ງ ເລົ່າ', '', '1986-02-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059995177', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫຼັກຈະເລີນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100432', 'LP3223', 'ທ່ານນາງ ຈັນມະນີ ພົມມະຄຸນນາ', '', '1988-08-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059294444', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງງາ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100433', 'LP3227', 'ທ່ານນາງ ບຸນສົມຈັນ ໂພທິໄຕ', '', '1986-04-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059803333', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄີລີ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100434', 'LP3482', 'ທ່ານ ສົມໝາຍ ເລັ່ງສະຫວັດ', '', '1986-06-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056190123', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງງາ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100435', 'LP3221', 'ທ່ານ ພູວຽງ ທະວີພອນ', '', '1985-03-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055545673', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100436', 'LP3224', 'ທ່ານນາງ ສີອຳພອນ ດາວສະຫວັນ', '', '1989-06-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059266662', 'ແຕ່ງງານ', '', '', '', '', '', 'ນູນສະຫວາດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100437', 'LP3219', 'ທ່ານນາງ ສອນເພັດ ກຸສົນສະຫັວດ', '', '1984-07-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058685588', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມຢ່ອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100438', 'LP3218', 'ທ່ານນາງ ຈັນທະຫົງ ຈັນທະລາດ', '', '1990-10-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058177666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຮ່ຽນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100439', 'LP3222', 'ທ່ານນາງ ສຸດຕິມາ ລັດຕະນະວົງ', '', '1988-03-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056395639', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100440', 'LP3225', 'ທ່ານ ຫົງຄຳ ມະນີສອນ', '', '1988-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059812222', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100441', 'LP2155', 'ທ່ານ ແຫຼວທອງ ສຸກກະເສີມ', '', '1980-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054866668', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດໂບສົດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100442', 'LP1286', 'ທ່ານ ສະດາຄຳ ພູມີ', '', '1973-02-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054799966', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານວິຊຸນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100443', 'LP1921', 'ທ່ານ ເມກສະຫັວນ ວົງປະດິດ', '', '1978-04-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058627999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄອຍ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100444', 'LP2512', 'ທ່ານ ຫຸມພັນ ທິບພາວົງ', '', '1984-11-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055671176', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາວຽງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100445', 'LP1280', 'ທ່ານນາງ ສົມຈັນ ລັດຕະນະວົງ', '', '1973-05-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055728933', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານວັດທາດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100446', 'LP1281', 'ທ່ານ ອານຸສັກ ກຸສົນສະຫັວດ', '', '1976-02-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059509898', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາໂຄມ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100447', 'LP1285', 'ທ່ານ ສົມສັກ ຫົງມີນາ', '', '1973-12-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056447544', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຊ້າງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100448', 'LP1300', 'ທ່ານ ທອງພັນ ຄຳພິລາຮອງ', '', '1968-11-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055778855', 'ແຕ່ງງານ', '', '', '', '', '', 'ບາດພະ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100449', 'LP3576', 'ທ່ານ ສຸລິຂັນ ເລລີໂອ', '', '1990-10-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055822052', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວທີ1', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100450', 'LP3771', 'ທ່ານນາງ ຈັນສະຫວ່າງ ສຸກພິລານຸວົງ', '', '1989-02-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056669889', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນຫຼວງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100451', 'LP3767', 'ທ່ານ ຕຸ່ມຄຳ ລັດຕະນະ', '', '1985-07-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059666107', 'ຮ້າງ', '', '', '', '', '', 'ຜານົມ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100452', 'LP3769', 'ທ່ານ ຕຸ້ຍ ພິໄລສານ', '', '1985-01-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055329617', 'ໂສດ', '', '', '', '', '', 'ນາຫຼວງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100453', 'LP3770', 'ທ່ານ ບຼົງ ທໍ່', '', '1990-11-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055424947', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາມແຍກ', 'ພູຄູນ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100454', 'LP3773', 'ທ່ານ ທອງດຳ ທຳມະວົງ', '', '1988-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058123405', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກບາກ', 'ງອຍ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100455', 'LP2448', 'ທ່ານ ທຽນເງິນ ສຸລິດອນ', '', '1970-10-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055080222', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຊ້າງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100456', 'LP2549', 'ທ່ານ ສາຍສະຫມອນ ຈິດຕະພອນ', '', '1981-01-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059300031', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສຳພັນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100457', 'LP3228', 'ທ່ານນາງ ມະລິນສຸດາ ປະທຸມວັນ', '', '1987-06-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059293333', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດທາດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100458', 'LP2243', 'ທ່ານນາງ ພູສາວອນ ພົມສະຫັວນ', '', '1983-03-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055392515', 'ຮ້າງ', '', '', '', '', '', 'ບ້ານຂາມຢ່ອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100459', 'LP1924', 'ທ່ານນາງ ດາລາວັນ ພອນສະຫັວນ', '', '1981-02-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058357337', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານສາຍລົມ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100460', 'LP2596', 'ທ່ານ ກອງມີ ສົມພົນວິລະວົງ', '', '1984-11-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055206848', 'ແຕ່ງງານ', '', '', '', '', '', 'ສັງຄະໂລກ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100461', 'LP3731', 'ທ່ານ ສົມນຶກ ດີທະວົງ', '', '1975-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054861222', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງແມນ', 'ຈອມເພັດ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100462', 'LP3788', 'ທ່ານ ວິໄລເພັດ ສູນດາຮັກ', '', '1992-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058177000', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງງາ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100463', 'LP3575', 'ທ່ານ ທອງຈັນ ມານີວັນ', '', '1981-11-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055126555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງແກ້ວ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100464', 'LP3624', 'ທ່ານ ແມັກກີ້ ຄຳພິລາຮອງ', '', '1993-02-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054554335', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະບາດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100465', 'LP3772', 'ທ່ານນາງ ຄຳຫຼ້າ ຝັ້ນຈັນທີ', '', '1993-09-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055641164', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈູມຄ້ອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100466', 'LP3768', 'ທ່ານ ຫຸມດາວເພັດ ທະນາສັກ', '', '1986-05-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059405005', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໃໝ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100467', 'LP4020', 'ທ່ານ ສຸກທິວົງ ພຸດສະຫວັດ', '', '1993-05-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2052255555', 'ໂສດ', '', '', '', '', '', 'ດອນປ່າໃໝ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100468', 'LP4021', 'ທ່ານ ບຸນທະນູໄຊ ແກ່ນສີ', '', '1989-11-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055353312', 'ໂສດ', '', '', '', '', '', 'ວິນຊຸນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100469', 'LP4022', 'ທ່ານນາງ ອຸ່ນເຮືອນ ແສນອິນສັບ', '', '1994-05-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059239559', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ່າງຄ້ອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100470', 'LP4023', 'ທ່ານ ສົມຈັນ ສີຫາລາດ', '', '1993-11-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055466555', 'ໂສດ', '', '', '', '', '', 'ພູໜອກ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100471', 'LP4225', 'ທ່ານນາງ ພູເງິນ ວົງຄົດ', '', '1995-11-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2054492999', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100472', 'LP4232', 'ທ່ານນາງ ສຸນາລີ ວົງດາລາ', '', '1992-12-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059886565', 'ໂສດ', '', '', '', '', '', 'ວິຊຸນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100473', 'LP4376', 'ທ່ານ ເຄນໄຊ ໄຊມີມູນວົງ', '', '1990-03-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2052888841', 'ໂສດ', '', '', '', '', '', 'ຫາກຮ່ຽນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100474', 'LP4375', 'ທ່ານ ສະລິນຊາຍ ເທບຊາວັນ', '', '1993-06-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055665517', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງໃໝ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100475', 'LP4374', 'ທ່ານ ບຸນມີ ຈິດຕະພອນ', '', '1993-01-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055546668', 'ໂສດ', '', '', '', '', '', 'ນາວຽງຄຳ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100476', 'LP4373', 'ທ່ານ ຄຳແກ້ວ ລັດຕະນະສິນ', '', '1991-02-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055355391', 'ໂສດ', '', '', '', '', '', 'ໂພນໂຮມ', 'ປາກອູ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100477', 'LP4372', 'ທ່ານ ສົມຊາຍ ເອກທະນົງສັກ', '', '1994-05-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055541213', 'ໂສດ', '', '', '', '', '', 'ໂພສີ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100478', 'LP4411', 'ທ່ານ ແມັກກີ່ ມີລາວັນ', '', '1997-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2059264411', 'ໂສດ', '', '', '', '', '', 'ຊຽງແມນ', 'ຈອມເພັດ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100479', 'LP4412', 'ທ່ານນາງ ເພັດສະໝອນ ອ່ອນມະນີ', '', '1990-05-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055557133', 'ໂສດ', '', '', '', '', '', 'ພັນທວງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100480', 'LP4413', 'ທ່ານ ໄຊເຕົ່າລີ ເຊຍເຢ້ລີ', '', '1993-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2058922005', 'ໂສດ', '', '', '', '', '', 'ທາດໂບສົດ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100481', 'LP4414', 'ທ່ານ ວັນເທວາ ວິລະວົງສາ', '', '1984-04-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055572798', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງໃໝ່', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100482', 'LP4509', 'ທ່ານ ດ໋ອດ ແກ້ວວົງສາ', '', '1992-02-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2052333585', 'ໂສດ', '', '', '', '', '', 'ວຽງຄຳ', 'ປາກກະດິງ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100483', 'LP4510', 'ທ່ານ ເຊັ່ງ ຊົ່ງ', '', '1990-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055551727', 'ໂສດ', '', '', '', '', '', 'ຄົກຫວ່າ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100484', 'LP4511', 'ທ່ານ ທະນູເພັດ ດາລາວົງ', '', '1989-12-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2052949259', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈູ້ມຄອງ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100485', 'LP4514', 'ທ່ານ ວິສະກີ ສົນທິດາ', '', '1993-06-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2055678844', 'ໂສດ', '', '', '', '', '', 'ໂພນໄຊ', 'ພຽງ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100486', 'LP4515', 'ທ່ານ ສິນໄຊ ປັດໄຈວ່າ', '', '1994-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫຼວງພະບາງ', '2056368979', 'ໂສດ', '', '', '', '', '', 'ພູເຫຼັກຈະເລີນ', 'ນະຄອນຫຼວງພະບາງ', 'ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100487', 'XN1344', 'ທ່ານ ພູແກ້ວ ພິມວົງສາ', '', '1970-11-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2058005999', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100488', 'XN0937', 'ທ່ານ ພອນພັດ ມະນີທາ', '', '1968-06-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055590882', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100489', 'XN1342', 'ທ່ານ ຄຳແປ້ນ ພົມມະຈັນມາ', '', '1968-03-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055590123', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100490', 'XN1338', 'ທ່ານ ໄພລະຄອນ ວິພົນຮຽນ', '', '1976-06-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055882666', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100491', 'XN1346', 'ທ່ານນາງ ຄູນມະນີ ພິມວົງສາ', '', '1975-04-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055664777', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100492', 'XN1866', 'ທ່ານນາງ ຄຳພອນ ບຸນມີໄຊ', '', '1979-07-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600234', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100493', 'XN2193', 'ທ່ານນາງ ວັນນະແສງ ແກ້ວບົວສະໄໝ', '', '1978-11-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600078', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທົ່ງຈອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100494', 'XN1790', 'ທ່ານ ສົນທິຍາ ໄຊສິມທອງ', '', '1972-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055590533', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທົງຈອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100495', 'XN2121', 'ທ່ານ ມີສຸກ ສຸຂະວົງນາມ', '', '1978-10-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055505354', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະກາງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100496', 'XN1336', 'ທ່ານ ຈັນເພັງ ກົ້ວມີໄຊ', '', '1971-10-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600233', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຫນອງບົວ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100497', 'XN1355', 'ທ່ານ ສີທາ ຄຳດວງໄຊ', '', '1975-07-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600172', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100498', 'XN1827', 'ທ່ານນາງ ຟອງແສງ ໄຊຍະບູນ', '', '1979-05-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056242999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໜອງບົວ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100499', 'XN1699', 'ທ່ານນາງ ກິ່ນນາລີ ບານທອງໄຊ', '', '1976-10-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054482555', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100500', 'XN2256', 'ທ່ານ ຕຸ້ຍ ຫອມສິງຮັກ', '', '1980-07-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055559770', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100501', 'XN2211', 'ທ່ານ ວຽງພອນ ລາດຊະຈັກ', '', '1978-05-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056789950', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100502', 'XN2153', 'ທ່ານນາງ ແສງຈັນ ແກ້ວບຸນເຮືອງ', '', '1980-06-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054318123', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100503', 'XN2449', 'ທ່ານ ແສງເດືອນ ວັນນະພອນ', '', '1981-01-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2059665544', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100504', 'XN2634', 'ທ່ານນາງ ອຸໄລ ແກ້ວພົມເມືອງ', '', '1985-07-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055044240', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100505', 'XN2644', 'ທ່ານ ຜາລິວົງ ພົງສະຫວັນ', '', '1986-01-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054494646', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100506', 'XN2450', 'ທ່ານ ວົງແກ້ວ ວິລິເນັງ', '', '1982-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054483366', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໜອງບົວ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100507', 'XN2586', 'ທ່ານ ສົມວິຈິດ ແພງວັນນາ', '', '1985-03-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055764422', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທົງຈອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100508', 'XN2559', 'ທ່ານ ອຳອິດ ທິບວີເງິນ', '', '1986-06-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055590664', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100509', 'XN1354', 'ທ່ານ ຄຳລຸນ ສົມມະລັດ', '', '1964-03-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600173', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄກ', 'ວຽງໄຊ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100510', 'XN1353', 'ທ່ານ ວັນສີ ດວງຄຳ', '', '1974-02-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055766292', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮັບ', 'ຊຽງຄໍ້', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100511', 'XN2882', 'ທ່ານ ຈຽງທອງ ສານທິເດດ', '', '1988-02-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055882662', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີສຸກ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100512', 'XN3020', 'ທ່ານ ບຸນເນື່ອງ ທະວີສຸກ', '', '1974-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056789619', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100513', 'XN3018', 'ທ່ານນາງ ກອງແກ້ວ ເຮືອງໂພໄຊ', '', '1990-10-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056995757', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100514', 'XN3019', 'ທ່ານນາງ ກັນສຸດາ ພຽນທະວົງໄຊ', '', '1986-03-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2059823456', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100515', 'XN3258', 'ທ່ານນາງ ຜຸຍຄຳ ຄູນມີສຸກ', '', '1986-05-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055553277', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະກາງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100516', 'XN3255', 'ທ່ານ ສີນໄຊ ຈັນທະລີ', '', '1983-12-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054422220', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີສຸກ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100517', 'XN2881', 'ທ່ານ ມິດຕະພອນ ຈັນທະລີ', '', '1985-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055550094', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100518', 'XN3305', 'ທ່ານນາງ ວົງແສງ ເພັດລາພອນ', '', '1988-04-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056444954', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100519', 'XN3304', 'ທ່ານ ເພັດສະຫວັນ ສີສຸມັງ', '', '1986-12-31', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056138883', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100520', 'XN3428', 'ທ່ານ ທະນາກອນ ກິລໍຄຳ', '', '1988-07-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055993331', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100521', 'XN3462', 'ທ່ານ ເກດແກ້ວ ພົມວົງໄຊ', '', '1990-01-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055558790', 'ແຕ່ງງານ', '', '', '', '', '', 'ສຳພັນທອງ', 'ຮຽນ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100522', 'XN3463', 'ທ່ານ ອຽງ ຊົງຢົງຢາ', '', '1987-09-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056789787', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100523', 'XN3464', 'ທ່ານ ຄຳແພງ ໄຜ່ຖະໜອນ', '', '1988-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2058009944', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ່ອນເໜືອ', 'ລ້ອງແຈ້ງ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100524', 'XN3466', 'ທ່ານນາງ ພອນຈິດ ອຸ່ນພະຈັນ', '', '1990-10-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055600079', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະກາງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100525', 'XN3256', 'ທ່ານນາງ ໄຄສອນ ພົມມີໄຊ', '', '1989-05-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055551179', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄກ່', 'ວຽງໄຊ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100526', 'XN3257', 'ທ່ານນາງ ພູວັນ ແກ້ວປັນຍາ', '', '1990-06-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055088089', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100527', 'XN3578', 'ທ່ານນາງ ອານຸຊຽນ ສົມມະລັດ', '', '1989-10-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054123111', 'ໂສດ', '', '', '', '', '', 'ພັນໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100528', 'XN3839', 'ທ່ານ ມອນສີ ແສງສຸວັນ', '', '1985-03-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054564448', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະກາງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100529', 'XN3795', 'ທ່ານ ໄຊມີນູ ລີລາວຮື້ຊົ່ງ', '', '1989-12-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055558258', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົບເບົາ', 'ສົບເບົາ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100530', 'XN3796', 'ທ່ານ ອາລີແສງ ວົງແພງຄຳ', '', '1989-09-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2052594795', 'ແຕ່ງງານ', '', '', '', '', '', 'ບວມງາມ', 'ຫົວເມືອງ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100531', 'XN3797', 'ທ່ານ ຕຸ້ຍ ວິລະທອງ', '', '1989-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055525546', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນສະຫວັນ', 'ຊຳໃຕ້', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100532', 'XN4018', 'ທ່ານ ສຸພາລັກ ຫອມສິງຮັກ', '', '1994-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054833833', 'ໂສດ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100533', 'XN4019', 'ທ່ານ ຊຳ ບຸນມີໄຊ', '', '1993-02-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2056789668', 'ໂສດ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100534', 'XN4017', 'ທ່ານ ສຸໄຊ ອິນເມືອງໄຊ', '', '1991-01-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054585544', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100535', 'XN4050', 'ທ່ານນາງ ຕຸນາລັກ ພົມມະຈັນ', '', '1994-10-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2058074888', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100536', 'XN4051', 'ທ່ານ ເພັດ ທະວີຄຳ', '', '1992-05-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2055114480', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງກັວນ', '', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100537', 'XN4052', 'ທ່ານ ຄຳໄຊ ອິນມະນີ', '', '1995-01-31', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2054454421', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດເມືອງ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100538', 'XN4494', 'ທ່ານນາງ ເພີນໃຈ ອີງທະພັນ', '', '1994-11-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຫົວພັນ', '2059798383', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ຊຳເໜືອ', 'ຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100539', 'XY0039', 'ທ່ານ ສີພັນ ໜໍ່ຄຳ', '', '1965-05-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055500877', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໃໝ່', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100540', 'XY1307', 'ທ່ານ ວາດສະໜາ ດົງຈານ', '', '1965-05-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055590694', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຜາປູນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100541', 'XY1321', 'ທ່ານ ສົມພົງ ພິມມະລາດ', '', '1974-12-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055556689', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100542', 'XY1308', 'ທ່ານ ອິນຖາ ມາສຸວັນ', '', '1968-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055590638', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100543', 'XY1311', 'ທ່ານ ຄຳແພງ ອຸມາດີ', '', '1973-09-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055895888', 'ໂສດ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100544', 'XY1328', 'ທ່ານນາງ ຄຳບົວ ຄຳພູມີ', '', '1976-12-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055526663', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຖິ່ນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100545', 'XY1320', 'ທ່ານ ເຂັມເພັດ ຄຳມີສີ', '', '1968-01-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055500597', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100546', 'XY2138', 'ທ່ານ ທະນູໄຊ ບຸນເຮືອງ', '', '1977-06-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055500689', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100547', 'XY1319', 'ທ່ານ ຂານ ແກ້ວມະນີ', '', '1968-06-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055070775', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100548', 'XY1332', 'ທ່ານ ບຸນມາ ອຸນນະລາດ', '', '1974-02-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2059318899', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100549', 'XY1322', 'ທ່ານ ບຸນທັນ ອິນປັນຍາ', '', '1969-12-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055590454', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100550', 'XY2550', 'ທ່ານ ວົງພະຈັນ ໄຊຍະລາດ', '', '1985-06-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058557789', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100551', 'XY1772', 'ທ່ານນາງ ສຸດທິດາ ຍົດທິກອນ', '', '1975-03-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055778178', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100552', 'XY1885', 'ທ່ານນາງ ລຳພູນ ຄົງສະຫວັນ', '', '1978-05-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055779599', 'ແຕ່ງງານ', '', '', '', '', '', 'ຢົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100553', 'XY2149', 'ທ່ານ ວຽງສອນ ສຸກກ້ວາງ', '', '1979-10-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055977888', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100554', 'XY1331', 'ທ່ານ ວັດທະນາ ພົມສີ', '', '1973-02-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055778362', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຜາປູນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100555', 'XY0902', 'ທ່ານ ສົມອົກ ບົວປະເສີດ', '', '1975-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055191111', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານນາເລົາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100556', 'XY1333', 'ທ່ານ ແສງລາຍ ສິດາທອງ', '', '1976-10-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055877995', 'ແຕ່ງງານ', '', '', '', '', '', 'ຢົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100557', 'XY1329', 'ທ່ານນາງ ຂັນເງິນ ສີຈັນທະລາດ', '', '1970-04-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055779699', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100558', 'XY2557', 'ທ່ານ ໄກ່ແກ້ວ ທອງວັນນາ', '', '1983-09-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055590670', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100559', 'XY1013', 'ທ່ານ ວຽງ ວົງສີຈອມລັດ', '', '1976-09-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055600177', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100560', 'XY1829', 'ທ່ານ ພວງສະຫັວນ ແສນບຸນເຮືອງ', '', '1976-06-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055019584', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດ', 'ຊຽງຮ່ອນ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100561', 'XY2410', 'ທ່ານນາງ ຈັນທອນ ແສນບຸດຕະລາດ', '', '1981-07-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055633823', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100562', 'XY2615', 'ທ່ານ ນາດ ແສງທະວີ', '', '1983-12-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2054350006', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫຍ່', 'ທົ່ງມີໄຊ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100563', 'XY2486', 'ທ່ານ ຊຽງມາ ອິນທະວົງ', '', '1969-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055979779', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100564', 'XY1771', 'ທ່ານນາງ ຟອງສະຫມຸດ ພິພັດເສລີ', '', '1970-01-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055778799', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100565', 'XY2204', 'ທ່ານ ພົນ ມີພູນ', '', '1978-11-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055577955', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100566', 'XY1852', 'ທ່ານນາງ ຂັນທະລີ ຄຳຕາ', '', '1973-02-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2059453333', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100567', 'XY2485', 'ທ່ານນາງ ມະນີວັນ ຄຳພີ', '', '1981-07-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2054224433', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຮ່', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100568', 'XY2212', 'ທ່ານນາງ ຈັນທະສອນ ພົມມະລັດ', '', '1985-05-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056915555', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100569', 'XY2582', 'ທ່ານນາງ ມະລິ ດວງດີ', '', '1985-04-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055190119', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100570', 'XY2999', 'ທ່ານ ສີສິນໄຊ ບຸດສີວົງ', '', '1988-08-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2054323666', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100571', 'XY3009', 'ທ່ານ ຈັນເພັງ ສີບຸນເຮືອງ', '', '1989-03-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056784422', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100572', 'XY3006', 'ທ່ານ ສີທະນົນ ສີສະຫວາດ', '', '1986-07-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056294566', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ໜອງຊຽງ', 'ຊຽງຮ່ອນ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100573', 'XY3005', 'ທ່ານນາງ ວິໄລພອນ ພົມມະຈິດ', '', '1986-06-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058742222', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຫົງສາ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100574', 'XY3002', 'ທ່ານນາງ ວາດສະໜາ ຄຳມີສີ', '', '1986-06-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056931999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະຫວ່າງ', 'ປາກລາຍ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100575', 'XY1014', 'ທ່ານ ສັນຈອນ ໄຊຍະລາດ', '', '1977-11-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055568999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫ່ຍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100576', 'XY2529', 'ທ່ານ ບົວລຽນ ກັນຍາວົງ', '', '1983-12-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055878881', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານໃຫຍ່', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100577', 'XY2189', 'ທ່ານ ຄອນສະຫວັນ ພູທອນ', '', '1980-08-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055600179', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຫົງສາ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100578', 'XY1324', 'ທ່ານ ສົມພອນ ເພັຍປະລັດ', '', '1972-05-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2052974666', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານສີພູມ', 'ແກ່ນທ້າວ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100579', 'XY1830', 'ທ່ານ ສົມສີ ສຸວັນທອງ', '', '1976-12-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055900237', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານໃຫຍ່', 'ທົ່ງມີໄຊ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100580', 'XY2434', 'ທ່ານ ຄຳແກ້ວ ດວງເດດ', '', '1982-04-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055878089', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຂອນ', 'ເງິນ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100581', 'XY2561', 'ທ່ານນາງ ຈັນມະນີ ຈັນດາລາສານ', '', '1984-11-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055559991', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໃໝ່', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100582', 'XY2926', 'ທ່ານນາງ ກິ່ງຄຳ ບຸດສະຫລາດ', '', '1985-10-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056887733', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100583', 'XY3338', 'ທ່ານ ສະຫມານ ສຸກສະຫັວນ', '', '1988-02-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055558400', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100584', 'XY3491', 'ທ່ານ ບຸບຜາ ດວງປັນຍາ', '', '1992-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055553569', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫັວນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100585', 'XY3337', 'ທ່ານ ຄຳພາວັນ ພົມສີ', '', '1986-02-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055552369', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100586', 'XY3336', 'ທ່ານນາງ ຈຳປາ ມາສຸວັນ', '', '1990-03-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055119898', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100587', 'XY3489', 'ທ່ານ ສອນສຸພັນ ສີຈອມລັດ', '', '1990-04-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055590717', 'ແຕ່ງງານ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100588', 'XY3668', 'ທ່ານ ຈອນສັນ ດົງຈານ', '', '1990-12-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2054683333', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງ', 'ຊຽງຮ່ອນ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100589', 'XY2658', 'ທ່ານນາງ ຄຳແພງ ອັດສະຈັນ', '', '1984-06-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055191113', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100590', 'XY3001', 'ທ່ານ ໄຊຊະນະ ສິດທິພອນ', '', '1977-06-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055572329', 'ແຕ່ງງານ', '', '', '', '', '', 'ປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100591', 'XY2998', 'ທ່ານ ມອນທະວີ ວົງພະຈັນ', '', '1983-11-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058111155', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100592', 'XY3007', 'ທ່ານນາງ ຈອນຄຳ ຂຽວສີຟ້າ', '', '1991-03-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055979790', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂອນ', 'ເງິນ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100593', 'XY3003', 'ທ່ານນາງ ເພັດສະໝອນ ເພຍປະຫຼັດ', '', '1989-02-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2054744449', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຊາຍຄຳ', 'ປາກລາຍ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100594', 'XY3004', 'ທ່ານ ພອນສະຫວັດ ເພັດຊົມພູ', '', '1987-09-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058111141', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສະຫວ່າງ', 'ປາກລາຍ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100595', 'XY3000', 'ທ່ານນາງ ສຸກສາຄອນ ສຸກພົງສັກ', '', '1987-07-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056445688', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໃໝ່', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100596', 'XY3149', 'ທ່ານນາງ ສຸກດາວັນ ສີສົງຄາມ', '', '1989-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055749995', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ສີມຸງຄຸນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100597', 'XY3490', 'ທ່ານ ຄໍາຂັນ ອາດດວງດີ', '', '1991-04-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055559821', 'ໂສດ', '', '', '', '', '', 'ສະຫ່ວາງ', 'ທົ່ງມີໄຊ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100598', 'XY3602', 'ທ່ານນາງ ບົວສອນ ພັນທະວົງ', '', '1989-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056785601', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100599', 'XY3603', 'ທ່ານນາງ ຈັນສະໜອນ ພົມສີ', '', '1989-09-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055550265', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງພຽງ', 'ພຽງ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100600', 'XY3683', 'ທ່ານ ວິມົນ ໄຊສົງຄາມ', '', '1990-07-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055554470', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100601', 'XY3760', 'ທ່ານ ສີສົມພອນ ແປງສະຫ່ວາງ', '', '1990-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055569239', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາບ່ອງ', 'ຄອບ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100602', 'XY3785', 'ທ່ານນາງ ທິນດາວັນ ຄຳພູມີ', '', '1991-12-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055678899', 'ແຕ່ງງານ', '', '', '', '', '', 'ຖິ່ນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100603', 'XY3841', 'ທ່ານ ບັນເລັງ ສີບຸນເຮືອງ', '', '1990-02-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056788816', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100604', 'XY3842', 'ທ່ານນາງ ຈິນຕະນາ ບຸນຍາວົງ', '', '1992-06-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055595366', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100605', 'XY4045', 'ທ່ານນາງ ນັນທິດາ ຄຳປັນ', '', '1985-07-31', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055774050', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງເກົ່າ', 'ແກ່ນທ້າວ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100606', 'XY4046', 'ທ່ານນາງ ຈັນທອນ ສີປັນຍາ', '', '1993-01-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058555568', 'ໂສດ', '', '', '', '', '', 'ທ່ານາ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100607', 'XY4048', 'ທ່ານນາງ ອຳມອນ ບຸນມີ', '', '1993-08-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056785005', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາປູນ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100608', 'XY4049', 'ທ່ານນາງ ລຳເພີນ ສີບຸນເຮືອງ', '', '1993-08-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055566971', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫວ່າງ', 'ທົ່ງມີໄຊ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100609', 'XY4216', 'ທ່ານນາງ ສຸກດາວອນ ອິນທະວົງ', '', '1991-11-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2058112293', 'ໂສດ', '', '', '', '', '', 'ລ້ອງປໍ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100610', 'XY4226', 'ທ່ານນາງ ໄກລາດ ອິນເຕີມ', '', '1992-12-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055999354', 'ແຕ່ງງານ', '', '', '', '', '', 'ປົ່ງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100611', 'XY4502', 'ທ່ານ ສຸລິສັກ ທອງຄຳ', '', '1994-01-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2055999746', 'ໂສດ', '', '', '', '', '', 'ສີເມືອງ', 'ໄຊຍະບູລີ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100612', 'XY4503', 'ທ່ານ ສີວົງ ແສງມະນີ', '', '1988-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2056998555', 'ໂສດ', '', '', '', '', '', 'ໂພນໄຊ', 'ຫົງສາ', 'ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100613', 'XY4504', 'ທ່ານນາງ ບຸດສະບາ ດາລາສັກ', '', '1994-04-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊຍະບູລີ', '2059192299', 'ໂສດ', '', '', '', '', '', 'ຊະນະຄາມ', 'ຊະນະຄາມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100614', 'XK0869', 'ທ່ານ ພອນແກ້ວ ພັນທະວົງສີ', '', '1972-01-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055590798', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100615', 'XK1360', 'ທ່ານ ແກ້ວສົມຫວັງ ພັນທະລາ', '', '1962-08-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055500503', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100616', 'XK1380', 'ທ່ານ ດ່າຢ່າ ໜາວຕູ້', '', '1969-11-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055500762', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100617', 'XK1373', 'ທ່ານ ເພັງສະຫວັນ ຈັນທະວົງ', '', '1970-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055590461', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງາມໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100618', 'XK1386', 'ທ່ານ ບົວລີ ຈັນທະລັງສີ', '', '1967-05-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055660687', 'ໝ້າຍ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100619', 'XK1824', 'ທ່ານນາງ ວຽງມະນີ ວົງພະຈັນ', '', '1977-02-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055549000', 'ແຕ່ງງານ', '', '', '', '', '', 'ຢ່ອນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100620', 'XK1378', 'ທ່ານນາງ ຄຳແສງ ຈູມມະລີ', '', '1971-10-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055660074', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຫງຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100621', 'XK1387', 'ທ່ານ ວຽງເພັດ ພັນທະລາວົງ', '', '1976-04-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2056079999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100622', 'XK2131', 'ທ່ານ ພອນສີ ພົມພະຈັນ', '', '1977-02-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055067888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100623', 'XK1388', 'ທ່ານ ເຢັຍວື ຢົງເຢ້', '', '1975-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055068888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂງຍ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100624', 'XK1375', 'ທ່ານ ໂສດາ ຄຳພາວົງ', '', '1971-08-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055660093', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງາມໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100625', 'XK1379', 'ທ່ານ ວິໄຊສີ ຢ່າງຢົ້ວວ່າງ', '', '1974-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055187417', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100626', 'XK2876', 'ທ່ານ ພຸດສະດາ ແກ້ວພົມມາ', '', '1987-08-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055017999', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວັນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100627', 'XK2306', 'ທ່ານ ສຸກສະຫວັດ ພິມມະວົງ', '', '1979-02-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058162999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທອງ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100628', 'XK1828', 'ທ່ານ ບຸນທັນ ແກ້ວມະນີວົງ', '', '1975-05-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055069999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100629', 'XK1383', 'ທ່ານນາງ ສົມໄພ ວິລິວົງ', '', '1974-06-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058148999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100630', 'XK2244', 'ທ່ານ ຕູ່ວ່າ ຊົ້ງຕົວ', '', '1980-04-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2054671444', 'ແຕ່ງງານ', '', '', '', '', '', 'ລີ່', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100631', 'XK1362', 'ທ່ານນາງ ໄພວັນ ນັນທະວົງ', '', '1975-10-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055367688', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100632', 'XK2292', 'ທ່ານ ພອນໄຊ ນັນທະພອນ', '', '1981-04-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055473628', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100633', 'XK3303', 'ທ່ານນາງ ຈຳປີ ສຸຕິສັກ', '', '1985-03-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055745888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫີນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100634', 'XK1896', 'ທ່ານ ຫຼ້າດວງ ສາຍນ້ຳຄາ', '', '1967-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055380888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100635', 'XK2132', 'ທ່ານ ແຈ້ງ ໄຊຍະວົງ', '', '1974-12-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2056262031', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຫງຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100636', 'XK1988', 'ທ່ານ ວົງຄອນ ພິມມະສອນ', '', '1976-04-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058628899', 'ແຕ່ງງານ', '', '', '', '', '', 'ຢອນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100637', 'XK2195', 'ທ່ານນາງ ແກ້ວອຸດົມ ດາລາວົງ', '', '1982-12-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055975345', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100638', 'XK2484', 'ທ່ານນາງ ພຸດທະສອນ ນະວົງສີ', '', '1985-06-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2056982456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງາມໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100639', 'XK1820', 'ທ່ານນາງ ຄຳຫຼ້າ ຫຼວງດາລັງສີ', '', '1979-11-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055661559', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຫງຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100640', 'XK1366', 'ທ່ານ ບຸນສົດ ວັນທະວອນ', '', '1973-04-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055661543', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໂພນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100641', 'XK2587', 'ທ່ານ ເຢີຢ່າງ ຢົວລີ', '', '1983-03-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055549996', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໂພນໄຊ', 'ຄູນ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100642', 'XK2417', 'ທ່ານ ຄຳພັນ ວົງລໍຄຳ', '', '1982-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2059377770', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂງຍ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100643', 'XK1822', 'ທ່ານ ແກ້ວອຸດົມ ຈູມມະນີ', '', '1968-06-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2054671111', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຫງຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100644', 'XK2659', 'ທ່ານ ວັນໄຊ ຈ່າເຊ່ຍຢ່າຫນາວຕຼື', '', '1983-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2054733339', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100645', 'XK1367', 'ທ່ານ ເພັດພິທັກ ພົມພະຈັນ', '', '1976-09-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2059391999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100646', 'XK1022', 'ທ່ານ ຄຳສິງ ແກ້ວມາລາ', '', '1975-08-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055189999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂງຍ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100647', 'XK1989', 'ທ່ານ ລໍ ກຸລາວົງ', '', '1979-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055600161', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີພົມ', 'ຄູນ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100648', 'XK2984', 'ທ່ານນາງ ຄູນຄຳ ຈັນທະວົງສີ', '', '1988-03-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055660000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100649', 'XK2981', 'ທ່ານນາງ ກິນຕະນາ ແສງປະສົມ', '', '1986-06-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058152225', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100650', 'XK2980', 'ທ່ານ ເພັງວິໄລ ພີມມະວົງ', '', '1985-02-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058199991', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100651', 'XK2985', 'ທ່ານ ຈັນສະໝອນ ໄຊຍະວົງ', '', '1987-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055561345', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູວຽງ', 'ພູກູດ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100652', 'XK2983', 'ທ່ານ ຕົວວ່າງ ຫນໍ່ວ່າງ', '', '1985-10-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055549990', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫັວນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100653', 'XK3246', 'ທ່ານ ສຸກສະຫວັນ ຫຸມທະຈັກ', '', '1986-03-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055603399', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍວນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100654', 'XK3396', 'ທ່ານນາງ ມີ່ນ່າ ດວງສະຫວັນ', '', '1993-08-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058288883', 'ແຕ່ງງານ', '', '', '', '', '', 'ເທີນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100655', 'XK3399', 'ທ່ານ ພອນໄຊ ພິມມະສອນ', '', '1990-02-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2059969968', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດໃຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100656', 'XK3625', 'ທ່ານນາງ ຕູ່ນີ່ ທອງພະຈັນ', '', '1989-04-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058311114', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນມີໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100657', 'XK1826', 'ທ່ານ ຢົງ ລໍ', '', '1972-12-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055518330', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100658', 'XK1377', 'ທ່ານ ເຢັຍລີ ບໍ່ມີນາມສະກຸນ', '', '1975-02-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058223808', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100659', 'XK3244', 'ທ່ານນາງ ຄຳຮູ້ ມະນີວັນ', '', '1985-09-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058299799', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100660', 'XK3245', 'ທ່ານ ທອງລິດ ພັນນັນທະວົງ', '', '1986-07-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055559771', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນກາງ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100661', 'XK3393', 'ທ່ານນາງ ສາຍ ສໍພີມພາ', '', '1990-04-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2056743888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫັນໄຕ້', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100662', 'XK3692', 'ທ່ານນາງ ສີອຳພອນ ສັກດານະຄອນ', '', '1991-02-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055551446', 'ແຕ່ງງານ', '', '', '', '', '', 'ນານູ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100663', 'XK4053', 'ທ່ານ ໃຈຢ່າງ ຫວາດາ', '', '1992-05-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2056751234', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວັນໄຊ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100664', 'XK4054', 'ທ່ານນາງ ຈັນທະລາ ຈິນດາວົງ', '', '1993-04-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2059777236', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານໂພນຄຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100665', 'XK4055', 'ທ່ານ ໂຊ່ເລ ສາຍນ້ຳຄາ', '', '1992-04-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055561455', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100666', 'XK4056', 'ທ່ານນາງ ຫຼ້າເພັດ ຈັນທະລາ', '', '1990-11-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055519996', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100667', 'XK4057', 'ທ່ານ ຈັນທະວົງ ນະວົງສີ', '', '1987-11-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055556342', 'ແຕ່ງງານ', '', '', '', '', '', 'ລາດງ່ອນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100668', 'XK4058', 'ທ່ານນາງ ດວງໃຈ ພົມມະດວງໄກສອນ', '', '1990-07-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2059367999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍວນ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100669', 'XK4059', 'ທ່ານນາງ ຈັນທະໜອມ ອຸດທະຈັກ', '', '1990-11-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058655588', 'ໂສດ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100670', 'XK4153', 'ທ່ານນາງ ຄຳປ່ຽງ ມະນີວົງ', '', '1992-11-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055559819', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100671', 'XK4227', 'ທ່ານນາງ ນິດາພອນ ບູຈະເລີນ', '', '1994-04-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2058741111', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດເໜືອ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100672', 'XK4228', 'ທ່ານນາງ ພາສີ ສີສັນສັກ', '', '1991-03-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055921118', 'ໂສດ', '', '', '', '', '', 'ໜອງນ້ຳ', 'ຄູນ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100673', 'XK4262', 'ທ່ານ ບຸນສີ ພັນທະວົງ', '', '1993-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2052985555', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຫງຳ', 'ແປກ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100674', 'XK4508', 'ທ່ານ ຝືລີ ຈົງຕົວ', '', '1987-01-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຊຽງຂວາງ', '2055553654', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຂຽວ', 'ໜອງແຮດ', 'ຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100675', 'BX1447', 'ທ່ານ ຫົງວິໄລ ຈຸນລະມຸນຕີ', '', '1964-07-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055500640', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100676', 'BX1933', 'ທ່ານ ວິລອນ ວັນນະບົວທອງ', '', '1977-02-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2057379999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100677', 'BX1705', 'ທ່ານ ບຸນເຍືອງ ພິມມະສອນ', '', '1975-11-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055590722', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100678', 'BX1438', 'ທ່ານ ບຸນເລີດ ປູ້ຍໄມນີ', '', '1969-02-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055600055', 'ຮ້າງ', '', '', '', '', '', 'ວັດທາດ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100679', 'BX2303', 'ທ່ານນາງ ສົມໃຈ ສຸວັນນະລາດ', '', '1982-10-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056626555', 'ໂສດ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100680', 'BX1431', 'ທ່ານນາງ ພັດຈິລາ ຈັນທະແສງ', '', '1974-07-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055553358', 'ໂສດ', '', '', '', '', '', 'ມີໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100681', 'BX1015', 'ທ່ານ ສອນແກ້ວ ສັນຕິວົງ', '', '1976-12-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055169409', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຈິກ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100682', 'BX1449', 'ທ່ານ ແກ້ວປະດິດ ຂຸນພານິດ', '', '1967-04-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2057335555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100683', 'BX2302', 'ທ່ານ ໂອທອງ ຫັດສະດີ', '', '1981-09-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055500528', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100684', 'BX1452', 'ທ່ານ ສົມເພັດ ຄຳມະວົງ', '', '1972-12-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055600126', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະນຸກ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100685', 'BX2127', 'ທ່ານນາງ ພຸດທະຈິດ ກອງມະນີ', '', '1981-09-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055452456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100686', 'BX1914', 'ທ່ານນາງ ລັດສະໝີ ວົງຫລ້າຄອນ', '', '1981-12-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054081888', 'ໂສດ', '', '', '', '', '', 'ປາກຊັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100687', 'BX2664', 'ທ່ານ ຕູ່ນີ່ ລໍວັນໄຊ', '', '1985-09-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2058553355', 'ໂສດ', '', '', '', '', '', 'ນ້ຳຢ້າງ', 'ວຽງທອງ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100688', 'BX1753', 'ທ່ານ ພົງສະຫວັນ ພົມມະເທບ', '', '1976-12-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055652436', 'ແຕ່ງງານ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100689', 'BX1440', 'ທ່ານ ຄຳຜັນ ສິດລາກອນ', '', '1970-10-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055652554', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100690', 'BX1441', 'ທ່ານ ສຸລິຍາ ພັນດານຸວົງ', '', '1976-02-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059329888', 'ແຕ່ງງານ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100691', 'BX2304', 'ທ່ານ ສັນຕິໄຊ ບົວຈຳນົງ', '', '1984-08-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054420788', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງານ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100692', 'BX1780', 'ທ່ານ ມາສຸດາວັນ ຄູນໄຊລິດາ', '', '1977-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056433306', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100693', 'BX2595', 'ທ່ານ ຄຳໄຊ ໄຊຍະວົງສາ', '', '1986-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055600153', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍແກ້ວ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100694', 'BX2236', 'ທ່ານ ສອນໄຊ ໂງ່ນວໍຣະຣາຊ໌', '', '1981-03-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055551558', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100695', 'BX2013', 'ທ່ານນາງ ລຳທອງ ພົມມະລາດ', '', '1979-10-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055054400', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100696', 'BX1432', 'ທ່ານນາງ ອ່ອນຈັນ ໄຊບຸນມີ', '', '1975-11-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054147999', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊັນໄຕ້', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100697', 'BX2588', 'ທ່ານ ສີພາວັນ ວົງຫຼ້າຄອນ', '', '1985-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056626677', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100698', 'BX2665', 'ທ່ານນາງ ວາດສະໜາ ຍັງນຸວົງ', '', '1984-12-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055666717', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຄູນ', 'ບໍລິຄັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100699', 'BX2014', 'ທ່ານ ບຸນປອນ ພອນພະຈັນ', '', '1973-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056473376', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100700', 'BX1459', 'ທ່ານ ເນັ່ງເລົ່າ ເຕັ່ງຊົງ', '', '1971-11-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055752244', 'ແຕ່ງງານ', '', '', '', '', '', 'ສູນສະຫນຸກ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100701', 'BX1994', 'ທ່ານນາງ ສົມ ທຳມະວົງ', '', '1980-03-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055653496', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຈະເລີນ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100702', 'BX2400', 'ທ່ານນາງ ໄຕ ມະນົນໄຊ', '', '1978-05-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055890809', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100703', 'BX2954', 'ທ່ານນາງ ຕຽງຄຳ ລໍອິນທາ', '', '1988-04-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056928456', 'ໂສດ', '', '', '', '', '', 'ຫົງໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100704', 'BX2888', 'ທ່ານນາງ ຫອມແພງ ຫຼ້າພໍສໍ', '', '1989-03-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056433339', 'ໂສດ', '', '', '', '', '', 'ສວນສະຫວັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100705', 'BX2953', 'ທ່ານ ໄມພັນ ໄຊສົມຄາມ', '', '1988-11-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055054444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົງໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100706', 'BX3022', 'ທ່ານນາງ ດາລາທິບ ຈັນທະວົງສາ', '', '1988-01-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054554499', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີມຸງຄຸນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100707', 'BX2935', 'ທ່ານນາງ ແອ໋ບເປີ້ນ ສະຫວັນເພັດ', '', '1988-04-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055556162', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າບົກ', 'ທ່າພະບາດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100708', 'BX3522', 'ທ່ານ ສົມພາວັນ ວິລະວົງ', '', '1988-04-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059873777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາງຊິງ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100709', 'BX3276', 'ທ່ານ ວິໃນ ເຫຼື້ອມວິໄລ', '', '1989-03-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2058344333', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100710', 'BX3406', 'ທ່ານນາງ ພອນທິບ ບາຄຳ', '', '1988-10-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054240789', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາງຊິງ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100711', 'BX3407', 'ທ່ານ ຕຸນີ່ ແກ້ວມະນີ', '', '1987-03-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055551231', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວ້ຍສຽດ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100712', 'BX3408', 'ທ່ານ ວິໄລສັກ ຜາລີຂັນ', '', '1987-02-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552056', 'ແຕ່ງງານ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100713', 'BX3409', 'ທ່ານ ວັນນະສັກ ຈັນດາເຮືອງ', '', '1991-03-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055833366', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຢ້າງ', 'ວຽງທອງ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100714', 'BX3496', 'ທ່ານ ແສງເດືອນ ວົງດາລາ', '', '1982-09-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059816699', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊົມຊື່ນ', 'ບໍລິຄຳໄຊ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100715', 'BX3495', 'ທ່ານ ວົງພະຈັນ ລໍວັນໄຊ', '', '1983-12-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552007', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100716', 'BX3688', 'ທ່ານ ດວງປະດິດ ຈັນທາມີນາວົງ', '', '1979-11-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059090868', 'ໂສດ', '', '', '', '', '', 'ໂພໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100717', 'BX1995', 'ທ່ານ ຄຳຫຼ້າ ໄຊຍະກຸນ', '', '1980-10-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056540341', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100718', 'BX3544', 'ທ່ານ ເພັດສະພອນ ສະແສງບົງ', '', '1978-07-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055553366', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊັນເຫນືອ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100719', 'BX2889', 'ທ່ານນາງ ໄມໃຈ ແກ້ວບຸນຖຽນ', '', '1988-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552238', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫນຸກ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100720', 'BX3273', 'ທ່ານ ອານຸສອນ ບຸດນວນຈະເລີນ', '', '1990-11-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055553377', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100721', 'BX3274', 'ທ່ານ ຄຳຄ່ອງ ອິນຕາ', '', '1985-02-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054147778', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກຫ້າ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100722', 'BX4064', 'ທ່ານ ໄກ້ ສາຍສິນ', '', '1990-09-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059665801', 'ແຕ່ງງານ', '', '', '', '', '', 'ປັດຊຸມໃຕ້', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100723', 'BX3843', 'ທ່ານ ວົງໄຊ ລໍແກ້ວມະນີວົງ', '', '1974-06-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552698', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳງຽບ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100724', 'BX3493', 'ທ່ານນາງ ຫົງຄຳ ທິດອາສາ', '', '1990-03-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055514848', 'ໂສດ', '', '', '', '', '', 'ໂພນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100725', 'BX3844', 'ທ່ານ ແສງອາລຸນ ອິນທະວົງ', '', '1976-10-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2058619996', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳງຽບ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100726', 'BX3601', 'ທ່ານ ຄຳຂາວ ສີລັດຕະນະພອນ', '', '1979-01-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055850989', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເມືອງນ້ອຍ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100727', 'BX3494', 'ທ່ານ ສະຖາພອນ ປັນຍານຸວົງ', '', '1989-06-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056541999', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສນອຸດົມ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100728', 'BX3687', 'ທ່ານ ຄຳພອນ ຄຳສຸກວົງສານ', '', '1988-11-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055540545', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100729', 'BX3689', 'ທ່ານ ມີໄຊ ຄຳໄຊປັນຍາ', '', '1987-05-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055515582', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100730', 'BX3798', 'ທ່ານ ສຸດສາຄອນ ອິນຕາ', '', '1990-05-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059970815', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100731', 'BX3799', 'ທ່ານ ໄພພອນ ເມືອງຄຳ', '', '1985-10-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2058796679', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100732', 'BX3800', 'ທ່ານນາງ ນີລະພອນ ວັນນະບົວທອງ', '', '1987-05-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2052888069', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100733', 'BX3967', 'ທ່ານນາງ ມົນລະດີ ສົມບັດ', '', '1991-12-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055440639', 'ແຕ່ງງານ', '', '', '', '', '', 'ມີໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100734', 'BX3970', 'ທ່ານ ໂຢດ ທຳມະຍາ', '', '1992-06-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055581992', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100735', 'BX3968', 'ທ່ານນາງ ຈັນຈິລາ ພິມມະສອນ', '', '1992-12-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055534933', 'ໂສດ', '', '', '', '', '', 'ໂພສີ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100736', 'BX4063', 'ທ່ານນາງ ລຳພອນ ໄຊສົມຄາມ', '', '1990-03-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552394', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົງໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100737', 'BX4065', 'ທ່ານ ຕິ່ງຄຳ ປາລີນຍາ', '', '1988-08-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054775040', 'ແຕ່ງງານ', '', '', '', '', '', 'ສິວິໄລ', 'ບໍລິຄຳໄຊ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100738', 'BX4066', 'ທ່ານ ແຫວນທອງ ຄຳມະວົງ', '', '1976-12-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055482170', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະນຸກ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100739', 'BX4067', 'ທ່ານ ຖາວອນ ໄຊຍະພອນ', '', '1991-10-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2056253335', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100740', 'BX4068', 'ທ່ານນາງ ເພັດສີ ອົກສະຫວັດມຸງຄຸນ', '', '1989-06-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059090806', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100741', 'BX4069', 'ທ່ານນາງ ຕິກຊີໂລ່ ມໍລະຄາສຸກ', '', '1991-05-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059797779', 'ໂສດ', '', '', '', '', '', 'ນາສົ້ມມໍ', 'ບໍລິຄຳໄຊ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100742', 'BX4070', 'ທ່ານນາງ ສົມພອນ ເຄນສຸກ', '', '1993-08-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059151511', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100743', 'BX4295', 'ທ່ານ ແສງແກ້ວ ວົງພັກດີ', '', '1985-06-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054923999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໂຮງ', 'ຄຳເກີດ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100744', 'BX4296', 'ທ່ານ ແກ້ວນະຄອນ ສີລິວັນ', '', '1994-01-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055553133', 'ໂສດ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100745', 'BX4297', 'ທ່ານນາງ ສຸກທິດາ ລໍວັນໄຊ', '', '1994-10-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2058575777', 'ແຕ່ງງານ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100746', 'BX4298', 'ທ່ານນາງ ມຸກດາວ ວົງດາລາດ', '', '1990-07-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2059156664', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100747', 'BX4486', 'ທ່ານ ພົງເພັດ ວິສຸຂະປັນຍາ', '', '1993-12-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2055552224', 'ໂສດ', '', '', '', '', '', 'ປາກຊັນ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100748', 'BX4505', 'ທ່ານ ຕາວັນ ປອງມະນີ', '', '1993-12-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2052333435', 'ໂສດ', '', '', '', '', '', 'ສີສະອາດ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100749', 'BX4506', 'ທ່ານ ພູນສີລິໄຊ ໄຊຊະນະສີ', '', '1994-10-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ບໍລິຄໍາໄຊ', '2054628884', 'ໂສດ', '', '', '', '', '', 'ອານຸສອນໄຊ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100750', 'TH1476', 'ທ່ານ ໜູນຄຳ ໄຊຍະກຸມມານ', '', '1964-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055500761', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100751', 'TH1481', 'ທ່ານ ພອນສະຫວັນ ກັນຍານຸສອນ', '', '1975-02-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055590546', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານວຽງວິໄລ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100752', 'TH1490', 'ທ່ານ ຄຳດອກໄມ້ ແສງຈັນເພັງ', '', '1975-11-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055590320', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100753', 'TH1465', 'ທ່ານນາງ ສຸລິຈັນ ລາຊະວົງ', '', '1970-10-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055600111', 'ໂສດ', '', '', '', '', '', 'ທ່າແຂກກາງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100754', 'TH2128', 'ທ່ານ ອຸໄທ ແຫວນວົງສົດ', '', '1974-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055558899', 'ແຕ່ງງານ', '', '', '', '', '', '', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100755', 'TH1475', 'ທ່ານ ທອງລ້ຳ ອະໄພຍະລາດ', '', '1975-03-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055116999', 'ແຕ່ງງານ', '', '', '', '', '', 'ເລົ່າໂພຄຳ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100756', 'TH1020', 'ທ່ານ ເພັດດາລາ ດວງປັນຍາ', '', '1975-10-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055556619', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100757', 'TH2573', 'ທ່ານ ພອນພິລົມ ແກ້ວສົມບັດ', '', '1977-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055550369', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100758', 'TH1564', 'ທ່ານນາງ ພຸດໄທ ໄຊຍະພູມີ', '', '1975-02-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055370555', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100759', 'TH2148', 'ທ່ານນາງ ທອງຈັນ ປານີຖາ', '', '1978-02-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055750299', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າເດື່ອ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100760', 'TH1800', 'ທ່ານ ອັກຄະສອນ ພະໄຊວໍລະວົງ', '', '1979-11-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054886888', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນເຂືອນຊ້າງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100761', 'TH1739', 'ທ່ານນາງ ໄພວັນ ຈັນທະລັງສີ', '', '1977-09-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055074678', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100762', 'TH2165', 'ທ່ານນາງ ນິພາພອນ ກັນຍານຸສອນ', '', '1980-02-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055509935', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານວຽງວິໄລ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100763', 'TH1472', 'ທ່ານ ຄຳແດງ ຄຳພິທູນ', '', '1973-04-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055223899', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງວິໄລ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100764', 'TH1707', 'ທ່ານ ພອນທິບ ມະນີຄຳ', '', '1978-07-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2057829595', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຫນອງບົວເງິນ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100765', 'TH1474', 'ທ່ານ ອາລົມ ສໍປະເສີດ', '', '1974-09-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056269998', 'ໂສດ', '', '', '', '', '', 'ສົມສະໜຸກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100766', 'TH1737', 'ທ່ານ ພອນສະຫວັນ ລາດຊະວົງ', '', '1975-12-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054418888', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100767', 'TH2625', 'ທ່ານ ໄຊປະເສີດ ອິນທິລາດ', '', '1987-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056637799', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100768', 'TH2190', 'ທ່ານນາງ ມະນີວັນ ທອງສະຫວັດ', '', '1979-05-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055858214', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100769', 'TH2245', 'ທ່ານນາງ ໄພບູນ ອິນສີຊຽງໃໝ່', '', '1980-10-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056313999', 'ແຕ່ງງານ', '', '', '', '', '', 'ສຸກສະຫວັນ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100770', 'TH1740', 'ທ່ານ ຄຳຜົງ ແກ້ວອ່ອນຈັນ', '', '1966-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055756235', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100771', 'TH2298', 'ທ່ານ ບຸນທຳ ພົມມະນີວົງ', '', '1977-06-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055163456', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະໜາມໄຊ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100772', 'TH1486', 'ທ່ານ ສັກດາ ພູມີຈັນ', '', '1972-02-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055851110', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພິມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100773', 'TH1738', 'ທ່ານ ຄຳເອື້ອນ ສີລາປານີ', '', '1973-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059807171', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວຄຳ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100774', 'TH1464', 'ທ່ານນາງ ວິໄລວັນ ຈັນພາສຸກ', '', '1975-10-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055056666', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເມືອງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100775', 'TH1947', 'ທ່ານນາງ ວິດາ ສີຫາບຸດ', '', '1975-03-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055855989', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າເດື່ອ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100776', 'TH2039', 'ທ່ານນາງ ດາລາວັນ ໂພທິສານ', '', '1978-11-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055851629', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະໜາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100777', 'TH2232', 'ທ່ານນາງ ກອງຄຳ ອາໄພຍາລາດ', '', '1973-08-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055550989', 'ໂສດ', '', '', '', '', '', 'ເລົ່າໂພຄຳ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100778', 'TH2129', 'ທ່ານນາງ ວຽງມາລາ ໄຊຍະວົງ', '', '1978-11-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055369789', 'ແຕ່ງງານ', '', '', '', '', '', 'ເລົ່າໂພໄຊ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100779', 'TH2581', 'ທ່ານນາງ ກອງກຸສົນ ໄຊຍະພູມີ', '', '1986-09-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056724442', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100780', 'TH2912', 'ທ່ານນາງ ພິດສະໃໝ ດວງສອນ', '', '1988-03-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054639444', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຫລົ່າງົວຫົວນາ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100781', 'TH2907', 'ທ່ານນາງ ເພັດຈິນດາ ພິມມະສານ', '', '1985-10-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059076789', 'ໂສດ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100782', 'TH3264', 'ທ່ານນາງ ຈັນທະພາ ດວງວິໄລ', '', '1988-10-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055556778', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100783', 'TH2909', 'ທ່ານນາງ ຄຳສອນ ຈິດຕະວົງ', '', '1988-04-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055559556', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫນາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100784', 'TH2435', 'ທ່ານນາງ ຄິດສະໃໝ ນັນທະວົງ', '', '1978-11-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058454441', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຂກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100785', 'TH2951', 'ທ່ານ ແກ້ວສົມສັກ ບຸນທະລາດ', '', '1986-08-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055556781', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100786', 'TH2908', 'ທ່ານນາງ ມະໂນລົມ ຈຳປາທອງ', '', '1985-05-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055556966', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100787', 'TH2910', 'ທ່ານນາງ ອາວິລັກ ຄຸນນະວົງ', '', '1986-01-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055556551', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນ', 'ໜອງບົກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100788', 'TH2555', 'ທ່ານ ດາວວິສິນ ຜັ້ນນຸວົງ', '', '1987-11-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055590721', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານດອນເຄື່ອນຊ້າງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100789', 'TH2518', 'ທ່ານ ອານຸຊາ ຄຳສຸກຖາວົງ', '', '1978-10-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055451371', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100790', 'TH2597', 'ທ່ານ ສີພັນ ໄຊຍາວົງ', '', '1969-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055500526', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາປົ່ງ', 'ບົວລະພາ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100791', 'TH1948', 'ທ່ານນາງ ແກ້ວມະນີ ພົມມະວິໄສ', '', '1975-02-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054587878', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100792', 'TH3116', 'ທ່ານ ແກ້ວລຳພອນ ບຸນນະສີ', '', '1990-02-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054033222', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະນຸກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100793', 'TH3387', 'ທ່ານ ສຸກພະໄທ ໂງ່ນວໍລະລາດ', '', '1990-11-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055402040', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຍົກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100794', 'TH3392', 'ທ່ານນາງ ເພັດນາລີ ອິນທິລາດ', '', '1988-08-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054462999', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຂກກາງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100795', 'TH3485', 'ທ່ານນາງ ຕິມ ໄຊຍະລາດ', '', '1989-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058954777', 'ແຕ່ງງານ', '', '', '', '', '', 'ສຸກສະຫວັນ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100796', 'TH3488', 'ທ່ານ ສີພາພອນ ສຸວັນນະລາດ', '', '1983-06-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054739191', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຂກເໝືອ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100797', 'TH3699', 'ທ່ານ ສອນເພັດ ຄຳພີລາວົງ', '', '1984-01-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056722264', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າເດື່ອ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100798', 'TH3801', 'ທ່ານ ແວວຄຳ ສຸລິນທອນ', '', '1986-10-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059927171', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະໜາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100799', 'TH3117', 'ທ່ານ ລຳພູນ ວ້ຽນໄຊຊະນະ', '', '1981-11-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054916999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະໜາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100800', 'TH2952', 'ທ່ານ ບຸນຕາ ແສນທະວີສຸກ', '', '1977-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054418000', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງບົກ', 'ໜອງບົກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100801', 'TH3265', 'ທ່ານ ຄຳພິດສະໃຫມ ສີວົງຈັນ', '', '1991-01-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056799919', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາບົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100802', 'TH3529', 'ທ່ານນາງ ສຸໄພພອນ ພູນຍາວົງ', '', '1989-04-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055564419', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍນາງລີ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100803', 'TH3263', 'ທ່ານນາງ ອິນດາວອນ ຜັ້ນນຸວົງ', '', '1989-01-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056645956', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນເຄື່ອນຊ້າງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100804', 'TH2911', 'ທ່ານນາງ ວິພາກອນ ທູນລາວົງ', '', '1984-06-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055111183', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊິມັງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100805', 'TH2473', 'ທ່ານນາງ ຄຳພູວົງ ລຳທອງ', '', '1978-07-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054557474', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະໜາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100806', 'TH3202', 'ທ່ານ ບຸນທະວີໄຊ ລິນທອງປະຈິດ', '', '1970-03-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055950911', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາບົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100807', 'TH3321', 'ທ່ານນາງ ລູຊີ້ ສຸແສງໄທ', '', '1989-07-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059597878', 'ໂສດ', '', '', '', '', '', 'ດອນເຄື່ອນຊ້າງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100808', 'TH3486', 'ທ່ານນາງ ລຳເງິນ ໂພທິສາລາດ', '', '1991-12-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055557853', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາບົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100809', 'TH3487', 'ທ່ານນາງ ສຸກຂີ ເກດວົງສາ', '', '1988-12-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054539991', 'ໂສດ', '', '', '', '', '', 'ມ່ວງສຸມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100810', 'TH3595', 'ທ່ານນາງ ຄຳຫຼ້າ ແກ້ວມະນີ', '', '1991-11-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055574389', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະໜາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100811', 'TH3698', 'ທ່ານ ວິພາກອນ ໄຍມາດີວົງ', '', '1992-09-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059909172', 'ໂສດ', '', '', '', '', '', 'ສົມສະໜຸກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100812', 'TH3701', 'ທ່ານ ສິດປະເສີດ ຊາພູວົງ', '', '1987-02-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058807111', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວ້ຍນາງລີ້', 'ໜອງບົກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100813', 'TH3697', 'ທ່ານ ຫັດສະດີ ນົນທະເວດ', '', '1989-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2052839992', 'ໂສດ', '', '', '', '', '', 'ຈອມເພັດ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100814', 'TH3700', 'ທ່ານນາງ ນາລິນ ຫາວັນນະລາດ', '', '1990-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059632899', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຍາງ', 'ໜອງບົກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100815', 'TH3802', 'ທ່ານນາງ ມຸກດາວັນ ສຸວັນນະລາດ', '', '1990-02-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056556192', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຂກເຫນືອ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100816', 'TH3926', 'ທ່ານ ປະສິດໃສ ຈັນສຸດາ', '', '1988-08-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2052838838', 'ໂສດ', '', '', '', '', '', 'ໂພນສະໝາມ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100817', 'TH4075', 'ທ່ານ ດວງ ຂຸນມີໄຊ', '', '1984-10-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058804777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍົມມະລາດໄຕ້', 'ຍົມມະລາດ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100818', 'TH3813', 'ທ່ານນາງ ສຸວັນນາ ບຸນນາສີ', '', '1991-07-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054692456', 'ໂສດ', '', '', '', '', '', 'ສົມສະນຸກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100819', 'TH4076', 'ທ່ານນາງ ສົມບັດ ສີວັນດາ', '', '1991-02-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2059627171', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຂກກາງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100820', 'TH4250', 'ທ່ານນາງ ຄຳສອນ ໂພທິສາລາດ', '', '1993-08-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058437373', 'ໂສດ', '', '', '', '', '', 'ນາບົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100821', 'TH4330', 'ທ່ານນາງ ແກ້ວປາດຖະໜາ ພອນໄຊໂພວາ', '', '1989-10-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2054916868', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100822', 'TH4331', 'ທ່ານ ບອບບີ້ ຈັນທະໂສມ', '', '1992-05-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058305323', 'ໂສດ', '', '', '', '', '', 'ສຸກສະຫວັນ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100823', 'TH4332', 'ທ່ານ ພອນວິໄລ ບຸນທິສານ', '', '1992-06-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056779996', 'ໂສດ', '', '', '', '', '', 'ເລົ່າໂພໄຊ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100824', 'TH4333', 'ທ່ານ ສຸກີ ພິມມະສອນ', '', '1996-01-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2058882678', 'ໂສດ', '', '', '', '', '', 'ທ່າແຂກກາງ', 'ປາກກະດິງ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100825', 'TH4395', 'ທ່ານນາງ ພັດສະດາ ວົງປະກາ', '', '1994-10-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056636888', 'ໂສດ', '', '', '', '', '', 'ສັນຕິສຸກ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100826', 'TH4396', 'ທ່ານນາງ ດາລາພອນ ເຄນນະວົງ', '', '1994-02-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2055534542', 'ໂສດ', '', '', '', '', '', 'ສຸກສະຫວັນ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100827', 'TH4489', 'ທ່ານ ສຸກພະວິໃສ ວົງມະນີວັນ', '', '1992-12-31', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຄໍາມ່ວນ', '2056550222', 'ໂສດ', '', '', '', '', '', 'ປາກດົງ', 'ທ່າແຂກ', 'ຄໍາມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100828', 'SV1588', 'ທ່ານ ຄຳໝື່ນ ເພັງຄຳອ່ອນ', '', '1971-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055500616', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100829', 'SV0825', 'ທ່ານ ວັນນະສຸກ ມະນີບົດ', '', '1976-12-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055600085', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງດຳດວນ', 'ໄກສອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100830', 'SV2263', 'ທ່ານ ບົວຜັນ ມະນີວົງ', '', '1977-10-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055544653', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສິມ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100831', 'SV1499', 'ທ່ານ ເຄນໄຊ ສີວໍລະວົງ', '', '1971-05-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055588419', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100832', 'SV0906', 'ທ່ານນາງ ສອນທະວີ ແກ້ວລາວົງ', '', '1976-05-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056459555', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100833', 'SV1545', 'ທ່ານນາງ ສີດາວອນ ສິດທິຊົນ', '', '1976-09-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054722287', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຫົວເມືອງເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100834', 'SV1544', 'ທ່ານນາງ ຄຳພູຜ່ານ ສຸວັນນະໄກສອນ', '', '1977-04-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055500537', 'ໂສດ', '', '', '', '', '', 'ສະໜາມໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100835', 'SV1547', 'ທ່ານ ພູເງິນ ຜູຍໄຊຍະວົງ', '', '1977-11-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055590710', 'ແຕ່ງງານ', '', '', '', '', '', 'ມ່ວງໄຂ່', 'ໄຊພູທອງ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100836', 'SV1708', 'ທ່ານ ສຸກັນ ສີລາວົງ', '', '1975-07-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055589298', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100837', 'SV2579', 'ທ່ານ ປິລະດາ ຈຸນລະມຸນຕີ', '', '1984-12-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054501999', 'ໂສດ', '', '', '', '', '', 'ນາບໍ່', 'ເຊໂປນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100838', 'SV2265', 'ທ່ານ ພອນສະໜິດ ສີມມະລີວົງ', '', '1983-02-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055150011', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງໃຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100839', 'SV2050', 'ທ່ານ ບຸນປັນ ສຸວັນນະໄກສອນ', '', '1980-06-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054217888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກເມືອງ', 'ສອງຄອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100840', 'SV2266', 'ທ່ານ ສູນທະລາ ຈຸນລະມຸນຕີ', '', '1982-02-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056664466', 'ໂສດ', '', '', '', '', '', 'ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100841', 'SV2546', 'ທ່ານນາງ ເພັດຈິນດາ ແກ້ວຊາຍຄຳ', '', '1986-05-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055955988', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ໄຊຍະພູມ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100842', 'SV1983', 'ທ່ານນາງ ເພັນສະຫວັນ ອາໃສ', '', '1978-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055747499', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊຍະພູມ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100843', 'SV2262', 'ທ່ານ ຄອນສະຫວັນ ນິນທາ', '', '1981-08-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054852666', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໂພນສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100844', 'SV2228', 'ທ່ານ ໄຊຍະຈິດ ສີດາພອນ', '', '1982-06-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054635935', 'ແຕ່ງງານ', '', '', '', '', '', 'ລາດສະວົງໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100845', 'SV2456', 'ທ່ານ ອາດີສອນ ສີຫາປັນຍາ', '', '1983-07-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055157799', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຊາຍ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100846', 'SV1507', 'ທ່ານ ໄຊຍະວົງ ບຸດສະບົວບານ', '', '1976-12-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055522699', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫ່ວາງໃຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100847', 'SV2049', 'ທ່ານ ບົວລີ ເພັດສີແດງ', '', '1979-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055736677', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມວິໄລ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100848', 'SV1856', 'ທ່ານ ບົວຄຳ ນອງວົງນະລາດ', '', '1976-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056442345', 'ຮ້າງ', '', '', '', '', '', 'ນອງ', 'ນອງ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100849', 'SV1925', 'ທ່ານ ສີທຸຍ ປັນຍາ​ທິບ', '', '1981-09-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055624262', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊຍະມຸງຄຸນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100850', 'SV3250', 'ທ່ານນາງ ສຸວັນຄຳ ສຸຂານຸວົງ', '', '1988-03-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058533334', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100851', 'SV2574', 'ທ່ານ ແວວມະນີ ແສງສຸລິຈັນ', '', '1971-05-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054570222', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ສະຫນາມໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100852', 'SV2580', 'ທ່ານນາງ ຈິນຕະນາ ທາສາຂາ', '', '1985-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059062777', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນໃຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100853', 'SV2470', 'ທ່ານນາງ ຈັນພິລາ ສຸວັນນະໄກສອນ', '', '1985-10-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056729988', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫນາມໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100854', 'SV2545', 'ທ່ານນາງ ງາວີ ອິນສີຊຽງໃໝ່', '', '1982-06-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054236459', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ລາດສະວົງໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100855', 'SV1016', 'ທ່ານ ແສງຈັນ ຄຳພິລາໄລ', '', '1979-03-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055641996', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະໜາມໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100856', 'SV1506', 'ທ່ານ ໃຈສະຫວ່າງ ສີຫາຈັກ', '', '1971-03-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054403777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຜື', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100857', 'SV2264', 'ທ່ານ ຄຳຮັກ ພົມມະນີວົງ', '', '1982-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054774222', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ນາເຊັງ', 'ຄັນທະບູລີ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100858', 'SV1515', 'ທ່ານ ທອງສະຫວັນ ແກ້ວວົງມາ', '', '1970-05-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2052288855', 'ແຕ່ງງານ', '', '', '', '', '', 'ວົງພັນສີ', 'ອຸທຸມພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100859', 'SV2026', 'ທ່ານ ບຸນມາ ຄຸນນີວົງ', '', '1978-11-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055008090', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງກອກເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100860', 'SV2503', 'ທ່ານ ທອງລາ ທຳມະບຸດ', '', '1983-08-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054508555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກເມືອງ', 'ສອງຄອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100861', 'SV2207', 'ທ່ານ ສົມລອງ ສີຫາລາດ', '', '1981-11-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055442855', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕະບອງເພັດ', 'ອາດສະພັງທອງ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100862', 'SV3194', 'ທ່ານ ແສງສະຫວັນ ອີນສີສຸລາດ', '', '1983-04-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055247382', 'ແຕ່ງງານ', '', '', '', '', '', 'ກຸດຊຸງ', 'ອາດສະພັງທອງ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100863', 'SV2890', 'ທ່ານນາງ ມະນີວອນ ບັນເນົາ', '', '1987-06-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055122215', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100864', 'SV2901', 'ທ່ານ ຈັນທະລາ ເວດວິລະກຸນ', '', '1986-08-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055567434', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100865', 'SV2904', 'ທ່ານນາງ ກິ່ງແກ້ວ ດາລາວົງສຸກ', '', '1990-01-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055635656', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100866', 'SV2906', 'ທ່ານນາງ ສີປະເສີດ ວໍລະບຸດ', '', '1989-02-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058393939', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100867', 'SV2902', 'ທ່ານ ອຸທອນເພັດ ບົວສານຸວົງ', '', '1986-01-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056569494', 'ຮ້າງ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100868', 'SV3247', 'ທ່ານນາງ ເພັດສະໄໝ ມາດທະວົງ', '', '1989-10-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056192456', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໂນນສະຫວາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100869', 'SV3249', 'ທ່ານນາງ ນຸດດາລອນ ໄຊຍະລາດ', '', '1988-01-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055916699', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100870', 'SV3252', 'ທ່ານນາງ ນ້ຳຝົນ ສີຍານົນ', '', '1988-11-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056562289', 'ແຕ່ງງານ', '', '', '', '', '', 'ລາດສະວົງໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100871', 'SV3248', 'ທ່ານ ໂຊກທະວີ ສາຍຈຳພອນ', '', '1987-03-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058511124', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100872', 'SV3110', 'ທ່ານນາງ ຈ້ອນ ແກ້ວພູວົງ', '', '1989-03-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058517172', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກເມືອງ', 'ສອງຄອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100873', 'SV3253', 'ທ່ານນາງ ໃບທອງ ພຸດມາສອນ', '', '1986-09-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056415551', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນມີໄຊ', 'ເຊໂປນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100874', 'SV3112', 'ທ່ານນາງ ພົງສິລິ ພົມມະວົງ', '', '1988-06-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056995959', 'ຮ້າງ', '', '', '', '', '', 'ນາເລົ່າ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100875', 'SV3184', 'ທ່ານ ສົມໝາຍ ສິງຫາວົງ', '', '1985-05-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055544663', 'ຮ້າງ', '', '', '', '', '', 'ສະພານເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100876', 'SV3106', 'ທ່ານ ວິນັດ ໄຊຍະພອນ', '', '1986-11-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056568799', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100877', 'SV3083', 'ທ່ານນາງ ໄອ່ສະໝອນ ແກ້ວອາສາ', '', '1983-12-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055623239', 'ໂສດ', '', '', '', '', '', 'ທາດອີງຮັງ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100878', 'SV3322', 'ທ່ານນາງ ຂັນທະລີ ນົນສີລິ', '', '1990-03-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054417879', 'ແຕ່ງງານ', '', '', '', '', '', 'ລັດຕະນະລັງສີເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100879', 'SV3324', 'ທ່ານ ວົງວິລັດ ພະເທບສຸວັນ', '', '1992-06-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055252244', 'ໂສດ', '', '', '', '', '', 'ລາດຊະວົງໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100880', 'SV3323', 'ທ່ານ ພູວາ ລາດສະບຸດ', '', '1979-12-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058813928', 'ໂສດ', '', '', '', '', '', 'ອຸດົມວິໄລ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100881', 'SV3266', 'ທ່ານ ວົງເດືອນ ສີຫານະລາດ', '', '1988-05-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059691929', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100882', 'SV2519', 'ທ່ານ ພັນມະຫາ ແກ້ວອາສາ', '', '1983-03-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055744446', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100883', 'SV2905', 'ທ່ານນາງ ເກດອຸດົມ ເທບລືຊາ', '', '1984-09-26', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058798899', 'ແຕ່ງງານ', '', '', '', '', '', 'ລັດຕະນະລັງສີເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100884', 'SV3251', 'ທ່ານນາງ ແກ້ວມະນີວັນ ກົມປັນຍາ', '', '1988-04-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055555412', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100885', 'SV3113', 'ທ່ານນາງ ພອນປະເສີດ ບຸດສະບົວບານ', '', '1989-06-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058533339', 'ແຕ່ງງານ', '', '', '', '', '', 'ບາກ', 'ຈຳພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100886', 'SV3109', 'ທ່ານນາງ ພຸດທະສິນ ມາກເທບພະວົງ', '', '1988-09-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055424153', 'ໂສດ', '', '', '', '', '', 'ອຸດົມວິໄລ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100887', 'SV3111', 'ທ່ານນາງ ສຸກສັນ ວົງສຳພັນ', '', '1989-04-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056562445', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100888', 'SV3836', 'ທ່ານ ກົງຄຳ ສັກປະເສີດ', '', '1982-11-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056665234', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100889', 'SV3319', 'ທ່ານນາງ ລັດສະໝີ ອິນທະປັນຍາ', '', '1984-01-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055226662', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊຍະມຸງຄຸນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100890', 'SV3325', 'ທ່ານ ບຸນທຸມາດ ສວນວິຈິດ', '', '1983-02-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055969024', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100891', 'SV4016', 'ທ່ານນາງ ຈັນສຸດາ ຟອງສະໝຸດ', '', '1985-09-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054858777', 'ແຕ່ງງານ', '', '', '', '', '', 'ລັດຕະນະລັງສີເໝືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100892', 'SV3761', 'ທ່ານນາງ ຂັນທະລີ ສຸນັນໃຈ', '', '1983-08-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055443322', 'ໝ້າຍ', '', '', '', '', '', 'ໄຊຍະເພັດ', 'ອຸທຸມພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100893', 'SV4013', 'ທ່ານນາງ ມຸກກາຍຍາ ພິມປັນຍາ', '', '1988-08-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059989669', 'ໂສດ', '', '', '', '', '', 'ໄຊຍະພູມ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100894', 'SV4011', 'ທ່ານ ບັນດິດ ຊາມຸນຕຣີ', '', '1990-06-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059117575', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງດຳດວນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100895', 'SV4012', 'ທ່ານ ສຸກດາວອນ ສີຫາຈັກ', '', '1989-11-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056789858', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຊາຍ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100896', 'SV4014', 'ທ່ານນາງ ຈັນສະໜຸດ ໄຊສົງຄາມ', '', '1991-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054686888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແກ້ວ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100897', 'SV4015', 'ທ່ານນາງ ແວວຕາ ເກດຕະວົງ', '', '1990-05-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054458855', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄູ', 'ຈຳພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100898', 'SV4077', 'ທ່ານ ຄຳຈັນ ທຳມະວົງສາ', '', '1987-04-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055812200', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວເມືອງໄຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100899', 'SV4078', 'ທ່ານ ວິສິດ ອານົນທາເສນ', '', '1987-03-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058388877', 'ແຕ່ງງານ', '', '', '', '', '', 'ວົງວິໄລ', 'ເຊໂປນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100900', 'SV4079', 'ທ່ານ ວັດທະນາ ແກ້ວລ້ຽງມາ', '', '1987-06-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059685655', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນມີໄຊ', 'ເຊໂປນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100901', 'SV4080', 'ທ່ານນາງ ວົງດາວອນ ກຽດຕະວົງ', '', '1993-10-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054543455', 'ໂສດ', '', '', '', '', '', 'ນາເລົ້່າ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100902', 'SV4081', 'ທ່ານ ອຳໄພ ທຳມະວົງ', '', '1985-05-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055525905', 'ແຕ່ງງານ', '', '', '', '', '', 'ສອນໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100903', 'SV4082', 'ທ່ານນາງ ວິໄລສັກ ພອນມະນີ', '', '1988-07-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058592234', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງໃຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100904', 'SV4083', 'ທ່ານ ທະວີສອນ ຈອມສີແສງເພັດ', '', '1984-03-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059778595', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງກອກເໜືອ', 'ຈຳພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100905', 'SV4086', 'ທ່ານ ສະຫວັນໄຊ ພະພິລົມພອນ', '', '1993-10-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059531313', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງໃຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100906', 'SV4084', 'ທ່ານ ທອງສະໄໝ ຂັນຕິສັກ', '', '1990-06-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2052397444', 'ໂສດ', '', '', '', '', '', 'ກຸດຊຸງ', 'ອາດສະພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100907', 'SV4087', 'ທ່ານ ມະຫັດຕະ ກາຊົມພູ', '', '1993-04-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055534234', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງເໜືອ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100908', 'SV4085', 'ທ່ານ ໄກ່ທະນູ ພິດສະພອນ', '', '1993-11-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055255345', 'ໂສດ', '', '', '', '', '', 'ອຸດົມວິໄລ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100909', 'SV4380', 'ທ່ານ ໄຊຍະສິດ ວິໄລວັນ', '', '1981-08-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056666062', 'ໂສດ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100910', 'SV4379', 'ທ່ານ ບົວຄຳ ມະນີວົງ', '', '1986-01-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2052822241', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມວິໄລ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100911', 'SV4378', 'ທ່ານ ຈິດຕະກອນ ສິງຫາລາດ', '', '1992-02-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058457799', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງໃຕ້', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100912', 'SV4415', 'ທ່ານ ທານິນ ໄຊສົມບັດ', '', '1989-06-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059377722', 'ໂສດ', '', '', '', '', '', 'ພູມມະເຈດີ', 'ໄຊພູທອງ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100913', 'SV4416', 'ທ່ານ ອຸດົມເພັດ ສີສົມບັດ', '', '1982-08-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055524593', 'ໂສດ', '', '', '', '', '', 'ສອນໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100914', 'SV4417', 'ທ່ານ ບຸນມາ ອິນສີຊຽງໃໝ່', '', '1982-07-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2059497474', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງກອກ', 'ຈຳພອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100915', 'SV4492', 'ທ່ານ ທິນນະກອນ ສີຫາວົງ', '', '1991-08-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2052929998', 'ໂສດ', '', '', '', '', '', 'ໂພໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100916', 'SV4493', 'ທ່ານ ອະນຸພາບ ວົງພະຈັນ', '', '1995-02-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055289444', 'ໂສດ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100917', 'SV4512', 'ທ່ານນາງ ສຸດາຈັນ ສາຍຜັນ', '', '1997-02-16', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2056298789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສະອາດ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100918', 'SV4513', 'ທ່ານ ສີລັດດາ ເທບທອງໃສ', '', '1986-03-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2054849444', 'ໂສດ', '', '', '', '', '', 'ຫຼັກເມືອງ', 'ສອງຄອນ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100919', 'SV4516', 'ທ່ານ ສຸກສັນ ອຸເທນສັກດາ', '', '1994-11-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2055887813', 'ໂສດ', '', '', '', '', '', 'ລາດສະວົງໄຊ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100920', 'SV4517', 'ທ່ານ ຊ່ວຍ ຂັນທຽນແສງທອງ', '', '1990-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2057599797', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100921', 'SV4518', 'ທ່ານ ພຸດທະຈັນ ແສນບຸດຕະລາດ', '', '1987-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສະຫວັນນະເຂດ', '2058826979', 'ໂສດ', '', '', '', '', '', 'ນາເລົ່າ', 'ນະຄອນໄກສອນພົມວິຫານ', 'ສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100922', 'SL1609', 'ທ່ານ ຖາວອນ ກິ່ງສັກດາ', '', '1974-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055590580', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານຫລັກ 2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100923', 'SL2161', 'ທ່ານ ສຸກສະຫວັດ ທົງສະອອນ', '', '1977-07-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055590885', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂດນ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100924', 'SL1601', 'ທ່ານ ພູສິດ ນາມວັນສີ', '', '1974-04-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2057575737', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄັນທະລາດ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100925', 'SL2507', 'ທ່ານ ສະຫວັນໄຊ ເທບວົງສາ', '', '1982-12-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2056464666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກສອງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100926', 'SL2019', 'ທ່ານ ອິນຖາ ສຸພານີ', '', '1976-04-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055600251', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກ 2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100927', 'SL2159', 'ທ່ານນາງ ບົວສະຫວັນ ວົງຈອມສີ', '', '1981-02-22', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055590548', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກ 2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100928', 'SL1623', 'ທ່ານ ສູນທະລີ ອັງຄະໄລ', '', '1973-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2052099922', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100929', 'SL1624', 'ທ່ານ ບຸນລ້ຳ ອຸ່ນຫຼ້າ', '', '1975-12-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055097777', 'ແຕ່ງງານ', '', '', '', '', '', 'ລະຄອນສີ', 'ລະຄອນເພັງ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100930', 'SL2276', 'ທ່ານ ດວງເມດຕາ ຂຸນທິກຸມມານ', '', '1980-09-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058228678', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານນາໂຄກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100931', 'SL2160', 'ທ່ານ ບຸນຍະເນັ່ງ ທອງສະຫວັນ', '', '1979-12-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055500642', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວເສັດ', 'ເຫຼົ່າງາມ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100932', 'SL1613', 'ທ່ານນາງ ສຸນີ ວິລະວົງ', '', '1976-11-19', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055500644', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂດນ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100933', 'SL2750', 'ທ່ານ ຫັດສະດົງ ປະສານສອນ', '', '1982-10-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2056362223', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດທອງຫລວງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100934', 'SL2083', 'ທ່ານ ຫວຽນເຊີນ ສາຍທຳມະວົງ', '', '1980-03-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055849777', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂດນ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100935', 'SL2752', 'ທ່ານ ຄານຕາວັນ ບຸນພາສີ', '', '1989-03-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059158333', 'ໂສດ', '', '', '', '', '', 'ນາໂດນ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100936', 'SL3208', 'ທ່ານນາງ ອັກຄະສອນ ພິລາພັນເດດ', '', '1988-12-07', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058462777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກ 2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100937', 'SL2995', 'ທ່ານນາງ ວານິດາ ວົງສຸພັນ', '', '1989-09-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058495849', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂຄກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100938', 'SL2997', 'ທ່ານນາງ ສຸດໃຈ ບຸນປະສົງ', '', '1988-04-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059094444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄົງນະຄອນ', 'ຄົງເຊໂດນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100939', 'SL3210', 'ທ່ານ ເລວານົກ ແທ່ງສົມບັດ', '', '1989-05-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055077070', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດກາງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100940', 'SL2289', 'ທ່ານ ນວນ ແກ້ວບົວສີ', '', '1982-08-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2052267788', 'ແຕ່ງງານ', '', '', '', '', '', 'ສູງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100941', 'SL2191', 'ທ່ານນາງ ແສງອາທິດ ນໍລະຈັກ', '', '1982-08-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2056166668', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເຫລັກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100942', 'SL2192', 'ທ່ານນາງ ເມຂາ ເທບວົງສາ', '', '1978-03-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055144555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກສອງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100943', 'SL1935', 'ທ່ານ ຄຳຫຼ້າ ແກ້ວບຸນສີ', '', '1977-05-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055600144', 'ໂສດ', '', '', '', '', '', 'ພູມສະຫວັນ', 'ວາປີ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100944', 'SL2468', 'ທ່ານ ວິລັດ ບຸດພັນພົມມະວົງ', '', '1981-01-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055354888', 'ແຕ່ງງານ', '', '', '', '', '', 'ເທດສະບານ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100945', 'SL2751', 'ທ່ານ ມິດນາລົງ ວັນດາວົງ', '', '1985-10-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055556695', 'ແຕ່ງງານ', '', '', '', '', '', 'ລະຄອນສີ', 'ລະຄອນເພັງ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100946', 'SL2020', 'ທ່ານ ສະໜັ່ນ ສິນລິດສະຫມີ', '', '1978-06-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055648638', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100947', 'SL3282', 'ທ່ານ ຄອນສະໃໝ ສອນສະໝຸດ', '', '1988-10-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055551699', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູມສະຫວັນ', 'ວາປີ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100948', 'SL3605', 'ທ່ານ ຂາວພອນ ແກ້ວກະເສີມສຸກ', '', '1991-06-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054499418', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຈະເລີນ', 'ຄົງເຊໂດນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100949', 'SL3606', 'ທ່ານນາງ ຈອນນີ ສີສຸລາດ', '', '1991-01-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058473999', 'ໂສດ', '', '', '', '', '', 'ນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100950', 'SL3814', 'ທ່ານ ໂຍທິນ ວິລະວົງ', '', '1991-01-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055556562', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໂດນ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100951', 'SL1612', 'ທ່ານ ພອນໄຊ ຮຽງມະນີມຸງຄຸນ', '', '1968-08-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059157555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຄກເກົ່າ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100952', 'SL1617', 'ທ່ານ ສຸວັນນັງ ເທບບຸນມີ', '', '1972-12-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054607666', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູມສະຫວັນ', 'ວາປີ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100953', 'SL2215', 'ທ່ານ ຄຳສິງ ລັກສະນະສີສານ', '', '1981-08-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054887444', 'ແຕ່ງງານ', '', '', '', '', '', 'ພໍ່ຫລົງ', 'ເຫຼົ່າງາມ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100954', 'SL2996', 'ທ່ານ ບົວເພັດ ວົງສຳພັນ', '', '1977-02-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054611456', 'ໂສດ', '', '', '', '', '', 'ນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100955', 'SL3280', 'ທ່ານນາງ ສັນທະນາ ແສງອາລຸນ', '', '1989-04-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058141414', 'ໂສດ', '', '', '', '', '', 'ໂກະ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100956', 'SL3283', 'ທ່ານ ສິດທິພົງ ສຸເທບມະນີ', '', '1986-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2052277333', 'ໂສດ', '', '', '', '', '', 'ໂພນບົກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100957', 'SL3450', 'ທ່ານ ວັດທະນາ ພົມມະຈັນ', '', '1990-08-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054328855', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດກາງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100958', 'SL3604', 'ທ່ານ ເພັດສະໄໝ ພຸດທະວົງ', '', '1988-06-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059666818', 'ໂສດ', '', '', '', '', '', 'ສາມາຄິໄຊ', 'ຕຸ້ມລານ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100959', 'SL3704', 'ທ່ານນາງ ອຸປະສິດ ຕູ້ທອງ', '', '1992-12-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054582111', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສຳລານ', 'ຄົງເຊໂດນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100960', 'SL3815', 'ທ່ານນາງ ອຳພາວັນ ຈຳປາຄຳ', '', '1978-12-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2057579797', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫລັກ 2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100961', 'SL4071', 'ທ່ານ ໂຕໂຕ້ ຫານຊະນະ', '', '1994-02-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059666432', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກສອງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100962', 'SL4072', 'ທ່ານ ວິຊຽນ ສີສຸມັງ', '', '1989-04-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059666717', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດກາງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100963', 'SL4073', 'ທ່ານ ດວງວິໄລ ທຸມມະວິໄລ', '', '1991-05-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2056455645', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເຫລັກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100964', 'SL4074', 'ທ່ານ ພອນ ອິນປັນຍາ', '', '1988-08-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059666965', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100965', 'SL4217', 'ທ່ານ ສີລາວັນ ຂຸນພິນິດ', '', '1989-09-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2052269888', 'ໂສດ', '', '', '', '', '', 'ນາເຫຼັກ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100966', 'SL4251', 'ທ່ານ ສາວະລິດ ສີລິໂພຄາ', '', '1989-09-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058402555', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100967', 'SL4324', 'ທ່ານ ຊີວາ ໂຄດປັນຍາ', '', '1989-06-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055320789', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາກົກໂພ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100968', 'SL4325', 'ທ່ານນາງ ໂດສິດຊາ ບຸນທະວີສານ', '', '1994-09-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2058734499', 'ໂສດ', '', '', '', '', '', 'ຫຼັກ2', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100969', 'SL4326', 'ທ່ານນາງ ວັນເພັດ ສີລິໂພຄາ', '', '1992-09-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055277333', 'ໂສດ', '', '', '', '', '', 'ວັດກາງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100970', 'SL4327', 'ທ່ານ ພູຂຽວ ຄຳມະວົງສາ', '', '1989-06-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2059151311', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຫຼົ່າງາມ', 'ເຫຼົ່າງາມ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100971', 'SL4328', 'ທ່ານ ພຸດທະນາ ພົມມະສານ', '', '1988-06-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055226588', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໜ້ອງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100972', 'SL4329', 'ທ່ານ ພາສິດ ຈັນທະລັກສາ', '', '1990-12-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2055844145', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100973', 'SL4483', 'ທ່ານ ພະອິນ ລ້ວນມີຄຳ', '', '1992-10-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ສາລະວັນ', '2054155500', 'ໂສດ', '', '', '', '', '', 'ວັດກາງ', 'ສາລະວັນ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100974', 'SK1640', 'ທ່ານ ເພັດສະຫງ່າ ສຸດທິຈັກ', '', '1975-05-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055590903', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດຫຼວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100975', 'SK1637', 'ທ່ານນາງ ຈັນສະໝອນ ປັນຍາໄຊ', '', '1972-08-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055500872', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100976', 'SK1632', 'ທ່ານ ສົມເພັດ ທຳມະວົງ', '', '1975-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055590507', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100977', 'SK1629', 'ທ່ານ ບຸນທອນ ໄຊຈະເລີນສຸກ', '', '1968-08-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055590506', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100978', 'SK2001', 'ທ່ານ ສັນຍາເພັດ ພັນທະວົງ', '', '1975-03-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055500648', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຈັນ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100979', 'SK1713', 'ທ່ານນາງ ເລັດສະໝອນ ວາດສະຫງ່າ', '', '1977-10-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055600082', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃຫມ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100980', 'SK2056', 'ທ່ານນາງ ສຸລິວັນ ຂຸນສົມບັດ', '', '1978-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055590549', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100981', 'SK1631', 'ທ່ານ ມົດສະຫວັນ ສິດທິບຸນລ້ຽງ', '', '1973-05-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055600083', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພ່ຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100982', 'SK1714', 'ທ່ານ ແກ່ນຈັນ ບົວນາພອນ', '', '1975-11-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055099666', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພຍໃຫມ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100983', 'SK2501', 'ທ່ານ ພູທອນ ແສງສາຍ', '', '1980-11-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2059606555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100984', 'SK2210', 'ທ່ານ ສົມສະນິດ ສິດທິພອນ', '', '1981-04-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2056673333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100985', 'SK2122', 'ທ່ານນາງ ຫົງສາ ຄຳພັນ', '', '1980-07-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055638119', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫຼວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072100986', 'SK2504', 'ທ່ານນາງ ປະທຸມຄຳ ສິດທິນະຣົງສີ', '', '1983-07-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055500693', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100987', 'SK2462', 'ທ່ານນາງ ຈັນສີ ທຳມະວົງ', '', '1981-07-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055534554', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100988', 'SK2209', 'ທ່ານ ເພັດສະຫວັນ ພາໄຊ', '', '1975-06-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055600081', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຫນອງຫລ້າ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100989', 'SK2697', 'ທ່ານ ສົມເນດ ໄຊສົງຄາມ', '', '1987-11-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055590715', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100990', 'SK1633', 'ທ່ານ ຟອງສະໝຸດ ຫວາງດີ', '', '1968-03-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2056673113', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100991', 'SK3161', 'ທ່ານນາງ ນົງສຸກ ວາດສະຫງ່າ', '', '1987-04-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055538881', 'ໂສດ', '', '', '', '', '', 'ທ່າຫລວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100992', 'SK2958', 'ທ່ານ ຄອນສະຫວັນ ສິດທິຮັກປັນຍາ', '', '1984-03-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058500005', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100993', 'SK2959', 'ທ່ານ ສຸລິຂັນ ພົມມະບຸດ', '', '1983-02-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055068881', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100994', 'SK2957', 'ທ່ານນາງ ທິບພະຄອນ ໃຈດຳ', '', '1985-09-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054329997', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫລວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100995', 'SK3164', 'ທ່ານ ສົມເນດ ສຸກຜາສິດ', '', '1987-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055581681', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100996', 'SK3165', 'ທ່ານ ພູເຂົາ ເຮືອງສັກ', '', '1989-09-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054740123', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພ່ຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100997', 'SK3452', 'ທ່ານນາງ ລັດຕະນາ ສຸດທິຈັກ', '', '1991-04-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055566338', 'ແຕ່ງງານ', '', '', '', '', '', 'ລານມານ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100998', 'SK3453', 'ທ່ານນາງ ສີວິໄລ ຈັນລັງສີ', '', '1991-07-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055553072', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072100999', 'SK3457', 'ທ່ານ ສອນພິທັກ ວິມົນລັດ', '', '1987-05-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055166456', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫຼວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101000', 'SK3458', 'ທ່ານ ວັນນະສັກ ແກ້ວບົວສີ', '', '1987-10-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054155666', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຕງເໜືອ', 'ບໍ່ມີເມືອງ', 'ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101001', 'SK3455', 'ທ່ານນາງ ພັນແສງ ຈັນໜອງຊວງ', '', '1990-01-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054099220', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101002', 'SK3456', 'ທ່ານ ໂຕບີ ສຸດທິໄຊ', '', '1991-04-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055505245', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101003', 'SK3660', 'ທ່ານ ດາວເພັດ ພອນມາລາ', '', '1989-04-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054549990', 'ໂສດ', '', '', '', '', '', 'ດາກຈຶງ', 'ດາກຈື່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101004', 'SK3661', 'ທ່ານນາງ ສຳລານ ສີຫາວົງ', '', '1990-10-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055505150', 'ໂສດ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101005', 'SK3662', 'ທ່ານ ສັນຈອນ ມອນທະວີ', '', '1985-10-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055524494', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101006', 'SK3803', 'ທ່ານ ແຫຼ້ ພົງແພງໄຊ', '', '1984-09-27', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054614143', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງກຸ້ຍ', 'ກະລຶມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101007', 'SK2956', 'ທ່ານ ທອງວິນ ອິນທະຄອງ', '', '1985-02-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055559856', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຕງເຫນືອ', 'ທ່າແຕ່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101008', 'SK3454', 'ທ່ານນາງ ດອກແກ້ວ ສະແຫວງສິນ', '', '1991-12-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2057310898', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101009', 'SK3659', 'ທ່ານ ທະນູໄຊ ບຸນທະໜອມ', '', '1987-07-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055588447', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101010', 'SK3663', 'ທ່ານ ສຸດກັນດາ ໄຊຍະກຸນ', '', '1984-10-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055019166', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101011', 'SK3845', 'ທ່ານ ຍອນ ບຸດຄຳສົງ', '', '1989-12-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055533181', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈຸງຮຸງໃຕ້', 'ທ່າແຕ່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101012', 'SK3805', 'ທ່ານນາງ ສີມມະລີ ຈຳປາມະນີວົງ', '', '1988-08-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054226399', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງກຸ້ຍ', 'ກະລຶມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101013', 'SK3806', 'ທ່ານນາງ ຕ້ານະພາ ອິນຖາພົມ', '', '1991-02-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2056737779', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າແຕ່ງເໜືອ', 'ທ່າແຕ່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101014', 'SK3807', 'ທ່ານ ສົມບຸນ ບາງສະໝອນ', '', '1990-08-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055955515', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101015', 'SK3804', 'ທ່ານ ອຸງ ບຸດດາກຈຶງ', '', '1993-03-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058404010', 'ແຕ່ງງານ', '', '', '', '', '', 'ດາກຈຶງ', 'ດາກຈື່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101016', 'SK4102', 'ທ່ານ ສັກດາ ທອນພະຈັນ', '', '1990-01-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2059691131', 'ໂສດ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101017', 'SK4104', 'ທ່ານນາງ ບັນທະໄລ ສຸກທະວີ', '', '1992-01-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2056494456', 'ໂສດ', '', '', '', '', '', 'ເພ່ຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101018', 'SK4105', 'ທ່ານນາງ ຈັນພະສິດ ທິດສະເສົາ', '', '1987-08-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054194724', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101019', 'SK4106', 'ທ່ານ ເຕົ໋າ ພິມມະສອນ', '', '1992-12-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058499988', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101020', 'SK4107', 'ທ່ານນາງ ຫຼ້າຄຳ ໂພຈັນຄອງ', '', '1990-09-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055562296', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພ່ຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101021', 'SK4108', 'ທ່ານນາງ ມຸກດາວັນ ໄຊຈະເລີນສຸກ', '', '1994-12-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058228822', 'ໂສດ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101022', 'SK4345', 'ທ່ານນາງ ສີຄູນ ຊະນະພັນ', '', '1994-06-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055638513', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101023', 'SK4346', 'ທ່ານ ສາຄອນ ໄຊຍະລາດ', '', '1987-10-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2056237777', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພ່ຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101024', 'SK4347', 'ທ່ານ ນັດທະພອນ ບຸດດາຜົນ', '', '1996-06-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2055515900', 'ໂສດ', '', '', '', '', '', 'ເພຍໃໝ່', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101025', 'SK4348', 'ທ່ານ ທອງໄມ ແກ້ວປະເສີດ', '', '1993-06-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2054890333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່ຫົວເມືອງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101026', 'SK4365', 'ທ່ານນາງ ນ້ອຍສຸກຂີ ໂຄດໂຍທາ', '', '1994-01-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058440456', 'ໂສດ', '', '', '', '', '', 'ວັດຫຼວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101027', 'SK4367', 'ທ່ານ ພອນສິດ ອິນທຳມະວັນ', '', '1995-02-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2052077999', 'ໂສດ', '', '', '', '', '', 'ຈຸນລາ', 'ທ່າແຕ່ງ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101028', 'SK4368', 'ທ່ານ ບຸນທະວີ ສິນປະເສີດ', '', '1994-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058987666', 'ໂສດ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101029', 'SK4369', 'ທ່ານ ຫວຽດ ຖິ່ນອົງແກ້ວ', '', '1996-11-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ເຊກອງ', '2058968555', 'ໂສດ', '', '', '', '', '', 'ໂນນມີໄຊ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101030', 'PS1554', 'ທ່ານນາງ ຄຳຫຼ້າ ອຸດົມສັກ', '', '1965-06-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055590555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວຕະພານ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101031', 'PS1579', 'ທ່ານ ວິລະສັກ ດວງດາລາ', '', '1974-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055500702', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວ້ຍຍາງຄຳ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101032', 'PS1092', 'ທ່ານນາງ ວຽງເງິນ ພົງສາ', '', '1973-05-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055500546', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101033', 'PS1587', 'ທ່ານ ຄຳໄຫວ ສິດທິວົງ', '', '1971-02-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055432846', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງໂຂງ', 'ໂຂງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101034', 'PS1558', 'ທ່ານນາງ ຄຳຜິວ ເທບທິລາດ', '', '1970-11-29', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054045888', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫນາມໄຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101035', 'PS1576', 'ທ່ານ ສົມສັກ ພົມມະແສງ', '', '1973-04-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055131513', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນດູ່', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101036', 'PS1577', 'ທ່ານ ຄອນສະຫັວນ ທະນາກອນ', '', '1971-02-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055432577', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະໝາມໃຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101037', 'PS1575', 'ທ່ານ ພີມພອນ ສິງຄະໂນນໄທ', '', '1969-05-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055500624', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວແຊ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101038', 'PS1568', 'ທ່ານ ອຸດອນ ໄຊຍະສອນ', '', '1971-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055500553', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວແຊ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101039', 'PS1937', 'ທ່ານນາງ ທິບພາພອນ ບົວລະພັນ', '', '1976-01-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055631288', 'ໂສດ', '', '', '', '', '', 'ໂຊກອຳນວຍ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101040', 'PS1675', 'ທ່ານນາງ ວຽງຄຳ ບົວລາວົງ', '', '1976-06-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055830555', 'ໂສດ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101041', 'PS2205', 'ທ່ານ ຄຳຫຼ້າ ສີຍາວົງ', '', '1984-01-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055590712', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາໝາດ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101042', 'PS1592', 'ທ່ານ ຈັນທະວີສັກ ພະຂັນທອງ', '', '1973-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055632559', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງຄະຍອມ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101043', 'PS1011', 'ທ່ານ ສົມລິດ ບຸນນະຜົນ', '', '1975-12-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630704', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101044', 'PS1595', 'ທ່ານ ດຳລົງສັນຕິ ພັນທາລັກ', '', '1975-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630146', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄັນເກີງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101045', 'PS2405', 'ທ່ານ ຄອນສະໃໝ ເກດສະຫວັນ', '', '1982-10-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059259222', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັກສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101046', 'PS1552', 'ທ່ານ ຄຳພູນ ທຸມພະລາ', '', '1969-05-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055130555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຍາງຄຳ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101047', 'PS1580', 'ທ່ານ ປະເສີດ ລ້ວນດວງຈັນ', '', '1972-10-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630857', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101048', 'PS1553', 'ທ່ານນາງ ຄຳປະສົງ ສົງແສນທະວີສຸກ', '', '1975-06-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055132777', 'ໂສດ', '', '', '', '', '', 'ປາກຊອນ', 'ຊະນະສົມບູນ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101049', 'PS1561', 'ທ່ານນາງ ຈັນທະວີ ຂຸນວິໄຊ', '', '1974-04-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630847', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຍາງຄຳໄຕ້', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101050', 'PS1559', 'ທ່ານນາງ ວົງສະກຸນ ພົມມະແສງ', '', '1977-10-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055296999', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101051', 'PS2021', 'ທ່ານນາງ ແພງສຸກ ວໍລະສານ', '', '1977-02-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056761777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄັນແຍງ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101052', 'PS1509', 'ທ່ານນາງ ໜູເວີດ ພົມມະແສງ', '', '1974-01-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055917999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນດູ່', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101053', 'PS2476', 'ທ່ານນາງ ແກ້ວລັດຕະນາ ຈະເລີນສຸກ', '', '1981-12-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055132555', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານທົ່ງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101054', 'PS2206', 'ທ່ານນາງ ມຸກດາ ຫອມສົມບັດ', '', '1982-04-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055776665', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101055', 'PS2046', 'ທ່ານ ທິບພະກອນ ສະມາເລີກ', '', '1979-08-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055632397', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫນາມໄຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101056', 'PS3170', 'ທ່ານນາງ ພິມພອນ ຫານມະນີ', '', '1990-04-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055569555', 'ຮ້າງ', '', '', '', '', '', 'ພັດທະນາຄັນເກິ່ງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101057', 'PS2988', 'ທ່ານ ທິດສະໃໝ ໃຈຫຼ້າ', '', '1984-04-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055774409', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101058', 'PS2986', 'ທ່ານ ຊິກັນດາ ທິບພະເນດ', '', '1987-06-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056425566', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູໜາກໜາວ', 'ປາກຊ່ອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101059', 'PS2987', 'ທ່ານ ອຸໄທ ວົງພົມ', '', '1985-11-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054345434', 'ໂສດ', '', '', '', '', '', 'ພູມ່ວງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101060', 'PS1597', 'ທ່ານນາງ ວັນສີ ດວງຖະໜອມ', '', '1975-11-09', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056795599', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກອຳນວຍ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101061', 'PS1848', 'ທ່ານນາງ ວັນພະກອນ ພົມມະຈັກ', '', '1979-08-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054431999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກອຳນວຍ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101062', 'PS1596', 'ທ່ານ ສີອຳພອນ ສີກຸນນະບຸດ', '', '1970-08-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630135', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກອຳນວຍ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101063', 'PS1017', 'ທ່ານ ຄຳສຸກ ພິມພິລາ', '', '1977-06-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630898', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນກຸງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101064', 'PS2229', 'ທ່ານ ສູນທອນ ສີລິອຳພອນ', '', '1981-02-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055274888', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຫ້ວຍເດື່ອ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101065', 'PS2633', 'ທ່ານ ໄຊມີ ຈັນທະວົງ', '', '1986-10-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055894455', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກອຳນວຍ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101066', 'PS1710', 'ທ່ານ ພອນໄຊ ວົງຊາຕີ', '', '1978-11-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630991', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະໝານໄຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101067', 'PS2475', 'ທ່ານ ອຳນາດ ໄຊຍະຈັກ', '', '1982-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056599955', 'ໂສດ', '', '', '', '', '', 'ສະຫນາມໄຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101068', 'PS2538', 'ທ່ານ ໂອນິຖັນ ອຸດົມສັກ', '', '1984-01-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055413475', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານໃຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101069', 'PS1594', 'ທ່ານ ເດດດາວັນ ເພັດຊຽງດາ', '', '1975-02-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055630791', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂັນເກີງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101070', 'PS3448', 'ທ່ານນາງ ອານົງລັກ ຮຽງທອງພັນ', '', '1985-07-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054417888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຍາງຄຳ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101071', 'PS1566', 'ທ່ານນາງ ແສງພະຈັນ ພົງສະຫວັດ', '', '1972-12-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054900019', 'ຮ້າງ', '', '', '', '', '', 'ບ້ານປາກຫ້ວຍເດື່ອ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101072', 'PS1585', 'ທ່ານ ຄອນສະຫັວນ ວົງຄຳວັນ', '', '1966-05-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055600125', 'ຮ້າງ', '', '', '', '', '', 'ພັດທະນາ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101073', 'PS1569', 'ທ່ານ ຈັນທະວີສຸກ ພະຂັນທອງ', '', '1972-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055635678', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຫ້ວຍເດື່ອ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101074', 'PS2537', 'ທ່ານນາງ ພູວຽງ ສາຍສະຫັວດ', '', '1980-03-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055597788', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຍາງຄຳໃຕ້', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101075', 'PS2489', 'ທ່ານ ກອງມະນີ ມະນີຈັນ', '', '1975-08-09', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055006008', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງກະໂລງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101076', 'PS2990', 'ທ່ານນາງ ຕຸ້ມຄຳ ພູວົງ', '', '1987-06-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055513337', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍປູນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101077', 'PS2991', 'ທ່ານນາງ ລັດດາຄຳ ມ້າວຄຳຜິວ', '', '1988-03-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056234888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວ້ຍລືສີ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101078', 'PS3172', 'ທ່ານ ສົມເພັດ ມີຍະວົງ', '', '1984-06-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058232555', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກຊອນ', 'ຊະນະສົມບູນ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101079', 'PS3169', 'ທ່ານນາງ ທອງໃສ ທຳມະສອນ', '', '1987-04-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056562623', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນກຸງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101080', 'PS3171', 'ທ່ານນາງ ວຽງສະໄໝ ແສງມະນີ', '', '1985-03-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056095555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫັວນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101081', 'PS3167', 'ທ່ານນາງ ອົ້ນ ວົງແກ້ວ', '', '1988-01-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055540404', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101082', 'PS3168', 'ທ່ານນາງ ວົງພອນ ກົມມະເມືອງ', '', '1985-12-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055523338', 'ໂສດ', '', '', '', '', '', 'ຫົວແຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101083', 'PS2989', 'ທ່ານ ພູພອນໄຊ ຈັນມະນີວົງ', '', '1985-05-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055729111', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານໄຊ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101084', 'PS3166', 'ທ່ານນາງ ອໍລະຊອນ ທຳມະສອນ', '', '1986-02-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056456656', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄັນເກິ່ງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101085', 'PS1593', 'ທ່ານ ຫັດສະດີ ສຸລິວົງ', '', '1974-07-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055132666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101086', 'PS1849', 'ທ່ານ ສຸກຂຸມ ພົມມະແສງ', '', '1980-04-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055737379', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101087', 'PS2213', 'ທ່ານ ວິໄລສຸກ ກິ່ງປະວົງ', '', '1982-12-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056683969', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101088', 'PS2162', 'ທ່ານ ພອນລາສີ ລ້ວນດວງຈັນ', '', '1983-05-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059061431', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາແກວ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101089', 'PS2230', 'ທ່ານ ພູເງິນ ພົມມະທັນສີ', '', '1982-12-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055944885', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານສາງວິໄລ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101090', 'PS3162', 'ທ່ານນາງ ນວນຈັນ ທອງສະຫວັນ', '', '1987-03-02', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058499995', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101091', 'PS1560', 'ທ່ານນາງ ພອນສະຫວັນ ສິລິອຳພອນ', '', '1978-08-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055993309', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫີນກາງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101092', 'PS1832', 'ທ່ານນາງ ແພງດີ ອຸ່ນອາລົມ', '', '1978-12-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059047888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໄຄ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101093', 'PS3204', 'ທ່ານນາງ ມະນີລາ ແກ້ວມະຫາວົງ', '', '1987-01-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055339339', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101094', 'PS3205', 'ທ່ານນາງ ພອນນະໄພ ຫົງສະຫວາດ', '', '1989-02-23', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056944447', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101095', 'PS3500', 'ທ່ານ ກໍລະກົດ ສໍລະເດດ', '', '1989-04-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054956456', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫີນໃຕ້', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101096', 'PS3317', 'ທ່ານນາງ ຂັວນຕາ ພິຈິດ', '', '1989-03-11', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055820990', 'ແຕ່ງງານ', '', '', '', '', '', 'ລົ່ມສັກເໜືອ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101097', 'PS3318', 'ທ່ານນາງ ໄລພອນ ພິຈິດ', '', '1989-10-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058662888', 'ແຕ່ງງານ', '', '', '', '', '', 'ລົ່ມສັກເຫນືອ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101098', 'PS3446', 'ທ່ານ ກໍລະກົດ ສີລິໂພຄາ', '', '1991-10-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059037788', 'ໂສດ', '', '', '', '', '', 'ສາງນ້ຳມັນ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101099', 'PS3654', 'ທ່ານ ສຸລິຍາ ພົມມະສິນ', '', '1990-03-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2052049999', 'ໂສດ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101100', 'PS3655', 'ທ່ານ ສົມສະໜຸກ ຈັນທາທິລາດ', '', '1991-04-03', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058419977', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄັນແຍງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101101', 'PS3173', 'ທ່ານ ສົມສີ ບົວທອງ', '', '1982-09-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054253736', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາໂມກ', 'ມູນລະປະໂມກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101102', 'PS2732', 'ທ່ານນາງ ມົນທາ ລາດສະວົງ', '', '1985-03-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056005050', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາງນ້ຳມັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101103', 'PS3154', 'ທ່ານນາງ ອຳໄພພັນນີ ຟອງຄຳໃບ', '', '1987-02-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058289909', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101104', 'PS2992', 'ທ່ານນາງ ສຸກໄຂ່ແກ້ວ ຄຳວົງສີ', '', '1990-04-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054343555', 'ແຕ່ງງານ', '', '', '', '', '', 'ບັງລຽງ', 'ປາກຊ່ອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101105', 'PS2993', 'ທ່ານນາງ ທິບພະຈັນ ສິລິໂພຄາ', '', '1991-02-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058433433', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງຫວາງ', 'ໂຂງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101106', 'PS2268', 'ທ່ານນາງ ສີລິວັນ ຫັດທະວົງສາ', '', '1981-05-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056852782', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງໂຂງ', 'ໂຂງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101107', 'PS2502', 'ທ່ານ ສົມຫວັງ ຜຸຍວິລະວົງ', '', '1966-07-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055434983', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມໂຮງ', 'ຊະນະສົມບູນ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101108', 'PS2836', 'ທ່ານ ໄຊຍະສານ ລາຊາຂັນຕິ', '', '1984-11-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055551828', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101109', 'PS3203', 'ທ່ານ ເພັດມະນີແສງ ບູໂສມສະຫັວດ', '', '1990-06-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058434844', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະພີນ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101110', 'PS3812', 'ທ່ານ ບຸນມີ ອີນທະວົງ', '', '1980-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054487778', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີໄຄ', 'ປາກຊ່ອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101111', 'PS3837', 'ທ່ານ ອານົນ ດວງວິຈິດ', '', '1982-06-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056665488', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕະຫຼາດ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101112', 'PS3885', 'ທ່ານນາງ ສີລິພອນ ແກ້ວພົນເດດ', '', '1994-12-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054184888', 'ໂສດ', '', '', '', '', '', 'ພັດທະນາທ່າໄຮ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101113', 'PS4088', 'ທ່ານ ໄຊຊະນະ ໄຊປັນຍາ', '', '1986-12-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059448100', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຂາມ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101114', 'PS4089', 'ທ່ານ ສົມບັດ ດວງບຸຜາ', '', '1993-12-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054354999', 'ໂສດ', '', '', '', '', '', 'ນາແຫກ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101115', 'PS4090', 'ທ່ານ ຖາວອນ ແກ້ວດວງຕາ', '', '1988-10-20', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054698282', 'ໂສດ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101116', 'PS4091', 'ທ່ານ ບຸນທະວີ ແຫວ່ນແກ້ວ', '', '1988-04-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059747755', 'ໂສດ', '', '', '', '', '', 'ປາກຊ້ອນ', 'ຊະນະສົມບູນ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101117', 'PS4092', 'ທ່ານ ປິງ ວົງຈັນ', '', '1990-10-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059902345', 'ແຕ່ງງານ', '', '', '', '', '', 'ລົ້ມສັກ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101118', 'PS4093', 'ທ່ານນາງ ວິໄລວັນ ວິໄລທອງ', '', '1991-03-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054750333', 'ໂສດ', '', '', '', '', '', 'ຂົວຕະພານ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101119', 'PS4094', 'ທ່ານ ຄຳໄພ ທຳມະສອນ', '', '1970-05-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2052781111', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍເພັກ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101120', 'PS4095', 'ທ່ານ ອາໄຊ ທຸມພະລາ', '', '1985-08-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055957997', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນກຸງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101121', 'PS4096', 'ທ່ານ ບົວລະວັນ ພົມມະສິນ', '', '1989-03-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2052407777', 'ໂສດ', '', '', '', '', '', 'ບ້ານຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101122', 'PS4097', 'ທ່ານນາງ ໄຂ່ແກ້ວ ໄຊມົນຕີ', '', '1994-08-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059221171', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101123', 'PS4098', 'ທ່ານ ພຸດສາຄອນ ວົງຄຳໂສພາ', '', '1988-05-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056660319', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນກຸງ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101124', 'PS4099', 'ທ່ານ ພອນຊະນະ ວົງຊາຕຼີ', '', '1993-06-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059677757', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101125', 'PS4100', 'ທ່ານ ວັດທະນາ ສຸດທິຈັກ', '', '1991-09-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055591923', 'ໂສດ', '', '', '', '', '', 'ພະບາດ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101126', 'PS4101', 'ທ່ານ ສິສຸພັນ ແສງມະນີພອນ', '', '1994-12-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2058485151', 'ໂສດ', '', '', '', '', '', 'ທ່າໄຮ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101127', 'PS4000', 'ທ່ານ ແກ້ວພູທອນ ເພັງຄຳອ່ອນ', '', '1989-06-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2059834999', 'ໂສດ', '', '', '', '', '', 'ຈັດສັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101128', 'PS4001', 'ທ່ານ ສຸລິຍັນ ກຸນນະວົງ', '', '1993-03-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2056667009', 'ໂສດ', '', '', '', '', '', 'ໂພໄຊ', 'ໂພນທອງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101129', 'PS4002', 'ທ່ານນາງ ບົວລະວອນ ສຸກຈັນທະລາ', '', '1993-03-14', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2057317777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ຈຳປາສັກ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101130', 'PS4003', 'ທ່ານ ແສງພະຈັນ ຫັດຖະວົງສາ', '', '1987-10-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2054416444', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງແສງ', 'ໂຂງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101131', 'PS4490', 'ທ່ານນາງ ສີພະຈັນ ສະຫວັດທະສິນ', '', '1994-12-18', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ຈໍາປາສັກ', '2055592498', 'ໂສດ', '', '', '', '', '', 'ລົມສັກເໜືອ', 'ບາຈຽງ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101132', 'AP1648', 'ທ່ານ ບຸນລໍ້າ ທິບພະວົງ', '', '1970-03-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055500659', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານເຊໃຫ່ຍ', '', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101133', 'AP1644', 'ທ່ານ ບຸນເກີດ ພິມມະສອນ', '', '1967-07-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055500658', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດຫຼວງ', 'ລະມາມ', 'ເຊກອງ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101134', 'AP1650', 'ທ່ານ ທອງໃສ ທຳມະວົງ', '', '1974-06-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055590085', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101135', 'AP1715', 'ທ່ານ ບຸນມາ ໂພສະລາດ', '', '1974-07-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055500657', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ເຊໃຫ່ຍ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101136', 'AP1718', 'ທ່ານ ມິດຕະພອນ ສີຊານົນ', '', '1972-09-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055636156', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ເຊກອງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101137', 'AP1645', 'ທ່ານ ສຸກວິໄລ ກອງກະສັນ', '', '1965-12-15', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055500873', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫ່ຍ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101138', 'AP1646', 'ທ່ານ ໂອເພັດ ໄຊຍະໂຄດ', '', '1968-11-10', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055600070', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101139', 'AP1657', 'ທ່ານ ວິຊຽນ ຄຳພັນ', '', '1974-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054070888', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101140', 'AP1658', 'ທ່ານນາງ ວົງດາວັນ ສີສຸວົງ', '', '1976-09-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055500660', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ເມືອງໃຫ່ມ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101141', 'AP2135', 'ທ່ານນາງ ໄຊສະຫວັນ ບັນເນົາ', '', '1977-12-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056572456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101142', 'AP1717', 'ທ່ານ ເລໂນ ທຳມະວົງ', '', '1975-04-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055590719', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101143', 'AP1546', 'ທ່ານນາງ ສຸມີໄຊ ບັນເນົາ', '', '1975-12-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056002935', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101144', 'AP1744', 'ທ່ານນາງ ອາລົມພອນ ສຸດທິຈັກ', '', '1976-09-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055736800', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101145', 'AP1920', 'ທ່ານ ໄຊຍະວັນລີ ທິບພະວົງ', '', '1978-08-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055636261', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊກະໜານ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101146', 'AP1655', 'ທ່ານ ພອນໄຊ ວິໄລພອນ', '', '1974-12-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055436926', 'ແຕ່ງງານ', '', '', '', '', '', 'ວົງສຳພັນ', 'ພູວົງ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101147', 'AP1653', 'ທ່ານນາງ ວຽງສະຫວັນ ສີລາເພັດ', '', '1975-12-08', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056169988', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101148', 'AP2753', 'ທ່ານ ເພັດມີໄຊ ພົມມະຈັນ', '', '1985-05-25', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054159777', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101149', 'AP1719', 'ທ່ານ ດາວໄຫຼ ສີສະແຫວງສຸກ', '', '1977-03-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055362263', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາມັກຄີໄຊ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101150', 'AP2754', 'ທ່ານນາງ ມະໄລທອງ ສີສຸລາດ', '', '1985-02-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054491252', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫ່ຍ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101151', 'AP2585', 'ທ່ານ ພັນທະມິດ ເດດສິນສະໜາມໄຊ', '', '1983-05-07', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056330330', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101152', 'AP2528', 'ທ່ານນາງ ສຸກວິໄລ ບົວລະວົງ', '', '1982-08-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058437878', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາງນ້ຳມັນ', 'ນະຄອນປາກເຊ', 'ຈໍາປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101153', 'AP2198', 'ທ່ານນາງ ບົວສອນ ບົວຄຳ', '', '1980-02-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055436199', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫີນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101154', 'AP2214', 'ທ່ານນາງ ສຸກພະໄທ ດວງມະນີ', '', '1980-03-30', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055362177', 'ໂສດ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101155', 'AP2408', 'ທ່ານ ແກ້ວອຸດອນ ເພັດສະຫວ່າງ', '', '1984-04-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055436536', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊກະໜານ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101156', 'AP3015', 'ທ່ານ ເຂັມເພັດ ກົມມະສານ', '', '1982-05-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058540999', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101157', 'AP3014', 'ທ່ານນາງ ແກ້ວວັນ ສີດາວົງ', '', '1987-06-01', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055556654', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101158', 'AP3017', 'ທ່ານ ຄານປະສົງ ວົງມາຈຽງ', '', '1984-10-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2057722277', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດຫຼວງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101159', 'AP3013', 'ທ່ານ ຄຳພໍ ບຸດຕາ', '', '1984-12-13', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058535353', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101160', 'AP3182', 'ທ່ານ ເອກອະລິຍະ ໄຊຍະແສງ', '', '1984-09-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055536655', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101161', 'AP3016', 'ທ່ານ ພຸດວິໄລ ກອງກະສັນ', '', '1989-05-14', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055551423', 'ໂສດ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101162', 'AP3183', 'ທ່ານ ພຸດພະວຽງ ພົມມະຈັນ', '', '1985-04-24', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055553453', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101163', 'AP3185', 'ທ່ານນາງ ຄານອານົງ ໂຄດໂຍທາ', '', '1987-04-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058536789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ໄຊເສດຖາ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101164', 'AP3071', 'ທ່ານນາງ ວົງນາລອນ ກຸນລາວົງ', '', '1986-04-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055333288', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດຫຼວງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101165', 'AP3541', 'ທ່ານ ໂອໄລ ເມຍນາວັດ', '', '1984-06-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055838850', 'ແຕ່ງງານ', '', '', '', '', '', 'ລະຍາວກາງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101166', 'AP3186', 'ທ່ານນາງ ວິດາພອນ ບຸດຕາ', '', '1989-10-04', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058852266', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວນີແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101167', 'AP3272', 'ທ່ານ ໂສດາ ແກ້ວໂກມິນ', '', '1989-08-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2058488800', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າຫີນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101168', 'AP3542', 'ທ່ານນາງ ພອນວິໄລ ມະນີວົງ', '', '1992-02-20', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054314444', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101169', 'AP3543', 'ທ່ານນາງ ແສງສຸດາ ສີລາເພັດ', '', '1990-05-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054455588', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ 3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101170', 'AP3763', 'ທ່ານນາງ ສີລິພອນ ຄຳພາສຸກ', '', '1991-10-28', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055544483', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101171', 'AP3765', 'ທ່ານ ອານຸລັກ ສີສຸທຳ', '', '1989-10-04', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055556653', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101172', 'AP3764', 'ທ່ານ ສຸລິສັກ ຊານຸວົງ', '', '1990-02-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055332334', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫ່ວາງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101173', 'AP3840', 'ທ່ານ ໂອລາ ພົມມະສານ', '', '1984-08-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2059699693', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕວຍ', 'ໄຊເສດຖາ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101174', 'AP4112', 'ທ່ານ ສຸກວິໄຊ ເຮືອງປັນຍາ', '', '1990-03-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056726651', 'ໂສດ', '', '', '', '', '', 'ເວີນແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101175', 'AP3964', 'ທ່ານ ສຸກຍາ ອິນທະວົງ', '', '1990-01-12', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055537646', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101176', 'AP3965', 'ທ່ານນາງ ດາລີວັນ ກຸນນະແສງ', '', '1984-12-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2052813553', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101177', 'AP3966', 'ທ່ານນາງ ນ້ອຍ ແສງສຸພັນ', '', '1991-02-12', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055565474', 'ແຕ່ງງານ', '', '', '', '', '', 'ເຊໃຫຍ່', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101178', 'AP4113', 'ທ່ານ ພູຫວັນ ພູມວິມາ', '', '1988-09-17', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2056995557', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕວຍ', 'ໄຊເສດຖາ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101179', 'AP4109', 'ທ່ານ ຊາຍສົມພອນ ໂຄດໂຍທາ', '', '1992-05-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2059028555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101180', 'AP4110', 'ທ່ານນາງ ກັນລະຍາ ຄູນຈັນທາ', '', '1993-09-25', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2059900106', 'ໂສດ', '', '', '', '', '', 'ເຊໃຫ່ຍ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101181', 'AP4111', 'ທ່ານ ວັນນະສອນ ເພັດສະຫວ່າງ', '', '1990-09-18', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2059040789', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກ3', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101182', 'AP4334', 'ທ່ານ ຄຳພຸດ ມຽງລາວັນ', '', '1991-11-02', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2052839663', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນແຄນ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072101183', 'AP4335', 'ທ່ານ ຄານຕາວັນ ເດດພະຈັນ', '', '1991-05-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2052908889', 'ໂສດ', '', '', '', '', '', 'ໄຊສີ', 'ໄຊເສດຖາ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101184', 'AP4338', 'ທ່ານນາງ ທິບປະເສີດ ພິມມະສອນ', '', '1995-08-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2059625555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະອາດ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101185', 'AP4336', 'ທ່ານນາງ ສຸກອານາ ພົມມະເສນ', '', '1993-11-21', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2054666567', 'ໂສດ', '', '', '', '', '', 'ບ້ານວັດຫລວງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101186', 'AP4337', 'ທ່ານນາງ ອຸມາພອນ ຜ່ານໄຊຍະສັກ', '', '1995-01-15', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ອັດຕະປື', '2055838333', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ສາມັກຄີໄຊ', 'ອັດຕະປື', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101187', 'VT1393', 'ທ່ານນາງ ວິ​ໄລ​ວັນ ຍົດໄຊ​ວິ​ບູນ', '', '1975-12-04', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054500500', 'ແຕ່ງງານ', '', '', '', '', '', 'ບຶງຂະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101188', 'VT0033', 'ທ່ານ ສົມບູນ ສອນເພັດ', '', '1964-05-23', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059444999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101189', 'VT1107', 'ທ່ານ ໂອໄລ ດວງຜາສຸກ', '', '1972-12-11', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056999888', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101190', 'VT2227', 'ທ່ານນາງ ເກດມະນີ ສູນນະລັດ', '', '1976-09-26', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055709585', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101191', 'VT2407', 'ທ່ານນາງ ພິດສະໄໝ ແກ້ວມະນີ', '', '1982-05-17', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056263555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101192', 'VT0082', 'ທ່ານ ທະວີສັກ ຈັນທະວົງ', '', '1966-08-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055600223', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນໍ້າເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101193', 'VT1630', 'ທ່ານ ດາວວອນ ແສງຈັນ', '', '1972-11-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054327222', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101194', 'VT0974', 'ທ່ານນາງ ເສົາວະນີ ປະເສີດສະກຸນ', '', '1976-12-09', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055444468', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101195', 'VT0984', 'ທ່ານ ອຸໄລສິດ ໄຊຍະວົງ', '', '1976-12-22', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055553993', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101196', 'VT0892', 'ທ່ານ ສີດອນ ພີມມະພອນ', '', '1966-09-30', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055216666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101197', 'VT2628', 'ທ່ານ ສົມເພັດ ຫຼ້າວົງຄຳ', '', '1985-10-24', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058611888', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101198', 'VT2477', 'ທ່ານ ບົວຈັນ ຈັນລາວົງ', '', '1982-04-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058887775', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101199', 'VT1927', 'ທ່ານ ທະນູສອນ ສິນບັນດິດ', '', '1977-07-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055626490', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101200', 'VT0085', 'ທ່ານ ສົມບຸນ ພຸດສະຫວັດ', '', '1967-12-11', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055600095', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີຖານເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101201', 'VT1778', 'ທ່ານ ໂພຄຳ ຫອມສົມບັດ', '', '1978-10-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059464646', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101202', 'VT0772', 'ທ່ານນາງ ພວງພອນ ທຳມະວົງ', '', '1967-12-28', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056232456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101203', 'VT3497', 'ທ່ານນາງ ສຸດາລັດ ອູດີນາລັດ', '', '1989-01-17', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2059315999', 'ໂສດ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101204', 'VT2045', 'ທ່ານ ເກດມະນີ ຍົດໄຊວິບູນ', '', '1973-01-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054900900', 'ແຕ່ງງານ', '', '', '', '', '', 'ບຶງຄະຫຍອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101205', 'VT0954', 'ທ່ານ ຄຳພອນ ພີມພັນທະວົງ', '', '1966-02-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055608019', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາງແຫ້ງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101206', 'VT1425', 'ທ່ານນາງ ອຳພາວັນ ວົງພູທອນ', '', '1976-07-20', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055123333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101207', 'VT1956', 'ທ່ານ ເພີນສົມພູ ເພັດທະວົງ', '', '1972-05-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055678555', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101208', 'VT2002', 'ທ່ານ ໄຊສະຫວັນ ສູນມາລາ', '', '1977-12-10', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056665959', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງສະ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101209', 'VT2017', 'ທ່ານນາງ ໄມພອນ ຊົງ', '', '1980-06-24', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2059454455', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101210', 'VT2695', 'ທ່ານນາງ ຈ້ອມ ສານບຸນຄູນໄຊ', '', '1986-02-26', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056880012', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101211', 'VT2509', 'ທ່ານນາງ ແສງຕາວັນ ຈັນທະລາສີ', '', '1988-04-21', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055801888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101212', 'VT1874', 'ທ່ານນາງ ສຸກສະຫວັນ ອິນ​ສີ​ຊຽງ​ໃຫມ່', '', '1980-11-28', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055654488', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດທ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101213', 'VT2483', 'ທ່ານ ພູທອງ ຫຼວງຈັນດາວົງສ໌', '', '1979-06-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055602148', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101214', 'VT3026', 'ທ່ານນາງ ດາວັນ ເລືອງວັນຫຼ້າ', '', '1987-05-07', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054540094', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101215', 'VT1769', 'ທ່ານ ສັນຕິສຸກ ອິນທິວົງ', '', '1975-12-24', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055619789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101216', 'VT0630', 'ທ່ານນາງ ສົມພາວັນ ອິນທິສານ', '', '1972-09-18', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055226555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101217', 'VT1166', 'ທ່ານ ອິນທະຫວາ ຍົມມະລາດ', '', '1970-02-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055422588', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101218', 'VT1167', 'ທ່ານ ແສງທອງ ເສົາວົງໄຊ', '', '1967-01-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055896789', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101219', 'VT1118', 'ທ່ານ ຈັນທະວັນ ປະທຸມພອນ', '', '1966-05-11', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055522305', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101220', 'VT0779', 'ທ່ານນາງ ບົວແສງ ດີມະນີວົງ', '', '1968-04-17', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2059592424', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແຊງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101221', 'VT2233', 'ທ່ານ ພິລາວົງ ສຸພານຸວົງ', '', '1979-09-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056107777', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101222', 'VT2517', 'ທ່ານນາງ ສຸດາລາ ແສນອາມາດມຸນຕີ', '', '1982-08-18', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055996969', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101223', 'VT2240', 'ທ່ານນາງ ດາວມະນີວອນ ຈັນທະວົງ', '', '1981-04-26', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055820777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແສງຈັນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101224', 'VT2119', 'ທ່ານ ໄຊສະຫວາດ ບຸນມາລາວັນ', '', '1975-10-14', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055989898', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101225', 'VT2506', 'ທ່ານນາງ ເສົາສະຫວາດ ພັນທະວົງ', '', '1986-11-22', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054232323', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວທອງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101226', 'VT3296', 'ທ່ານນາງ ລີນ່າ ອິນທະລາດ', '', '1994-05-04', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055338899', 'ແຕ່ງງານ', '', '', '', '', '', 'ສວນມອນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101227', 'VT3229', 'ທ່ານ ໄພພານ ທະວີໄຊ', '', '1964-11-30', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054474444', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101228', 'VT0945', 'ທ່ານ ກອງແກ້ວ ຄຳມຸນຕີ', '', '1967-02-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055610493', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101229', 'VT1996', 'ທ່ານ ແກ້ວມໍລະກົດ ອິນທະລາດ', '', '1976-04-24', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055404025', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101230', 'VT1766', 'ທ່ານ ຄຳສະໄຫວ ວົງພະຈັນ', '', '1972-08-10', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055405778', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101231', 'VT2461', 'ທ່ານນາງ ກອງມະນີ ພັນລັກ', '', '1985-09-09', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056252666', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101232', 'VT1100', 'ທ່ານນາງ ບົວສອນ ຈັນທະວົງ', '', '1972-03-05', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055104488', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101233', 'VT2821', 'ທ່ານນາງ ສຸກດາວອນ ສີດາພົມ', '', '1988-11-11', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056390333', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໝັ້ນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101234', 'VT2878', 'ທ່ານນາງ ມະຍຸລີ ໄຊຍະລາດ', '', '1986-05-21', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055978899', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101235', 'VT2880', 'ທ່ານນາງ ຈີນ ເພັດລາໄຊ', '', '1989-09-29', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055556879', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101236', 'VT2877', 'ທ່ານ ໄລພອນ ອ່ອນລາສີ', '', '1988-08-10', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055553858', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101237', 'VT2307', 'ທ່ານ ສົມເພັດ ບຸດຄຳດີ', '', '1969-05-27', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055204456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101238', 'VT2603', 'ທ່ານ ບົວວັນ ຈັນທະວົງ', '', '1976-05-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055676049', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101239', 'VT1729', 'ທ່ານ ລາຊັນ ຈັນທະວົງ', '', '1966-12-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055628156', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101240', 'VT0099', 'ທ່ານ ຫົງແກ້ວ ທູມພະລາ', '', '1968-02-17', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055706882', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫລວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101241', 'VT1727', 'ທ່ານ ສີພັນ ທີອວນ', '', '1967-05-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055413121', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101242', 'VT2038', 'ທ່ານ ເອັນຄຳ ວົງເລືອງຄຳ', '', '1967-03-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055702666', 'ຮ້າງ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101243', 'VT0666', 'ທ່ານ ແສງດາວ ວົງມາທຳ', '', '1964-12-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055422433', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101244', 'VT1038', 'ທ່ານ ພູຂຽວ ມຽງມະນີ', '', '1973-07-16', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055729716', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101245', 'VT2246', 'ທ່ານ ວຽງຄອນ ວຽງວິໄລ', '', '1973-03-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055554489', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄວາຍໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101246', 'VT1129', 'ທ່ານ ວິໄຊ ວົງສາລາດ', '', '1968-04-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055762778', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101247', 'VT3211', 'ທ່ານ ຄຳແຫວນ ສີມມະລີ', '', '1979-07-14', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058588009', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101248', 'VT3066', 'ທ່ານນາງ ສົມສີ ສີປະເສີດ', '', '1986-11-24', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2052117777', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫລວງກາງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101249', 'VT3037', 'ທ່ານນາງ ສາຄອນ ລິນທະຂັນ', '', '1988-04-17', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055397824', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101250', 'VT3307', 'ທ່ານ ສຸວິໄນ ມະນີສຸກ', '', '1987-05-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058293332', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101251', 'VT3308', 'ທ່ານ ອຸໄລພອນ ຈັນທະວົງ', '', '1988-08-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058856665', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101252', 'VT3311', 'ທ່ານ ມົນຕີ ສີຫາລາດ', '', '1985-06-07', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055223008', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101253', 'VT3315', 'ທ່ານນາງ ດາລາວັນ ສີລິສຸກ', '', '1988-11-14', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2058856677', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101254', 'VT3316', 'ທ່ານນາງ ບົວທອງ ສີສະຫວັດ', '', '1987-11-28', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056838415', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101255', 'VT3582', 'ທ່ານ ວິລະໄຊ ສີນຸວົງ', '', '1990-03-30', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056877899', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101256', 'VT3372', 'ທ່ານນາງ ເຂັມພອນ ພິມມະພອນ', '', '1988-11-27', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054333388', 'ໂສດ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101257', 'VT3389', 'ທ່ານ ເພັດໄພວັນ ດວງພະຈັນ', '', '1987-10-07', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059969996', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101258', 'VT3390', 'ທ່ານ ໄຊພິທັກ ທະວີພອນ', '', '1987-12-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059959911', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101259', 'VT3388', 'ທ່ານ ອຳພອນ ຈັນລາວົງ', '', '1991-10-28', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056611146', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101260', 'VT3596', 'ທ່ານ ກໍລະກັນ ພົມມະຈັນ', '', '1970-07-30', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055558947', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101261', 'VT3441', 'ທ່ານ ນິລະກອນ ພິມມະສານ', '', '1991-02-26', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058998866', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101262', 'VT3498', 'ທ່ານນາງ ອັງຄານນາ ຈັນຍາລາດ', '', '1991-11-26', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054518999', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101263', 'VT3553', 'ທ່ານ ວິສະນຸ ຊູໄຊຍະວົງ', '', '1984-04-04', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056789124', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງໄກ່ແກ້ວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101264', 'VT3380', 'ທ່ານນາງ ພູມປັນຍາ ຈິດຮູບໂລກ', '', '1991-12-11', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2059966666', 'ແຕ່ງງານ', '', '', '', '', '', 'ພ້າວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101265', 'VT3599', 'ທ່ານ ອາລຸນໄຊ ສະຫວ່າງຈັກກະວານ', '', '1987-02-09', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056201455', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101266', 'VT3609', 'ທ່ານນາງ ວິເສດ ພິມມະທັດ', '', '1991-07-20', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2058989777', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101267', 'VT3646', 'ທ່ານ ສີສັງເວດ ປາລະເມທີ', '', '1987-09-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054322333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທອງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101268', 'VT3679', 'ທ່ານ ສັກປະສິດ ສຸວັນນະຄະ', '', '1992-02-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2057666666', 'ໂສດ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101269', 'VT3669', 'ທ່ານ ກອງສົມບັດ ບຸນຍາວົງ', '', '1980-05-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055589595', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101270', 'VT3672', 'ທ່ານ ເພັດທະສອນ ວິຈິດ', '', '1990-03-27', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056166699', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101271', 'VT3676', 'ທ່ານ ຈັນທະມີໄຊ ດວງດາລາ', '', '1991-12-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055469415', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101272', 'VT3671', 'ທ່ານ ຄອນສະຫວັນ ໄພບູນ', '', '1985-09-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055595565', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໝ້ຽງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101273', 'VT3674', 'ທ່ານ ສຸກສະຫວັນ ຂຸນໄຊຊະນະວົງ', '', '1991-11-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054682222', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101274', 'VT3677', 'ທ່ານ ລິກໄຊ ວິລໍວົງ', '', '1990-05-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056662009', 'ໂສດ', '', '', '', '', '', 'ດົງປ່າແຫຼບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101275', 'VT3757', 'ທ່ານ ອຸປະຖຳ ຈິດຮູບໂລກ', '', '1978-03-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058802666', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101276', 'VT3778', 'ທ່ານ ກຸ້ຍ ໄຊຍະລາດ', '', '1988-09-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055543479', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101277', 'VT3779', 'ທ່ານ ອາປຸ ໄຊສົມພອນ', '', '1988-02-04', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056566688', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແຕ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101278', 'VT3786', 'ທ່ານ ແສງພະຈັນ ຄຳເຄືອ', '', '1987-09-11', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056638866', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕາດທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101279', 'VT3921', 'ທ່ານ ລັດສະໝີ ພະກອນຄຳ', '', '1986-02-27', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054025043', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແຕ່ງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101280', 'VT4171', 'ທ່ານ ບຸນລອດ ສຸກສຳລານ', '', '1991-06-16', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2052222266', 'ໂສດ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101281', 'VT2879', 'ທ່ານ ສີດາພອນ ອຸລາລົມ', '', '1986-10-20', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054965399', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101282', 'VT2308', 'ທ່ານ ສົມຈີນ ພົງສາ', '', '1973-03-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055789551', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101283', 'VT2242', 'ທ່ານ ສິນໄຊ ເພັດສຸລິນທາ', '', '1962-01-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055990008', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101284', 'VT2202', 'ທ່ານ ຈັນໄທ ວົງລໍຄຳ', '', '1968-02-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055598881', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໜາກຄາຍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101285', 'VT2602', 'ທ່ານ ວໍລະວົງ ນວນວຽງໄຊ', '', '1980-05-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055203068', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101286', 'VT3092', 'ທ່ານ ເກດສະດາ ສີລິມຸກ', '', '1973-07-26', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055579696', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາພອກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101287', 'VT3212', 'ທ່ານ ຄຳສຸກ ທອງດີ', '', '1971-04-14', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055019368', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101288', 'VT3213', 'ທ່ານ ຂອນແກ່ນ ວົງສຸວັນ', '', '1979-01-19', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055697906', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມຫວັງເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101289', 'VT3214', 'ທ່ານ ສູນທອນ ວົງລໍຄຳ', '', '1986-10-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055563522', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄວາຍກາງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101290', 'VT3209', 'ທ່ານນາງ ພັດສະນີ ແສງດາລາ', '', '1986-01-28', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055555258', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101291', 'VT3174', 'ທ່ານ ທອງລ້ຳ ສະຫວ່າງອາລົມ', '', '1983-04-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054135777', 'ແຕ່ງງານ', '', '', '', '', '', 'ປັກແຮດ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101292', 'VT3597', 'ທ່ານ ຄອນສະຫວັນ ລັດສະໝີ', '', '1989-03-17', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055942325', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຮຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101293', 'VT3818', 'ທ່ານ ກອງຄຳ ວິໄລ', '', '1968-03-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059831111', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101294', 'VT3817', 'ທ່ານ ພູວັນ ພັນມະລີ', '', '1977-12-02', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055007771', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຸມແບ່ງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101295', 'VT3816', 'ທ່ານ ໄຊສະຫວັນ ແກ້ວມະນີວົງ', '', '1983-12-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056623774', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101296', 'VT3819', 'ທ່ານ ສະແຫວງ ນາຄະດີ', '', '1975-12-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055655247', 'ແຕ່ງງານ', '', '', '', '', '', 'ບຶງຄະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101297', 'VT3820', 'ທ່ານ ວຽງຄອນ ທະວີໄຊ', '', '1989-03-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059555531', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101298', 'VT3821', 'ທ່ານ ຈັນຍະສຸກ ແສນຄຳຢອງ', '', '1988-08-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055949419', 'ໂສດ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101299', 'VT3675', 'ທ່ານ ອານັນ ລາດແສນມັງ', '', '1987-04-13', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059218899', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101300', 'VT3670', 'ທ່ານ ຄຳໄຊ ສີທອງ', '', '1987-08-10', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055669688', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101301', 'VT3673', 'ທ່ານ ຄອນນະລັດ ດີມະນີວົງ', '', '1990-03-19', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058852828', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແຊງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101302', 'VT3678', 'ທ່ານນາງ ວັນຄຳ ປະຖຳມະວົງ', '', '1978-12-11', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055997318', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101303', 'VT3822', 'ທ່ານ ໄພນະສິນ ແກ້ວເທື່ອນຄຳ', '', '1981-12-18', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056646688', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101304', 'VT3823', 'ທ່ານ ອ່ອນ ໄຊຍະສິດ', '', '1981-01-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055911080', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຂີ້ເຫຼັກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101305', 'VT3825', 'ທ່ານ ບຸນວິໄລ ຊາມູນຕີ', '', '1989-05-18', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059815072', 'ໂສດ', '', '', '', '', '', 'ທ່າງອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101306', 'VT3828', 'ທ່ານ ດວງສະຫວັນ ສາຍຄຳຮັກ', '', '1992-02-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058886363', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101307', 'VT3826', 'ທ່ານ ວາລິນ ດຳລົງສິນ', '', '1980-06-06', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054473728', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101308', 'VT3846', 'ທ່ານ ໄຊພູສີ ໄຊຍະເສນ', '', '1977-06-25', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055422346', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍໝາກພິກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101309', 'VT3847', 'ທ່ານ ລຳທູນ ພົມສິດທິເດດ', '', '1983-02-03', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055949797', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101310', 'VT3848', 'ທ່ານ ແສງເພັດ ພົມມະຈັກ', '', '1986-07-04', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055726723', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງປາຢ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101311', 'VT3878', 'ທ່ານ ສຸບັນ ແກ້ວດວງຕາ', '', '1981-09-22', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058390334', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101312', 'VT3879', 'ທ່ານ ບຸນຫຼົງ ວົງພັນ', '', '1988-02-28', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054544446', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101313', 'VT3880', 'ທ່ານ ທະນາກອນ ໄຊສົງຄາມ', '', '1980-09-04', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2057475555', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101314', 'VT3890', 'ທ່ານ ສຸກສາຄອນ ຂັນໄມຕີ', '', '1991-04-08', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058381774', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍເຕີຍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101315', 'VT3891', 'ທ່ານ ເຕັ້ງ ມົ້ວ', '', '1987-01-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055593624', 'ແຕ່ງງານ', '', '', '', '', '', 'ດວງບຸດດີ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101316', 'VT4174', 'ທ່ານນາງ ວິສຸດາ ສີດາລາ', '', '1991-07-17', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2052293446', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂຸນຕາທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101317', 'VT4172', 'ທ່ານ ບຸນລັງ ສານບຸນຄູນໄຊ', '', '1989-07-19', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059792989', 'ໂສດ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101318', 'VT4173', 'ທ່ານ ພູມະໂນ ມັ່ງໜໍ່ເມກ', '', '1989-11-28', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059775959', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແຊງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101319', 'VT4119', 'ທ່ານ ອຸ່ນເຮືອນ ທະຫວັດດີ', '', '1980-05-20', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055552323', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101320', 'VT4120', 'ທ່ານ ສຸພາລັກ ປັນຍາມະຫາໄຊ', '', '1990-10-19', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055434020', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101321', 'VT4121', 'ທ່ານ ບົວສະຫວັນ ແສງວົງເດືອນ', '', '1975-05-20', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059966966', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101322', 'VT3954', 'ທ່ານ ເພັດຕາວັນ ແກ່ນອຸລຳ', '', '1988-10-23', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058004249', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101323', 'VT3955', 'ທ່ານ ສີພອນ ສີວົງພັນ', '', '1986-10-09', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058166621', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕາດທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101324', 'VT3956', 'ທ່ານ ເວຫາ ບຸດສະດີ', '', '1990-05-07', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055044452', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101325', 'VT4123', 'ທ່ານ ອຳໄພວັນ ສີຫາລາດ', '', '1987-10-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058577789', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດໄຕນ້ອຍ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101326', 'VT4127', 'ທ່ານນາງ ວິໄລ ພູໄຊ', '', '1992-03-10', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2052557779', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101327', 'VT3980', 'ທ່ານນາງ ມອນສິນ ວິໄລສານ', '', '1982-01-07', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055654433', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101328', 'VT4204', 'ທ່ານນາງ ນົງນິດ ສະຫວ່າງອຸໄທ', '', '1990-03-01', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055228234', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101329', 'VT4205', 'ທ່ານ ມົນຕີ ສີວິໄລ', '', '1994-11-07', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055231339', 'ໂສດ', '', '', '', '', '', 'ສີບຸນເຮືອງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101330', 'VT4224', 'ທ່ານນາງ ວິໄລພອນ ວົງໄຊ', '', '1993-03-01', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2054391111', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະອາດ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101331', 'VT4246', 'ທ່ານ ສາຍສະໝອນ ເພັງພະຈັນ', '', '1989-10-22', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058332279', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101332', 'VT4245', 'ທ່ານ ສົມສັກ ບຸນມະນີ', '', '1991-05-01', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055057555', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101333', 'VT4244', 'ທ່ານ ສຸພາລັກ ໄຊຍະເສນ', '', '1983-01-22', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059566336', 'ໂສດ', '', '', '', '', '', 'ໜອງສ້າງທໍ່', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101334', 'VT4303', 'ທ່ານ ສາຍ ແກ້ວຄຳມູນ', '', '1992-12-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058900000', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາບຽນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101335', 'VT4302', 'ທ່ານ ໂພໄຊ ຄຳສີວໍລະວົງ', '', '1984-11-09', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059992968', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງແກ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101336', 'VT4304', 'ທ່ານ ຄາວີ ອາດສະໜານິ', '', '1986-01-10', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058884725', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແຫ້ວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101337', 'VT4305', 'ທ່ານ ສັນຕິ ຈັນສຸລິມາດ', '', '1989-09-13', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056666559', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101338', 'VT4308', 'ທ່ານນາງ ສຸພາວະດີ ນາມມະວົງສາ', '', '1995-02-19', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055443567', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101339', 'VT4306', 'ທ່ານ ພອນໃຈ ສີວິໄລ', '', '1989-11-16', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2056877766', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101340', 'VT4389', 'ທ່ານ ສົມລິດ ຊາວພູວົງ', '', '1990-12-12', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055965397', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101341', 'VT4390', 'ທ່ານ ເຈັກກີ້ ຄູນຈັນທາ', '', '1995-05-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054345789', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101342', 'VT4451', 'ທ່ານ ຈັນທະສອນ ເພັດໂສພາ', '', '1996-08-05', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2059966322', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101343', 'VT4454', 'ທ່ານນາງ ຫົງ ໄຊຍະລາດ', '', '1993-10-01', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055534233', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101344', 'VT4461', 'ທ່ານ ສີນະຄະລິນ ໄຊຍະເສນ', '', '1991-09-26', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2058868878', 'ໂສດ', '', '', '', '', '', 'ທາດຫຼວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101345', 'VT4460', 'ທ່ານນາງ ແວວມະນີ ຈັນທະນະ', '', '1987-08-24', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2055239690', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101346', 'VT4424', 'ທ່ານ ອານຸສັກ ນ້ອຍວົງ', '', '1991-06-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2052541122', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101347', 'VT4425', 'ທ່ານ ສຸລິວັນ ໄຊຍະພອນ', '', '1993-02-07', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055306241', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101348', 'VT4427', 'ທ່ານ ສຸລິວົງ ຂຸນທິກຸມມານ', '', '1982-08-15', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2055332444', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101349', 'VT4459', 'ທ່ານນາງ ວັນນິຖາ ທອງບຸດດີ', '', '1995-02-08', '', 'ຍິງ', 26, '', 'ບໍລິຫານ', '2056794999', 'ໂສດ', '', '', '', '', '', 'ສີເມືອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101350', 'VT4428', 'ທ່ານ ອາພິສິດ ປະທຸມພອນ', '', '1997-07-31', '', 'ຊາຍ', 26, '', 'ບໍລິຫານ', '2054408989', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101351', 'VT2696', 'ທ່ານ ສຸກສະຫວັນ ສີວິໄລ', '', '1984-03-22', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2054668899', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101352', 'VT0294', 'ທ່ານນາງ ສີວິໄລ ວົງໄຊຍາ', '', '1966-12-25', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2055590884', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະອາດ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101353', 'VT2471', 'ທ່ານ ພອນສະຫວັນ ແພງສົມບັດ', '', '1983-04-13', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2055500869', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101354', 'VT1867', 'ທ່ານນາງ ພູວາ ຫຼວງເສນາ', '', '1976-03-31', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2055600011', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101355', 'VT1868', 'ທ່ານນາງ ວົງພະຈັນ ພອນສະຫວັນ', '', '1978-08-20', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2055651999', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101356', 'VT2870', 'ທ່ານນາງ ພຸດທະສອນ ສິລິມາສັກ', '', '1986-11-26', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2058870588', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງເມຶກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101357', 'VT3328', 'ທ່ານນາງ ຄຳແດງ ວັນນະວົງ', '', '1976-02-24', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2056673355', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດສົບ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101358', 'VT3065', 'ທ່ານນາງ ອຳພາພອນ ຜາງພິລາວົງ', '', '1981-05-28', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2055646545', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຈອມມະນີກາງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101359', 'VT3341', 'ທ່ານ ຄຳອ້າຍ ຄຳພັນ', '', '1987-12-06', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2054269555', 'ໂສດ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101360', 'VT3607', 'ທ່ານນາງ ວິສຸດາ ມີສະຫວັດ', '', '1983-09-20', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2054883355', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101361', 'VT3808', 'ທ່ານນາງ ອິນທະສອນ ສິນທະນູ', '', '1991-09-25', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2055787666', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101362', 'VT3292', 'ທ່ານນາງ ດາວັນ ອິນທະວົງ', '', '1989-01-06', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2054325999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101363', 'VT3939', 'ທ່ານນາງ ຈັນທະພອນ ໂພທິສານ', '', '1991-03-25', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2059534441', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101364', 'VT3940', 'ທ່ານ ວິລະສັນ ບຸນຍາສິດ', '', '1985-11-17', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2059507799', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101365', 'VT3941', 'ທ່ານ ຍົມມະລາດ ແກ້ວໄຊຍະຈັກ', '', '1987-11-04', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2054327999', 'ໂສດ', '', '', '', '', '', 'ດົງໝ້ຽງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101366', 'VT4114', 'ທ່ານ ຕຸ້ຍ ສີລິທຳ', '', '1983-12-14', '', 'ຊາຍ', 26, '', 'ຈັດຕັ້ງ', '2054444799', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕີ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101367', 'VT4474', 'ທ່ານນາງ ເພັດມະນີ ພະເມືອງ', '', '1991-02-21', '', 'ຍິງ', 26, '', 'ຈັດຕັ້ງ', '2054972111', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101368', 'VT0631', 'ທ່ານ ຄຳພັນ ພົມສີຄຳລາ', '', '1966-08-20', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055500670', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະອາດ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101369', 'VT1761', 'ທ່ານນາງ ສົມສະໄໝ ໄຊອຸດົມ', '', '1973-12-04', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056986699', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101370', 'VT2064', 'ທ່ານ ລັດຕະນະວັນ ແກ້ວຫາວົງ', '', '1979-01-15', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054224334', 'ແຕ່ງງານ', '', '', '', '', '', 'ພ້າວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101371', 'VT0883', 'ທ່ານ ກົງທອງ ຊາວພູວົງ', '', '1973-09-28', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055526868', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101372', 'VT1950', 'ທ່ານນາງ ວິໄລລັກ ອຸປະສິດ', '', '1978-05-14', '', 'ຍິງ', 26, '', 'ການເງິນ', '2054239292', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101373', 'VT2079', 'ທ່ານ ທອງພັນ ຂັນທະບຸນ', '', '1969-10-23', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055662979', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແກ້ວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101374', 'VT0995', 'ທ່ານ ລານເງິນ ທານາລາດ', '', '1973-02-05', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055600121', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາງແຫ້ງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101375', 'VT0982', 'ທ່ານ ພຸດທະພອນ ຮວນຈັນມອນ', '', '1968-01-15', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055600096', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງມຶກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101376', 'VT1043', 'ທ່ານ ແສງເພັດ ສໍວົງວິເສດ', '', '1968-04-05', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055590558', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101377', 'VT2601', 'ທ່ານ ທົງໄຊ ສຸຂະວົງ', '', '1970-05-01', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055590557', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງປາຢ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101378', 'VT2106', 'ທ່ານນາງ ມະນີວອນ ອານຸລັກ', '', '1980-05-20', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055701112', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເຫນືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101379', 'VT2108', 'ທ່ານນາງ ກິນນາລີ ສີວິໄລ', '', '1980-09-04', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055655242', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101380', 'VT1837', 'ທ່ານນາງ ຂັນທະລີ ມີໄຊຜົນ', '', '1978-02-10', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055666669', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072101381', 'VT2082', 'ທ່ານ ຄຳສິງ ແກ້ວອິນສົມ', '', '1976-03-18', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055494456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101382', 'VT1949', 'ທ່ານນາງ ຄຳໃສ ຈັນທະວົງ', '', '1977-02-19', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055445815', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101383', 'VT1938', 'ທ່ານ ຄຳຫຼ້າ ຈັນທະວົງ', '', '1975-09-29', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2057578989', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101384', 'VT0930', 'ທ່ານນາງ ເພັດສົມພອນ ພົມພັກດີ', '', '1967-01-21', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055600014', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101385', 'VT1888', 'ທ່ານນາງ ສາທິດ ພູທອນສີ', '', '1978-01-23', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055616499', 'ໂສດ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101386', 'VT0992', 'ທ່ານນາງ ນັນທະຄູນ ສີຫາລາດ', '', '1973-11-28', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055614889', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໝັ້ນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101387', 'VT2288', 'ທ່ານນາງ ສີອຳພອນ ຈຸນລະມະນີ', '', '1982-10-22', '', 'ຍິງ', 26, '', 'ການເງິນ', '2058788778', 'ໂສດ', '', '', '', '', '', 'ໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101388', 'VT1833', 'ທ່ານນາງ ສິນດາວົງ ພູນທິບົວທອງ', '', '1977-12-10', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055555898', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101389', 'VT1981', 'ທ່ານ ຄຳປະສິດ ທຳມະຈັກ', '', '1978-11-11', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055012998', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101390', 'VT1758', 'ທ່ານນາງ ອຳພອນພັນ ສີສຸວົງ', '', '1974-08-29', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055002526', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101391', 'VT2261', 'ທ່ານນາງ ມະລີນີ ແກ້ວປະເສີດ', '', '1979-02-09', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055889889', 'ໂສດ', '', '', '', '', '', 'ສ້າງເຫວີຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101392', 'VT1725', 'ທ່ານນາງ ອາລິນີ ພິພັກ', '', '1977-08-13', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055009983', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101393', 'VT0916', 'ທ່ານນາງ ດາກອນ ດວງຖະໜອມ', '', '1973-04-12', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055508291', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101394', 'VT0931', 'ທ່ານນາງ ວອນດາລາ ສຸທຳມະວົງ', '', '1973-04-05', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055693321', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101395', 'VT0893', 'ທ່ານ ບຸນທັນ ສຸທຳມະວົງ', '', '1968-02-05', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055698089', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປ່າລານທົ່ງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101396', 'VT1057', 'ທ່ານ ສົມຈິດ ວົງຄໍາວິຈິດ', '', '1975-02-28', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055699447', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101397', 'VT1760', 'ທ່ານ ແສງດາລາ ແສງທະວີ', '', '1980-03-01', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055628272', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາແຄຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101398', 'VT1853', 'ທ່ານນາງ ມອນສະຫວັນ ນອງອິນທິລາດ', '', '1972-03-28', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056862229', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101399', 'VT1952', 'ທ່ານນາງ ພອນສະຫວັນ ສີຫາລາດ', '', '1978-07-07', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055626558', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101400', 'VT1840', 'ທ່ານ ສົມສີ ສີສະຫວັດ', '', '1976-01-04', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055600192', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101401', 'VT3479', 'ທ່ານນາງ ແດ່ນຕ້າ ຈັນທະວົງ', '', '1990-04-06', '', 'ຍິງ', 26, '', 'ການເງິນ', '2054696888', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊີ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101402', 'VT1330', 'ທ່ານນາງ ກອງຈັນ ສີປະສົມ', '', '1974-10-08', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056898316', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101403', 'VT1783', 'ທ່ານ ກັນທະນູສິນ ບົວແພງພັນ', '', '1970-07-10', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055028068', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101404', 'VT0940', 'ທ່ານ ຂັວນແພງ ວົງໄຊຍາລາດ', '', '1975-12-05', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055422411', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101405', 'VT2032', 'ທ່ານ ທອງສະໄຫມ ແກ້ວສົມບັດ', '', '1979-09-15', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055800805', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົາທົ່ງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101406', 'VT1641', 'ທ່ານນາງ ເພັງທິບ ມາລີຈັນສີ', '', '1974-10-04', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056655797', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງປີງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101407', 'VT1764', 'ທ່ານ ມີໄຊ ພັນນະວົງ', '', '1965-03-03', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055655530', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງສະໂນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101408', 'VT0939', 'ທ່ານ ວິລະພົນ ສົມປະສົງ', '', '1974-07-04', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055603768', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງປີງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101409', 'VT2283', 'ທ່ານ ທອງຈັນ ພົມມະວົງ', '', '1986-06-18', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054449292', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101410', 'VT0959', 'ທ່ານ ສິງທະສອນ ກອງແກ້ວ', '', '1972-11-05', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054776262', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະໜຸກ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101411', 'VT0138', 'ທ່ານ ບຸນສອນ ໄຊນະສິດ', '', '1969-10-13', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055422477', 'ຮ້າງ', '', '', '', '', '', 'ຈັນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101412', 'VT1895', 'ທ່ານ ໜູພັນ ຈັນທະວົງ', '', '1976-07-21', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055053232', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມຫວັງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101413', 'VT2660', 'ທ່ານ ພູວຽງ ແກ້ວມີໄຊ', '', '1985-05-11', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2058899844', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຄກໃຫຍ່', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101414', 'VT2104', 'ທ່ານ ວິລະກອນ ພາລົມ', '', '1977-09-01', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2056799292', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101415', 'VT2254', 'ທ່ານ ໄຊອຸດອນ ພູວິໄລ', '', '1982-03-08', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054447499', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເກີດ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101416', 'VT1084', 'ທ່ານ ເທບພະໄທ ສິງໄຊຍະຈັກ', '', '1964-11-04', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055922422', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101417', 'VT0633', 'ທ່ານນາງ ອຳມະລິດ ສູນດາລາ', '', '1972-12-12', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055626604', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101418', 'VT2921', 'ທ່ານ ອຸໄທທິບ ກົມພັກດີ', '', '1985-08-10', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054649666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101419', 'VT3320', 'ທ່ານ ສີສະຫວາດ ສຸກສະຫັວດ', '', '1987-01-02', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054805111', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາລ່ຽນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101420', 'VT3636', 'ທ່ານ ແກ້ວຄູນເຮືອນ ມະໂນຄຳ', '', '1992-01-07', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2059882246', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດ້ວງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101421', 'VT3810', 'ທ່ານ ຈັນຄົມ ສີບຸນເຮືອງ', '', '1991-10-22', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055568444', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101422', 'VT3893', 'ທ່ານນາງ ນິດນ້ອຍ ສາຍສຳພັນ', '', '1994-09-08', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059063336', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101423', 'VT0035', 'ທ່ານນາງ ສີສົມພອນ ມະນູພັດ', '', '1964-11-23', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055500542', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101424', 'VT2702', 'ທ່ານ ບຸນທະວີ ບຸນມີໄຊ', '', '1992-10-30', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2056658787', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101425', 'VT2661', 'ທ່ານ ຈັນສຸກ ພອນສະຫວັນ', '', '1979-11-30', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055157556', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101426', 'VT3637', 'ທ່ານ ເພັດພະຈັນ ແສງຄຳພັນ', '', '1989-05-15', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054707445', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101427', 'VT3386', 'ທ່ານ ຕ່າມ ສິດທະວົງ', '', '1984-08-08', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054720341', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101428', 'VT3864', 'ທ່ານ ວົງຄຳ ພັນນະຈິດ', '', '1988-09-01', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054922254', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສົມບູນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101429', 'VT3638', 'ທ່ານນາງ ລັດຕະນະພອນ ພິມມະສອນ', '', '1990-02-13', '', 'ຍິງ', 26, '', 'ການເງິນ', '2058774789', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101430', 'VT3867', 'ທ່ານ ພຸດທະວົງ ຟອງມະນີວົງ', '', '1990-01-09', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2058330066', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101431', 'VT3863', 'ທ່ານ ຄຳພັນ ໄຊຍະວົງ', '', '1986-10-10', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055549292', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າສົ້ມມໍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101432', 'VT3758', 'ທ່ານ ບຸນທະວີ ອິນທະວົງ', '', '1989-09-13', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055009844', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101433', 'VT3868', 'ທ່ານ ທອງພຸດ ພອນສະຫວັນ', '', '1994-03-07', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2058697277', 'ໂສດ', '', '', '', '', '', 'ປ່າຝາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101434', 'VT3862', 'ທ່ານ ກິດຕິພົງ ສຸທຳມະວົງ', '', '1990-08-01', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055337739', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປ່າລານທົ່ງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101435', 'VT3866', 'ທ່ານ ອຸໄລວັນ ໄວຍະຈັກ', '', '1990-08-02', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054883939', 'ໂສດ', '', '', '', '', '', 'ວຽງສະຫວັນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101436', 'VT3861', 'ທ່ານ ບົວສີ ໄຊຍະເພັດ', '', '1990-08-03', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2059996961', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101437', 'VT3860', 'ທ່ານ ວັນຄຳ ວິລະມົງຄຸນ', '', '1990-08-04', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055566875', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງປີງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101438', 'VT3876', 'ທ່ານ ພອນປະເສີດ ສິດທິວົງ', '', '1986-06-02', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055522089', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101439', 'VT3809', 'ທ່ານນາງ ຈາລິຍາ ປານາສີ', '', '1992-07-30', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055588676', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101440', 'VT3865', 'ທ່ານ ວິໄລລອງ ແກ້ວວົງສາ', '', '1981-12-31', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2054102333', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101441', 'VT3829', 'ທ່ານ ສິດທິຍາ ສຸພັນທອງ', '', '1990-01-08', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055375656', 'ໂສດ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101442', 'VT3859', 'ທ່ານ ພູມປັນຍາ ທະວີໄຊ', '', '1993-08-31', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2058452626', 'ໂສດ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101443', 'VT3892', 'ທ່ານນາງ ວິລະວັນ ສະຫວັດ', '', '1989-09-07', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055055713', 'ໂສດ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101444', 'VT3894', 'ທ່ານນາງ ສົມຈິດ ປ້ອງວຽງທອງ', '', '1988-08-14', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059917972', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101445', 'VT3914', 'ທ່ານນາງ ເອກນາລີ ວົງສີປະເສີດ', '', '1993-01-02', '', 'ຍິງ', 26, '', 'ການເງິນ', '2054187797', 'ໂສດ', '', '', '', '', '', 'ຫ້ອມໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101446', 'VT3988', 'ທ່ານນາງ ອານົງລັກ ພົມມະວິໄຊ', '', '1990-03-05', '', 'ຍິງ', 26, '', 'ການເງິນ', '2052226552', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫັດສະດີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101447', 'VT3944', 'ທ່ານນາງ ພູວີຄຳ ໄຊຍະລາດ', '', '1991-06-22', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059551998', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101448', 'VT3943', 'ທ່ານ ດາວອນ ພັນທະອຸທອນ', '', '1992-05-16', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055550558', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101449', 'VT3945', 'ທ່ານນາງ ພຸດຕຸລາພອນ ແສງວົງສີຍາ', '', '1992-10-21', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059111597', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101450', 'VT3946', 'ທ່ານນາງ ແສງຕາວັນ ສຸທຳມະວົງ', '', '1992-03-27', '', 'ຍິງ', 26, '', 'ການເງິນ', '2052226455', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101451', 'VT3947', 'ທ່ານນາງ ອຸໄທວັນ ມະນີວົງ', '', '1983-09-16', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055745959', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101452', 'VT4167', 'ທ່ານນາງ ຄຳທິລາ ແສງມີໄຊ', '', '1993-11-21', '', 'ຍິງ', 26, '', 'ການເງິນ', '2052229366', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ນາງົວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101453', 'VT3949', 'ທ່ານ ພູຈັນ ເຮືອງສິມມີໄຊ', '', '1996-09-29', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055578838', 'ໂສດ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101454', 'VT3950', 'ທ່ານນາງ ກິນດາລັກ ເນົາວະລັງສີ', '', '1995-11-09', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056744666', 'ໂສດ', '', '', '', '', '', 'ນາຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101455', 'VT3951', 'ທ່ານນາງ ອໍລະໄທ ສໍອິນທະລາດ', '', '1993-06-30', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055478434', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101456', 'VT3952', 'ທ່ານນາງ ເພັດລຳເງິນ ໂຄດໂຍທາ', '', '1993-02-03', '', 'ຍິງ', 26, '', 'ການເງິນ', '2054900888', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101457', 'VT4186', 'ທ່ານນາງ ລັອກກີ້ ກອງສີທອງ', '', '1993-10-08', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055566896', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101458', 'VT4237', 'ທ່ານ ຊ້າງ ພານຸວົງ', '', '1991-11-06', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2052532111', 'ໂສດ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101459', 'VT4320', 'ທ່ານນາງ ລຳເພັດ ວົງພັກດີ', '', '1995-01-19', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059355656', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101460', 'VT4354', 'ທ່ານນາງ ທິບພາພອນ ຊາມຸນຕີ', '', '1995-02-14', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059083888', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101461', 'VT4370', 'ທ່ານ ປີ່ ວົງຄີລີ', '', '1987-11-12', '', 'ຊາຍ', 26, '', 'ການເງິນ', '2055535519', 'ແຕ່ງງານ', '', '', '', '', '', 'ອີ່ໄລໃຕ້', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101462', 'VT4371', 'ທ່ານນາງ ສາຍທອງ ພວງຂັນໄຊ', '', '1993-09-05', '', 'ຍິງ', 26, '', 'ການເງິນ', '2056445616', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101463', 'VT4465', 'ທ່ານນາງ ຈັນອາລີນາ ສໍພາບມີໄຊ', '', '1995-07-30', '', 'ຍິງ', 26, '', 'ການເງິນ', '2054803224', 'ໂສດ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101464', 'VT4466', 'ທ່ານນາງ ວຽງພຸດ ຄຳພູແກ້ວ', '', '1995-10-25', '', 'ຍິງ', 26, '', 'ການເງິນ', '2055839983', 'ໂສດ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101465', 'VT4482', 'ທ່ານນາງ ທິບພະວັນ ພຸດທະລາດ', '', '1992-01-28', '', 'ຍິງ', 26, '', 'ການເງິນ', '2059975922', 'ໂສດ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101466', 'VT0868', 'ທ່ານ ຄຳມ້າວ ສີວົງໄຊ', '', '1967-10-11', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055590584', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕິ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101467', 'VT1248', 'ທ່ານ ຄຳຜ່ອງ ວົງວິໄລ', '', '1967-01-01', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055590583', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101468', 'VT2097', 'ທ່ານ ຄຳຜົງ ແສງວິໄລ', '', '1978-05-05', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055500909', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101469', 'VT0783', 'ທ່ານ ສຸລິນທອນ ແສງງາມ', '', '1969-12-24', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055590639', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101470', 'VT2472', 'ທ່ານ ຢີທ່າວ ເຈີຈິງ', '', '1976-09-09', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055014299', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101471', 'VT2424', 'ທ່ານ ອານຸສິດ ແກ້ວບຸນທອງ', '', '1985-01-01', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055792882', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101472', 'VT1033', 'ທ່ານ ຄຳພຸດ ຂັນທະວົງສາ', '', '1973-11-29', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056584829', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕີ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101473', 'VT1026', 'ທ່ານ ໃຈເພັດ ແພງຍາລາດ', '', '1969-08-08', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055003645', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101474', 'VT2075', 'ທ່ານນາງ ມາລາວັນ ແກ້ວໄຊຍະຈັກ', '', '1977-01-01', '', 'ຍິງ', 26, '', 'ສາຍສົ່ງ', '2055426593', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໝ້ຽງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101475', 'VT2496', 'ທ່ານ ໜໍ່ແສງ ໄຊຍະແສງ', '', '1983-07-05', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2057857799', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101476', 'VT2617', 'ທ່ານ ແສງພະຈັນ ແສງຄຳພັນ', '', '1987-07-13', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055463188', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101477', 'VT0749', 'ທ່ານ ແສງສຸລິສັກ ພັນທອງດີ', '', '1966-04-04', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055954693', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101478', 'VT1410', 'ທ່ານ ພາວພາວັນ ແສງມີໄຊ', '', '1972-03-16', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2054401999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍນໍ້າເຢັນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101479', 'VT2446', 'ທ່ານ ວິໄລ ລາດຊະບຸດ', '', '1985-10-27', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055696854', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101480', 'VT1352', 'ທ່ານ ຄຳສະຫວັດ ກິ່ງສະດາ', '', '1977-04-14', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056011341', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101481', 'VT2281', 'ທ່ານ ເມກມັງກອນ ຊາພັກດີ', '', '1980-01-04', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2054329777', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101482', 'VT3093', 'ທ່ານ ສຸລິສັກ ແກ້ວວິໄລຫົງ', '', '1986-10-14', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055404443', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101483', 'VT3630', 'ທ່ານ ສົມສັກ ຈັນທະວົງ', '', '1991-04-14', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2054844485', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຫ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101484', 'VT3754', 'ທ່ານ ປາດຖະໜາ ແກ່ນປະເສີດ', '', '1989-03-10', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056197555', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງແສນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101485', 'VT3752', 'ທ່ານ ສິດທິໄຊ ພິລາຈິດ', '', '1989-08-17', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2059856677', 'ໂສດ', '', '', '', '', '', 'ໜອງປິງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101486', 'VT3755', 'ທ່ານ ຈິນດາກອນ ແກ້ວວົງກົດ', '', '1991-06-26', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055587169', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແປນໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101487', 'VT3753', 'ທ່ານ ກະຊວງ ຈັນສະໝອນ', '', '1986-06-03', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2055977719', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101488', 'VT3850', 'ທ່ານ ປາລີສັກ ຄຳມຸນຕີ', '', '1991-07-21', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056545952', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101489', 'VT4132', 'ທ່ານ ວັດທະນາ ອຳນວຍພອນ', '', '1990-06-22', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056371993', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101490', 'VT2619', 'ທ່ານ ທິບພະວົງ ໄຊຄຳຝັ້ນ', '', '1985-12-12', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2052302299', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101491', 'VT4128', 'ທ່ານ ຊິງຊິງ ສິງມະນີວົງ', '', '1993-10-01', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056665240', 'ໂສດ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101492', 'VT4129', 'ທ່ານ ວິລະໄຊ ແກ້ວສຸດທາ', '', '1992-06-13', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056200456', 'ໂສດ', '', '', '', '', '', 'ຕາດທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101493', 'VT4130', 'ທ່ານ ຈັນທະວິໄລ ວັນຄຳ', '', '1991-03-26', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2059115911', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101494', 'VT4131', 'ທ່ານ ເຄນໄຊ ໄຊຍະຄູນມີ', '', '1992-10-05', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2058424477', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101495', 'VT4133', 'ທ່ານ ວິທະວັດ ແກ້ວບົວຄຳ', '', '1991-01-23', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2056555394', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຕູມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101496', 'VT4134', 'ທ່ານ ທິ ລັດສະໝີ', '', '1989-12-16', '', 'ຊາຍ', 26, '', 'ສາຍສົ່ງ', '2059233553', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101497', 'VT4475', 'ທ່ານນາງ ສົມພາວັນ ສຸລິເສດ', '', '1996-11-13', '', 'ຍິງ', 26, '', 'ສາຍສົ່ງ', '2055506623', 'ໂສດ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101498', 'VT4476', 'ທ່ານນາງ ປາລິຊາດ ທຸນາການ', '', '1991-04-27', '', 'ຍິງ', 26, '', 'ສາຍສົ່ງ', '2055377737', 'ໂສດ', '', '', '', '', '', 'ໜອງແຫ້ວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101499', 'VT2142', 'ທ່ານ ວືທໍ່ ເຊັງຈໍປົວ', '', '1975-12-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2059080789', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101500', 'VT0160', 'ທ່ານ ປະເສີດ ສີສຸວັນ', '', '1962-10-03', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055500633', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101501', 'VT2091', 'ທ່ານ ດາວວົງ ສົມສະຫວັນ', '', '1978-12-03', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055697983', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101502', 'VT0958', 'ທ່ານ ຄຳມະນີ ເພັງວັນສະຫວັນ', '', '1969-02-05', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055500763', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແສງຈັນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101503', 'VT1069', 'ທ່ານ ສຸລິສັກ ນັນທະວົງ', '', '1965-05-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055500891', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101504', 'VT1794', 'ທ່ານ ອາກອນ ໄຊສື', '', '1975-02-10', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055600139', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101505', 'VT2073', 'ທ່ານ ຈັນທະວີເລີດ ວົງພູທອນ', '', '1980-01-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055600202', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101506', 'VT1802', 'ທ່ານ ສີລິພອນ ມະນີວົງ', '', '1977-10-09', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2057575858', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຊາຍທອງໃຕ້', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101507', 'VT0209', 'ທ່ານ ວິລະ ສະຫວັດ', '', '1966-10-07', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055500713', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101508', 'VT2451', 'ທ່ານ ໄຊຍະແສງ ໄຊຍະກອນ', '', '1985-05-08', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055500890', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101509', 'VT2698', 'ທ່ານ ສົມພອນ ຫານຊະນະ', '', '1987-07-31', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2057889898', 'ໂສດ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101510', 'VT1926', 'ທ່ານນາງ ແພງແກ້ວ ທອງຈັນເພັງ', '', '1981-11-23', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055600199', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101511', 'VT2430', 'ທ່ານນາງ ລັດດາວອນ ສິລິສັກ', '', '1985-04-25', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055603331', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101512', 'VT3021', 'ທ່ານ ທອງພຸດ ຄຳເຮືອງສີ', '', '1985-10-16', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2058977789', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101513', 'VT2294', 'ທ່ານ ທິລະກອນ ປັນຍານຸວົງ', '', '1982-09-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055445544', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101514', 'VT1010', 'ທ່ານ ກົງວັນ ໄຊຍະແສງ', '', '1973-06-11', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056422479', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101515', 'VT2270', 'ທ່ານ ກຸແກ້ວ ແສງລ້ຳເລີດ', '', '1983-06-10', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055292233', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101516', 'VT2613', 'ທ່ານ ກຽງໄກ ແກ້ວມະນີວົງ', '', '1985-01-26', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055446446', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101517', 'VT2609', 'ທ່ານ ພູໄຊ ສູນສະຫວັດ', '', '1987-02-19', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2052000009', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມຜົນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101518', 'VT1980', 'ທ່ານ ສີສະຫວັດ ໄຊຍະກອນ', '', '1972-09-05', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055600195', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101519', 'VT0896', 'ທ່ານນາງ ເພັດສະຫວັນ ສິດທິພອນ', '', '1976-05-07', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2056828555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101520', 'VT2426', 'ທ່ານ ອາລຸນທິເດດ ສຸລິໂຍສັກ', '', '1984-02-17', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055605191', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ່ຽງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101521', 'VT2745', 'ທ່ານ ສຸດທະວີໄຊ ຂາວແກ້ວປະເສີດ', '', '1986-05-16', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056660089', 'ໂສດ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101522', 'VT2689', 'ທ່ານນາງ ສຸມາລີ ກິດາລາ', '', '1987-03-03', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055314438', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101523', 'VT1798', 'ທ່ານ ອາຊີມະ ປາລະເມທີ', '', '1975-09-02', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055600130', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101524', 'VT0815', 'ທ່ານ ເພັດທະມາດ ວົງສີປະສົມ', '', '1972-06-16', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055668023', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101525', 'VT2141', 'ທ່ານນາງ ບຸນມະນີ ພັນທະສົມຈິດ', '', '1980-11-15', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055600200', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດ້ວງໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101526', 'VT2610', 'ທ່ານນາງ ອຳພົງ ໄຕແກ້ວພິທູນ', '', '1987-02-18', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2054294114', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101527', 'VT1976', 'ທ່ານ ວີຊຽນ ໂພທິສານ', '', '1968-10-05', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056327132', 'ໂສດ', '', '', '', '', '', 'ໂນນຂີ້ເຫຼັກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101528', 'VT2611', 'ທ່ານນາງ ຄຳປານ ແສນສຸລິວົງ', '', '1985-01-22', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055454888', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະໂພ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101529', 'VT0599', 'ທ່ານ ສາຍທອງ ດາລາວົງ', '', '1969-06-20', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055602626', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101530', 'VT2513', 'ທ່ານນາງ ພູທອນ ສິດທິໄຊ', '', '1982-11-08', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2054080000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແກ້ວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101531', 'VT3309', 'ທ່ານ ທອງວັນ ບົວລະໄຊ', '', '1989-07-03', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055575726', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101532', 'VT2746', 'ທ່ານ ອາລີ ຊົງ', '', '1986-09-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055611809', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101533', 'VT3310', 'ທ່ານ ສຸນີ ແສງທອງ', '', '1987-10-08', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2054544983', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງສຸພາບ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101534', 'VT3268', 'ທ່ານ ຈັນທະສອນ ຈັນທິລາດ', '', '1991-06-12', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055996808', 'ໂສດ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101535', 'VT3269', 'ທ່ານ ບຸນທອນ ຊົ່ງ', '', '1984-02-12', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2054437784', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101536', 'VT3403', 'ທ່ານນາງ ລັດດາພອນ ສຸນັນທາ', '', '1991-01-06', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2054021355', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101537', 'VT3401', 'ທ່ານນາງ ພອນມາລາ ພູມີວົງ', '', '1990-04-18', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055532626', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101538', 'VT3398', 'ທ່ານ ສີດໍ ມິດຕະພອນ', '', '1984-02-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055525502', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101539', 'VT3402', 'ທ່ານ ວິລະພັນ ສຸລິຍາ', '', '1992-01-09', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056433365', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101540', 'VT3503', 'ທ່ານ ສຸດຖາພອນ ເພັດດາລາ', '', '1991-10-25', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2054700552', 'ໂສດ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101541', 'VT3532', 'ທ່ານ ເລ້ ນັນທະວໍລະສິງ', '', '1991-02-17', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055550066', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101542', 'VT3790', 'ທ່ານ ຖາວອນ ວົງລາວິຈິດ', '', '1989-12-14', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2052288899', 'ໂສດ', '', '', '', '', '', 'ວຽງສະຫວັນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101543', 'VT3792', 'ທ່ານ ວິໄລສັກ ນິເວດ', '', '1992-03-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055532565', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101544', 'VT3793', 'ທ່ານ ຕຸສະຫວ່າງ ລໍເບຼຍຢ່າວ', '', '1992-07-25', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055554510', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101545', 'VT4501', 'ທ່ານ ພູຄຳ ວົງວິວັນ', '', '1985-05-14', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2058859898', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101546', 'VT3363', 'ທ່ານ ວີເພັດ ພີມພາວົງ', '', '1991-08-12', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055553932', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ່ຽງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101547', 'VT3784', 'ທ່ານ ສຸລິຍາ ລາດຊະສີພູມ', '', '1979-11-24', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055544669', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101548', 'VT3932', 'ທ່ານ ພິລາກອນ ສຸກສະຫວັນ', '', '1993-10-25', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2052994448', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101549', 'VT3884', 'ທ່ານນາງ ສີສົມພູ ແກ້ວພິລາແພງ', '', '1991-08-17', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2059039078', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101550', 'VT3930', 'ທ່ານ ຊະ ທ່າວ', '', '1990-07-03', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2059475302', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101551', 'VT3931', 'ທ່ານ ດົ່ວຢ່າ ເຢ່ຍຊົວ', '', '1987-08-07', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2058564228', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງສຸພາບ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101552', 'VT3883', 'ທ່ານນາງ ສຸກຂະພັນ ອຸໄລວົງ', '', '1990-04-20', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2054855558', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101553', 'VT3882', 'ທ່ານນາງ ຈັນສະໄໝ ລໍໄພບູນ', '', '1988-10-31', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2052499999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂສກປ່າຫຼວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101554', 'VT4135', 'ທ່ານນາງ ປະພັດສອນ ວົງພະຈັນ', '', '1992-10-26', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2059999292', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101555', 'VT4136', 'ທ່ານນາງ ດາລິວັນ ເມືອງວົງ', '', '1993-12-13', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2052588775', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101556', 'VT4239', 'ທ່ານ ກົ່ວ ຄາຍ', '', '1984-02-18', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2055400827', 'ໂສດ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101557', 'VT4248', 'ທ່ານນາງ ພຸດສະດີ ວິໄລວົງ', '', '1993-01-08', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2059899515', 'ໂສດ', '', '', '', '', '', 'ໜອງແຕ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101558', 'VT4249', 'ທ່ານນາງ ວາດສະໜາ ພະສະຫວັດ', '', '1990-10-24', '', 'ຍິງ', 26, '', 'ໂທລະສັບມືຖື', '2055556546', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101559', 'VT4299', 'ທ່ານ ສາຍສະໝອນ ບຸດຈັນທະລາດ', '', '1994-09-11', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2052881449', 'ໂສດ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101560', 'VT4300', 'ທ່ານ ລໍາເງິນ ວັນຄໍາ', '', '1992-04-04', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056886774', 'ໂສດ', '', '', '', '', '', 'ນາສາລາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101561', 'VT4301', 'ທ່ານ ອະພິວັດ ຫຼວງສີສົງຄາມ', '', '1994-03-02', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2056336969', 'ໂສດ', '', '', '', '', '', 'ນາລ່ຽນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101562', 'VT4529', 'ທ່ານ ພອນທະລາ ຄີວມາລາ', '', '1984-07-26', '', 'ຊາຍ', 26, '', 'ໂທລະສັບມືຖື', '2054656868', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງສຸພາບ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101563', 'VT2088', 'ທ່ານນາງ ຂັນທະລີ ສີຫາວົງ', '', '1981-05-23', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055898989', 'ໂສດ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101564', 'VT2493', 'ທ່ານນາງ ພວງລາວັນ ພົນວິໄຊ', '', '1981-02-19', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055500976', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101565', 'VT1053', 'ທ່ານນາງ ທິບພະກອນ ສີສຸລາດ', '', '1972-06-05', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055500600', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101566', 'VT2436', 'ທ່ານນາງ ສ້ອຍລັດດາ ບຸນມີວົງ', '', '1981-01-07', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055590989', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101567', 'VT1881', 'ທ່ານນາງ ທິບພະພອນ ສຸວັນນະວົງ', '', '1974-09-19', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055613919', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101568', 'VT1906', 'ທ່ານນາງ ຈັນທະສອນ ແພງຍະລາດ', '', '1980-08-04', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055669197', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ່ຽງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101569', 'VT1850', 'ທ່ານ ຫຸມເພັດ ມະນີສຸກ', '', '1971-12-24', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055669988', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຕຸມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101570', 'VT2415', 'ທ່ານນາງ ນິດຕະຍາ ສີວິໄຊ', '', '1980-02-28', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2058899988', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101571', 'VT2543', 'ທ່ານນາງ ສຸກມີນາວັນ ພະນະລາສີ', '', '1985-03-29', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055118318', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101572', 'VT2584', 'ທ່ານ ປາລິເສີດ ສອນນະສິນ', '', '1982-11-11', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2056666888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101573', 'VT2008', 'ທ່ານນາງ ມຸກສະຫວັນ ໄຊຍະໂອຊະ', '', '1976-05-12', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059555655', 'ໂສດ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101574', 'VT2642', 'ທ່ານ ໄຊປະດິດ ພິຈິດ', '', '1985-04-15', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2054595599', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101575', 'VT2562', 'ທ່ານນາງ ວຽງສະຫວັນ ສີທານະລາດ', '', '1979-06-09', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2054911189', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101576', 'VT2044', 'ທ່ານນາງ ພັນມະນີສອນ ອະລິຍະທຳ', '', '1981-01-18', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055924444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101577', 'VT1929', 'ທ່ານນາງ ບຸດສະກອນ ວົງສາດີ', '', '1976-12-20', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055613288', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫລວງໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072101578', 'VT2466', 'ທ່ານ ຄຳສິງ ວັນນະພາຜົນ', '', '1982-07-07', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055422422', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຳເກດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101579', 'VT0985', 'ທ່ານ ວັນນິຖາ ມະນີບົດ', '', '1975-06-04', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055796633', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101580', 'VT1035', 'ທ່ານ ອັກຄະເດດ ວັນນະວົງ', '', '1970-09-10', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2058851999', 'ແຕ່ງງານ', '', '', '', '', '', 'ສ້າງເຫວີຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101581', 'VT0914', 'ທ່ານນາງ ຈຸນລະໄມ ວິໄລວົງ', '', '1977-08-01', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055416942', 'ໂສດ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101582', 'VT1913', 'ທ່ານນາງ ຈັນທະຈອນ ຈັນທະບຸບຜາ', '', '1977-06-16', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2056774949', 'ໂສດ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101583', 'VT2251', 'ທ່ານນາງ ດາວລອຍ ມະນີຈັນ', '', '1984-09-12', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055900900', 'ໂສດ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101584', 'VT3886', 'ທ່ານ ຈັນທະຈອນ ສີສະໝຸດ', '', '1983-11-05', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055838989', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101585', 'VT2511', 'ທ່ານ ເຂັມພອນ ລໍວັນໄຊ', '', '1981-10-11', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055544449', 'ໂສດ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101586', 'VT3008', 'ທ່ານນາງ ສາທິມາ ວິໄລລັງສີ', '', '1988-06-12', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055558482', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101587', 'VT2508', 'ທ່ານ ພອນໄຊ ສິດທິໄຊ', '', '1979-12-25', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055117799', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຂັນຄຳ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101588', 'VT0727', 'ທ່ານນາງ ທິດາວັນ ເພັດນັນໂທ', '', '1976-03-10', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055657331', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101589', 'VT2733', 'ທ່ານ ເພັດດາວົງ ໄຊຊະນະວົງເພັດ', '', '1983-02-09', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055818181', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101590', 'VT2505', 'ທ່ານນາງ ຈັນມະນີ ໄຊສົມເພັງ', '', '1982-05-15', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059979997', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101591', 'VT2835', 'ທ່ານ ພູລະສິດ ຄຸນພະຈັນສີ', '', '1988-01-20', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055988988', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101592', 'VT2822', 'ທ່ານນາງ ສຸກດາວອນ ສົມມະນີວົງ', '', '1986-05-06', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2056522265', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດ້ວງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101593', 'VT2823', 'ທ່ານນາງ ທິບພະວອນ ເພຍຫົວພັນ', '', '1990-08-05', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2056789159', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101594', 'VT2825', 'ທ່ານນາງ ປະກາຍວັນ ທິບດວງໃຈ', '', '1986-05-02', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2056800555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101595', 'VT2488', 'ທ່ານ ຄຳແສງດາລາ ປະຖຳມະວົງ', '', '1979-04-15', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055009192', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປາລານທ່າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101596', 'VT1923', 'ທ່ານນາງ ຈຳປາທອງ ແສງສະກຸມມານ', '', '1981-03-07', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059554555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101597', 'VT0996', 'ທ່ານນາງ ຊ້ຽນ ບຸນພາວັນ', '', '1975-10-06', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2052877977', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101598', 'VT3028', 'ທ່ານນາງ ວິມົນລັດ ບຸນຍາວົງ', '', '1985-03-11', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055444339', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101599', 'VT2839', 'ທ່ານນາງ ພູຄຳ ແກ້ວພົມວັນ', '', '1988-06-09', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055907978', 'ໂສດ', '', '', '', '', '', 'ຄຳຮູ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101600', 'VT2838', 'ທ່ານນາງ ມະນີວອນ ວັນນະສັກ', '', '1984-11-28', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055021140', 'ໂສດ', '', '', '', '', '', 'ຊຽງຍືນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101601', 'VT3374', 'ທ່ານນາງ ດວງຕາ ຈັນທະລັກສາ', '', '1991-12-22', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055414299', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101602', 'VT3555', 'ທ່ານ ຫົງແກ້ວກາດ ອຸດົມສຶກສາ', '', '1989-02-04', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059696555', 'ໂສດ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101603', 'VT3639', 'ທ່ານ ຈັນມະນີ ຄຳມະນີວົງ', '', '1991-08-12', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055555403', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ. ໜອງ​ສ້າງ​ທໍ່', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101604', 'VT3528', 'ທ່ານ ໄຄແສງ ນາກ​ແສງ​ຈັນ', '', '1985-10-01', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055954687', 'ໂສດ', '', '', '', '', '', 'ບ. ວັດ​ໄຕ​ໃຫຍ່​ທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101605', 'VT3641', 'ທ່ານ ຈັນທະ​ລື​ໄຊ ​ເທບ​ສົມ​ບັນດິດ', '', '1991-07-01', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059595151', 'ໂສດ', '', '', '', '', '', 'ບ. ສີດຳ​ດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101606', 'VT3379', 'ທ່ານ ຄຳໄຊ ໄຊສົມບູນ', '', '1990-12-08', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059188999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101607', 'VT3643', 'ທ່ານ ວັດທະນາ ພັນທະຈິດ', '', '1990-09-05', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2058454848', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101608', 'VT3937', 'ທ່ານ ຊະນະຈິດ ຈັນທະຣາຕຼີ', '', '1986-05-21', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2056225588', 'ໂສດ', '', '', '', '', '', 'ຈອມແຈ້ງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101609', 'VT3781', 'ທ່ານນາງ ວົງເພັດ ຜິວໂສດາລິດ', '', '1991-03-31', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2056993555', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101610', 'VT3780', 'ທ່ານນາງ ພວງມະລີ ສີວົງສາ', '', '1990-08-11', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2058737373', 'ແຕ່ງງານ', '', '', '', '', '', 'ສິມມະໂນ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101611', 'VT3830', 'ທ່ານ ອານຸສອນ ນັນທະນາວອນ', '', '1987-03-20', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059979555', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101612', 'VT3857', 'ທ່ານ ເຢັງ ເລົ່າ', '', '1991-09-01', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2052266789', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101613', 'VT3858', 'ທ່ານນາງ ພິລາພອນ ສຸວັນນະລາດ', '', '1980-10-16', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055606605', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101614', 'VT3895', 'ທ່ານ ສຸກໃຈ ທອງມີໄຊ', '', '1990-08-14', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059999535', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຍາວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101615', 'VT3935', 'ທ່ານ ສິງໄຊ ເພຍສາຂາ', '', '1980-03-14', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2055044557', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101616', 'VT3997', 'ທ່ານ ບຸນໂຮມ ເພັດຄຳແສນ', '', '1983-07-23', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059565456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101617', 'VT3999', 'ທ່ານນາງ ວັນວິສາ ລຽນຕິຄຸນ', '', '1992-09-08', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059793999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101618', 'VT4137', 'ທ່ານນາງ ສົມເພັດ ພົມມະຈັນ', '', '1987-09-25', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2052277911', 'ແຕ່ງງານ', '', '', '', '', '', 'ບຶງຂະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101619', 'VT4138', 'ທ່ານນາງ ກ້ຽງ ວິໄລພອນ', '', '1994-11-04', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2058888894', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101620', 'VT4139', 'ທ່ານນາງ ພວງມະນີ ສິນທະປະເສີດ', '', '1993-09-30', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059999989', 'ໂສດ', '', '', '', '', '', 'ໜອງແຕ່ງໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101621', 'VT4140', 'ທ່ານນາງ ສິລິນະພາ ພູມມະວົງ', '', '1992-09-23', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055333377', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101622', 'VT4141', 'ທ່ານນາງ ນຸດສະບາ ເທບສຸວັນ', '', '1992-04-29', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059855888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101623', 'VT4142', 'ທ່ານນາງ ອຳພອນ ພົມມະຈັນ', '', '1987-03-15', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055345554', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101624', 'VT4143', 'ທ່ານນາງ ທິດາທິບ ເພັງພິລາວົງ', '', '1994-02-14', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2052990073', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101625', 'VT4201', 'ທ່ານນາງ ພັດສະລິນ ແກ້ວດາລາ', '', '1992-03-12', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2058918999', 'ໂສດ', '', '', '', '', '', 'ໜອງປິງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101626', 'VT4203', 'ທ່ານນາງ ມຸກດາວັນ ພິລາວົງ', '', '1995-10-21', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055226321', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101627', 'VT4202', 'ທ່ານນາງ ໄມທິບ ຄູນດາລາ', '', '1991-12-12', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055227501', 'ໂສດ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101628', 'VT4280', 'ທ່ານ ອານຸສອນ ສຸດທິພອນ', '', '1995-02-24', '', 'ຊາຍ', 26, '', 'ການຕະຫຼາດ', '2059919696', 'ໂສດ', '', '', '', '', '', 'ໜອງບອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101629', 'VT4472', 'ທ່ານນາງ ວັນນິດາ ສິນບັນດິດ', '', '1995-05-16', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2055558990', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101630', 'VT4473', 'ທ່ານນາງ ເມັດມະນີ ສຸວັນນະວົງ', '', '1993-10-16', '', 'ຍິງ', 26, '', 'ການຕະຫຼາດ', '2059959666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101631', 'VT2656', 'ທ່ານ ອຸດອນ ຈັນທະລັງສີ', '', '1979-07-06', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055500870', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101632', 'VT0968', 'ທ່ານນາງ ພູເວີນ ສໍອິນໄຊ', '', '1977-10-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055590642', 'ຮ້າງ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101633', 'VT2815', 'ທ່ານ ປະຄອງ ສຸກສົມບົດ', '', '1951-10-25', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055500603', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101634', 'VT1951', 'ທ່ານນາງ ແກ້ວອຳພອນ ບູລົມມະວົງ', '', '1979-01-13', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055590797', 'ໂສດ', '', '', '', '', '', 'ກາງທົ່ງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101635', 'VT1502', 'ທ່ານນາງ ເພັດລຳພັນ ສຸລິຍະ', '', '1975-06-26', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055255444', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101636', 'VT0967', 'ທ່ານນາງ ຈອນ ໄຊຍະບຸດ', '', '1976-03-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055500544', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມຫວັງເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101637', 'VT0807', 'ທ່ານນາງ ໄມຕີຈິດ ຫຼວງອາມາດ', '', '1975-11-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055618998', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101638', 'VT2629', 'ທ່ານນາງ ສົມສະໄໝ ສຸພັນປຣີຊາ', '', '1982-09-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055612255', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101639', 'VT2295', 'ທ່ານນາງ ອິນພອນ ວົງສາລີ', '', '1981-08-12', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056301714', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101640', 'VT1966', 'ທ່ານ ອຸ່ນໃຈ ລໍວັນໄຊ', '', '1975-12-12', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055500800', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຊ້າງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101641', 'VT0998', 'ທ່ານນາງ ພອນທິບ ເກດຫົງສາ', '', '1974-02-20', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056327006', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101642', 'VT1939', 'ທ່ານນາງ ວົງພະຈັນ ຫຸມພາວົງ', '', '1979-12-14', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059142289', 'ໂສດ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101643', 'VT0979', 'ທ່ານນາງ ໄໝຄຳ ພົມມະຈັນ', '', '1975-07-28', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055565955', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງອ່ນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101644', 'VT2893', 'ທ່ານ ລຸກກີ້ ພີມພາວົງ', '', '1984-09-30', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059964999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101645', 'VT2464', 'ທ່ານນາງ ກົງໃຈ ວົງລໍຄຳ', '', '1985-09-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056898898', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101646', 'VT2676', 'ທ່ານນາງ ເກດສະດອນ ສອນພັນ', '', '1987-09-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055581868', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101647', 'VT2057', 'ທ່ານນາງ ໄພສະຫວັນ ຈັນທະເລືອງ', '', '1980-12-20', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055628121', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101648', 'VT0969', 'ທ່ານນາງ ຈັນທະຈອນ ວິໄລສັກ', '', '1975-11-26', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059536363', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101649', 'VT2087', 'ທ່ານນາງ ອັກສອນ ແກ້ວມະນີວົງ', '', '1974-04-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055689599', 'ຮ້າງ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101650', 'VT0123', 'ທ່ານນາງ ບຸດສະບາ ສຸດທິຈັກ', '', '1969-09-04', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054704999', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101651', 'VT2009', 'ທ່ານ ສຸລິຍາ ປະຖຳມະວົງ', '', '1978-03-03', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2054949966', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງຍາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101652', 'VT1810', 'ທ່ານນາງ ຈັນເພັງ ວົງຄຳຈັນ', '', '1978-02-02', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054500054', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101653', 'VT2022', 'ທ່ານນາງ ແສງມະນີ ສີສຸທຳມຸນີ', '', '1979-08-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055800900', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101654', 'VT1762', 'ທ່ານນາງ ວຽງພັນ ໄຊຍະສິດ', '', '1980-04-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056561717', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101655', 'VT1724', 'ທ່ານນາງ ອວຍພອນ ທິບພອນໂພສີ', '', '1975-01-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054598889', 'ຮ້າງ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101656', 'VT2523', 'ທ່ານນາງ ນີລະຄອນ ວໍລະວົງ', '', '1984-11-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055554041', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101657', 'VT2563', 'ທ່ານນາງ ວຽງຊຳ ຈັນທະລີ', '', '1986-10-11', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055354545', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101658', 'VT3067', 'ທ່ານ ພູທອງ ແກ່ນມະນີ', '', '1988-05-24', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055559969', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101659', 'VT2866', 'ທ່ານ ຕຸ້ຍໄຊສົມແພງ ອິນແກ້ວ', '', '1983-03-25', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055578909', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101660', 'VT2892', 'ທ່ານ ດອນໄຊ ຫຼວງສີອາໄພ', '', '1980-06-05', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2054444461', 'ໂສດ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101661', 'VT2924', 'ທ່ານນາງ ຄຽນຄຳ ແກ້ວມະນີແສງ', '', '1985-05-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059593777', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຊາຍທອງໃຕ້', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101662', 'VT2867', 'ທ່ານນາງ ນິດ ພົມມະວັນ', '', '1987-11-11', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055050960', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສົມບູນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101663', 'VT2900', 'ທ່ານ ຄຳຮຸ່ງ ຄຳພາ', '', '1981-10-01', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055566636', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101664', 'VT2863', 'ທ່ານນາງ ແກ້ວຕາ ໄຊຊະນະ', '', '1984-06-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055555236', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101665', 'VT2865', 'ທ່ານນາງ ວັນນິດາ ທິລະສັກ', '', '1988-05-13', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055008998', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນດູ່', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101666', 'VT2673', 'ທ່ານນາງ ກີ້ ຈັນທະບູລີ', '', '1983-07-07', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055485353', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101667', 'VT2164', 'ທ່ານນາງ ຂັວນໃຈ ຈັນທະລາດ', '', '1981-08-24', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055569887', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101668', 'VT2685', 'ທ່ານນາງ ລັດດາວັນ ສົມພານິດ', '', '1988-08-26', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056145566', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101669', 'VT2856', 'ທ່ານນາງ ພຸດທະ​ສອນ ແສງທອງ', '', '1987-07-15', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054714715', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໝັ້ນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101670', 'VT2857', 'ທ່ານນາງ ພຸດທະໜອມ ໄຊຫົມຜົນ', '', '1988-11-30', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056995586', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101671', 'VT2854', 'ທ່ານນາງ ວຽງຄຳ ພັນມະລີ', '', '1989-01-21', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055119443', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101672', 'VT2690', 'ທ່ານນາງ ເລີດສະຫວັນ ສິດທິອຸດົມ', '', '1982-04-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054960960', 'ຮ້າງ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101673', 'VT2526', 'ທ່ານນາງ ວຽງສະຫວັນ ດາລາແສນ', '', '1979-05-28', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2052894449', 'ໝ້າຍ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101674', 'VT2514', 'ທ່ານນາງ ສີວອນ ທຳມະສິດ', '', '1986-03-30', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054626262', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101675', 'VT2422', 'ທ່ານນາງ ສຸລິພອນ ພຽນທະວົງໄຊ', '', '1983-05-09', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055664442', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101676', 'VT2033', 'ທ່ານນາງ ສຸດສາຍໃຈ ກົມໄຊຊະນະ', '', '1980-04-05', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055717322', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີິໄຄ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101677', 'VT2554', 'ທ່ານນາງ ດາລາສະໄຫວ ພັນທະລັກ', '', '1981-06-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055559997', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101678', 'VT2674', 'ທ່ານນາງ ລັດຕະນາ ເລືອງຄຳມາ', '', '1986-01-05', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2057695959', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101679', 'VT2675', 'ທ່ານນາງ ຄຳພູວຽງ ຊາມຸນຕີ', '', '1986-10-01', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054290997', 'ໂສດ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101680', 'VT2677', 'ທ່ານນາງ ແສງຄຳ ຄຳສີວໍລະວົງ', '', '1986-02-28', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055331100', 'ຮ້າງ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101681', 'VT2679', 'ທ່ານນາງ ພູລີນາ ແກ້ວປັນຍາ', '', '1988-07-15', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055525553', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101682', 'VT2680', 'ທ່ານນາງ ມາລາທິບ ວັນນະລັກ', '', '1987-01-05', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056888829', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101683', 'VT2645', 'ທ່ານນາງ ຈັນດາວັນ ຫຼວງສີສົງຄາມ', '', '1982-03-29', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056246365', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101684', 'VT2931', 'ທ່ານນາງ ຄຳພອນ ເພັງພະຈັນ', '', '1990-12-18', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056711118', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101685', 'VT2929', 'ທ່ານນາງ ວິໄລລັກ ວົງພັນ', '', '1990-04-20', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054544445', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101686', 'VT2937', 'ທ່ານ ພູເຂົາ ພົມມະຈິດ', '', '1984-08-05', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059966559', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍແດນເມືອງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101687', 'VT3070', 'ທ່ານນາງ ລັດຕິຍາກອນ ຈັນທະລັງສີ', '', '1990-07-28', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054543399', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101688', 'VT3069', 'ທ່ານນາງ ເພັດມະນີ ຄັນທະ', '', '1983-05-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055445710', 'ໂສດ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101689', 'VT2930', 'ທ່ານນາງ ປານີ ວິໄລສັກ', '', '1987-12-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054919966', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລະຄຳໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101690', 'VT3085', 'ທ່ານນາງ ລັດສະໝີ ໄຊຍະພອນ', '', '1983-05-27', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055642635', 'ຮ້າງ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101691', 'VT3086', 'ທ່ານ ແສງສັກດາ ເລືອງລິດທິເດດ', '', '1986-10-01', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055897899', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101692', 'VT2920', 'ທ່ານນາງ ແກ້ວ ວົງສາລີ', '', '1987-11-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055802999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101693', 'VT3087', 'ທ່ານນາງ ຄຳແພງ ວົງລໍຄຳ', '', '1985-06-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055993955', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດ້ວງໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101694', 'VT3100', 'ທ່ານນາງ ລັດດາພອນ ສີທາວະດີ', '', '1987-11-26', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058660077', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101695', 'VT3084', 'ທ່ານນາງ ທິບພະວັນ ໂພທິສານ', '', '1990-02-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054004455', 'ແຕ່ງງານ', '', '', '', '', '', 'ດຸງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101696', 'VT3088', 'ທ່ານ ມັງກອນ ພົມມະຈັນ', '', '1988-04-22', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059225922', 'ໂສດ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101697', 'VT2891', 'ທ່ານນາງ ພອນນິດາ ພຸດທິຈັກ', '', '1988-05-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2052564747', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101698', 'VT3098', 'ທ່ານນາງ ແດ່ນຕ້າ ຄຳພັນປັນຍາ', '', '1987-10-01', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055598953', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101699', 'VT2923', 'ທ່ານນາງ ສີປະພາ ອິນທະແສງ', '', '1985-03-22', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059535559', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101700', 'VT2922', 'ທ່ານ ແກ້ວວິໄລ ຈັນທະວີໄຊ', '', '1989-02-22', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058458888', 'ໂສດ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101701', 'VT2936', 'ທ່ານນາງ ກາເຢັ້ງ ຢ່າງລືໄຊ', '', '1986-09-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055711407', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101702', 'VT2897', 'ທ່ານນາງ ວັນນະພາ ຜ່ານໄພສຸວັນ', '', '1988-07-13', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054224488', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101703', 'VT2927', 'ທ່ານນາງ ດາວວອນ ວົງພະໄຊ', '', '1988-06-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056246595', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີຊົມຊື່ນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101704', 'VT2928', 'ທ່ານນາງ ຈັນສຸດາ ຫົງຄຳ', '', '1988-02-29', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055599113', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101705', 'VT3095', 'ທ່ານນາງ ຄຳຜຸຍ ພົມມະລາ', '', '1985-07-08', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056563666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101706', 'VT2932', 'ທ່ານນາງ ນິດຕະຍາ ອິນລາວົງສາ', '', '1989-09-22', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054952678', 'ແຕ່ງງານ', '', '', '', '', '', 'ຍາພະ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101707', 'VT3103', 'ທ່ານ ພວງເພັດ ຈິນດາວົງ', '', '1983-12-16', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055558839', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101708', 'VT3101', 'ທ່ານນາງ ວິນາ ສົມດີ', '', '1988-05-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055555059', 'ໂສດ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101709', 'VT2898', 'ທ່ານ ສີສຸວັນ ພິມມະວົງສາ', '', '1986-09-26', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2056619999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101710', 'VT3191', 'ທ່ານນາງ ສີໄຊພອນ ແພງພົມມີ', '', '1987-05-31', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055533312', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101711', 'VT3193', 'ທ່ານ ສຸກຖາວອນ ແກ້ວວິໄຊ', '', '1988-07-03', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055558229', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101712', 'VT3192', 'ທ່ານ ສຸພັນສາ ອິນທະວົງ', '', '1984-08-15', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055566060', 'ໂສດ', '', '', '', '', '', 'ໂຊກໃຫຍ່', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101713', 'VT3243', 'ທ່ານນາງ ຕ່ອງເງິນ ວົງຄຳວີຈິດ', '', '1989-01-21', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055553379', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101714', 'VT3241', 'ທ່ານ ໄພຍະຈິດ ໄຊຍະບັດ', '', '1990-10-01', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055553696', 'ໂສດ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101715', 'VT3242', 'ທ່ານນາງ ເດືອນເພັນ ແກ້ວວີໄລ', '', '1990-02-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056525975', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101716', 'VT3313', 'ທ່ານນາງ ສຸພັດຕາ ສານບຸນຄູນໄຊ', '', '1987-06-02', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055598850', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101717', 'VT3373', 'ທ່ານ ວັນນະສັກ ຂຸນທິກຸມມານ', '', '1990-12-27', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059567777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101718', 'VT3391', 'ທ່ານ ນາລິນ ພົມມະຈັກ', '', '1985-06-01', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2057771115', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຊຽງດີ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101719', 'VT3480', 'ທ່ານນາງ ແອມ ສຸກນະວົງ', '', '1990-05-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059966696', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101720', 'VT3608', 'ທ່ານນາງ ໄພຈິດ ພົມມະຫາໄຊ', '', '1991-08-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058709000', 'ໂສດ', '', '', '', '', '', 'ນາທົ່ມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101721', 'VT3611', 'ທ່ານ ນະຄອນຄຳ ໄຊວົງສີ', '', '1990-12-02', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058666515', 'ໂສດ', '', '', '', '', '', 'ໂຊກນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101722', 'VT3644', 'ທ່ານ ນ້ອຍ ເດດພົມມະເທດ', '', '1990-02-13', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2054666665', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງໄກ່ແກ້ວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101723', 'VT2678', 'ທ່ານນາງ ມະຍຸລີ ສຸມຸນທາ', '', '1985-05-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055448181', 'ໂສດ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101724', 'VT3314', 'ທ່ານ ສຸລິຍາ ຈັນທະສີ', '', '1989-12-27', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058462222', 'ແຕ່ງງານ', '', '', '', '', '', 'ແຈ້ງສະຫວ່າງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101725', 'VT3420', 'ທ່ານນາງ ສຸເເນັດຕາ ພະວົງສາ', '', '1988-01-20', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2052422453', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101726', 'VT3421', 'ທ່ານນາງ ໄກ່ອຳພອນ ພະສີຫາຄົມ', '', '1988-06-08', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055223359', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101727', 'VT3423', 'ທ່ານນາງ ສີອຳພັນ ໄຊຍະພອນ', '', '1985-03-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055552239', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101728', 'VT3424', 'ທ່ານ ປະດິດ ສີສຸວັນ', '', '1986-10-02', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058988883', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101729', 'VT3438', 'ທ່ານນາງ ໂສມພະນາ ເທບສົມບັດ', '', '1990-07-19', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056665619', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101730', 'VT3439', 'ທ່ານນາງ ຕຸລາຄຳ ວົງໄຊ', '', '1991-10-12', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055546236', 'ໂສດ', '', '', '', '', '', 'ຮ່ອງໄກ່ແກ້ວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101731', 'VT3435', 'ທ່ານນາງ ອັກສອນສະຫວັນ ຊົງວິໄລ', '', '1989-11-22', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058569666', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101732', 'VT3436', 'ທ່ານ ທອງດຳ ບັນທະພອນ', '', '1988-05-12', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058596363', 'ໂສດ', '', '', '', '', '', 'ຫນອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101733', 'VT3481', 'ທ່ານ ໄຊພະສຸກ ພະອຸເທນ', '', '1990-12-31', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055545669', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫລວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101734', 'VT3590', 'ທ່ານນາງ ສຸດສະດາ ສີສະຫວັດ', '', '1988-08-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055111123', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101735', 'VT3591', 'ທ່ານ ເພັງພະຈັນ ຫຼວງລາດ', '', '1990-03-11', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059969990', 'ໂສດ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101736', 'VT3620', 'ທ່ານ ຫາຈົ່ວ ທໍ່', '', '1989-10-01', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055577718', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101737', 'VT3619', 'ທ່ານ ອານຸລັກ ໄຊຖານິດ', '', '1989-08-28', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055541598', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101738', 'VT3621', 'ທ່ານນາງ ນຸ່ຍຄຳ ກົມມະນີວົງ', '', '1991-11-23', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056586263', 'ໂສດ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101739', 'VT3680', 'ທ່ານນາງ ສຸກສາຄອນ ຈັນທະວີໄຊ', '', '1992-04-04', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055999897', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101740', 'VT3775', 'ທ່ານ ໄພກິ ບຸນທະພອນ', '', '1990-12-24', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055997894', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101741', 'VT3777', 'ທ່ານ ວິສັນ ມະນີວົງ', '', '1991-05-10', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059477794', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101742', 'VT3776', 'ທ່ານນາງ ທິບສະຫວັນ ບຸນສຸຂະບົວສອນ', '', '1984-08-08', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055532891', 'ຮ້າງ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101743', 'VT3872', 'ທ່ານນາງ ລັດດາພອນ ສອນແພງເພັດ', '', '1990-01-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055599636', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101744', 'VT3871', 'ທ່ານນາງ ບຸນມີ ກອງແກ້ວ', '', '1990-01-01', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055550511', 'ໝ້າຍ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101745', 'VT3881', 'ທ່ານນາງ ມະນີວັນ ອິນທະວົງ', '', '1989-07-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055559805', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101746', 'VT3915', 'ທ່ານນາງ ສີມະລີຈັນ ແກ້ວວັນຖີ່ນ', '', '1988-06-27', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055589859', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101747', 'VT3936', 'ທ່ານນາງ ປານີ ມະນີວົງ', '', '1991-02-26', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2052557272', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພຍລາດ', 'ສັງທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101748', 'VT4145', 'ທ່ານນາງ ວັນຄຳ ດວງບຸດດີ', '', '1991-02-14', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058303030', 'ໂສດ', '', '', '', '', '', 'ນາຫອຍ', 'ສັງທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101749', 'VT4146', 'ທ່ານນາງ ທິບພາວັນ ສີສະໝຸດ', '', '1986-06-11', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056155959', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101750', 'VT4147', 'ທ່ານນາງ ຄອນສະຫວັນ ສຸລິນທະວົງ', '', '1989-06-03', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2057972299', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຊຽງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101751', 'VT4148', 'ທ່ານ ອານຸ່ງ ທອນທະລັງສີ', '', '1991-01-17', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055556878', 'ໂສດ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101752', 'VT4151', 'ທ່ານນາງ ນີລະພັນ ພັນດານຸວົງ', '', '1985-10-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055536249', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101753', 'VT4149', 'ທ່ານ ສັນຕິໄຊ ພົມມະລິດ', '', '1992-12-31', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058395929', 'ໂສດ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101754', 'VT4152', 'ທ່ານນາງ ພົງສະຫວັນ ຖາວອນ', '', '1990-12-07', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055559224', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101755', 'VT4154', 'ທ່ານນາງ ກັນຍາຮັກ ພັນນະເລດ', '', '1991-07-29', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054990789', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101756', 'VT3981', 'ທ່ານນາງ ອຳໄພ ສຸລິນທາ', '', '1993-08-20', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059295424', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101757', 'VT3982', 'ທ່ານ ຈັນທະພອນ ທອງວິຈິດ', '', '1991-09-15', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2058822999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101758', 'VT4215', 'ທ່ານນາງ ບຸນຫຼາຍ ດວງພະຈັນ', '', '1993-06-12', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055226169', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101759', 'VT4218', 'ທ່ານ ບຸນຫຼາຍ ນັນທະວົງ', '', '1984-01-02', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2056754888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101760', 'VT4229', 'ທ່ານນາງ ຄຳທ່ອນ ວົງພະຈັນ', '', '1989-08-07', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055466264', 'ແຕ່ງງານ', '', '', '', '', '', 'ໃໝ່', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101761', 'VT4240', 'ທ່ານ ແກ້ວຈິນດາ ສຸນາບັນດິດ', '', '1993-06-11', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2055536505', 'ໂສດ', '', '', '', '', '', 'ໜອງສະໂນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101762', 'VT4243', 'ທ່ານນາງ ເພັດສະຫວັນ ນາວິໄລວົງ', '', '1993-08-24', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058992222', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101763', 'VT4242', 'ທ່ານນາງ ສອນວັນເພັງ ພົມຮັກສາ', '', '1995-03-16', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2058539999', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101764', 'VT4241', 'ທ່ານນາງ ເພັດດາວອນ ສີຫາລາດ', '', '1983-10-08', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059563393', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມຫວັງເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101765', 'VT4255', 'ທ່ານນາງ ຄອນນິດາ ວິລາວັນ', '', '1993-01-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055557175', 'ແຕ່ງງານ', '', '', '', '', '', 'ດຸງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101766', 'VT4257', 'ທ່ານນາງ ທະນັດສະພອນ ເກດຕະວົງ', '', '1995-09-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055945456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຳເກດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101767', 'VT4317', 'ທ່ານ ສົມພອນ ສີທະວົງໄຊ', '', '1988-04-12', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059536556', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ່', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101768', 'VT4318', 'ທ່ານນາງ ວັນທະນະພອນ ວົງພະຈັນ', '', '1994-09-11', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059882282', 'ໂສດ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101769', 'VT4391', 'ທ່ານ ຄຳເຫຼັກ ສີວົງໄຊ', '', '1993-05-29', '', 'ຊາຍ', 26, '', 'ການຂາຍ', '2059931785', 'ໂສດ', '', '', '', '', '', 'ເພຍລາດ', 'ສັງທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101770', 'VT4444', 'ທ່ານນາງ ວະນິດາ ຈັນທະວົງ', '', '1995-06-29', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056660737', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101771', 'VT4445', 'ທ່ານນາງ ວິລະສອນ ຄອນສະຫວັນ', '', '1993-08-18', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056939456', 'ໂສດ', '', '', '', '', '', 'ຫຼັກຫີນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101772', 'VT4446', 'ທ່ານນາງ ອິມພອນ ທິບວີເງິນ', '', '1996-01-15', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055551513', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101773', 'VT4447', 'ທ່ານນາງ ມິດຕະພອນ ສັນຍາສິດ', '', '1996-12-21', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059341133', 'ໂສດ', '', '', '', '', '', 'ໂນນແກ້ວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101774', 'VT4448', 'ທ່ານນາງ ອາຫຼິງ ເສົາວົງໄຊ', '', '1994-09-10', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056226456', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072101775', 'VT4449', 'ທ່ານນາງ ສີ ບຸນທະວົງ', '', '1995-11-09', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2055313333', 'ແຕ່ງງານ', '', '', '', '', '', 'ທອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101776', 'VT4450', 'ທ່ານນາງ ສົມລືໄທ ພາບຸດດີ', '', '1995-08-25', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2054940999', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101777', 'VT4481', 'ທ່ານນາງ ນິດຕະຍາ ຈັນທະວີໄຊ', '', '1985-03-06', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2056535585', 'ໂສດ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101778', 'VT4487', 'ທ່ານນາງ ປາວີນາ ທິບພະເສນາ', '', '1986-12-15', '', 'ຍິງ', 26, '', 'ການຂາຍ', '2059666264', 'ໂສດ', '', '', '', '', '', 'ສົມສະນຸກ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101779', 'VT2036', 'ທ່ານ ເພັດສະໝອນ ສີສະຍຸດ', '', '1979-05-30', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055649549', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101780', 'VT0290', 'ທ່ານ ບຸນທອນ ພູນສະຫວັດ', '', '1967-10-10', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055590425', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂພນເລົາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101781', 'VT0034', 'ທ່ານ ວັນນະເດດ ວັນນະວົງ', '', '1968-07-04', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055500565', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101782', 'VT2000', 'ທ່ານນາງ ທິບພະພອນ ຫຼວງລາດ', '', '1975-11-05', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055500656', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101783', 'VT0634', 'ທ່ານ ຄຳດີ ໄຊຍະວົງ', '', '1967-10-01', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055500815', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງມິກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101784', 'VT2226', 'ທ່ານນາງ ຊິດຕະວັດທະນາ ໂພທິວັນ', '', '1983-08-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055905905', 'ໂສດ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101785', 'VT1532', 'ທ່ານນາງ ດາວອນ ສານສຸກ', '', '1974-12-15', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055741777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101786', 'VT2216', 'ທ່ານນາງ ລັດສະນີ ທອງສະຫວັນ', '', '1983-12-15', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055523615', 'ໂສດ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101787', 'VT0894', 'ທ່ານນາງ ຫມອກຟ້າ ພຣະຄິ່ນ', '', '1973-03-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055600013', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101788', 'VT0960', 'ທ່ານນາງ ອະໄພວອນ ເສລີທຳ', '', '1978-12-04', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054445959', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101789', 'VT2277', 'ທ່ານ ລຸນທອງ ຈັນສີນາ', '', '1982-12-08', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055600232', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101790', 'VT2004', 'ທ່ານນາງ ມອນໄຊ ບູລົມ', '', '1976-12-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055356395', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະໂພ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101791', 'VT2235', 'ທ່ານນາງ ຕຸລາ ທຳມະວົງ', '', '1981-10-31', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055621819', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101792', 'VT2492', 'ທ່ານນາງ ດາລຸນີ ສຸພັນທອງ', '', '1980-11-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055553020', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101793', 'VT2643', 'ທ່ານນາງ ເພັດລາສີ ຂັນທະວົງ', '', '1987-03-28', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055555987', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101794', 'VT2086', 'ທ່ານນາງ ຈັນໂສມ ມາລາສະຫວັນ', '', '1981-04-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054166299', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101795', 'VT2899', 'ທ່ານ ບຸນລອດ ຈັນທະວົງ', '', '1988-12-11', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055566698', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101796', 'VT0975', 'ທ່ານນາງ ລຸ້ງລາວັນ ເດດສະດາຈັນ', '', '1975-02-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2056536929', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101797', 'VT2940', 'ທ່ານນາງ ອານຸລັກ ຈັນທະລາດ', '', '1989-11-02', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055644442', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101798', 'VT2411', 'ທ່ານ ເຂົາຄຳຊີອອນ ອິນທິຣາດ', '', '1982-10-15', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055590449', 'ໂສດ', '', '', '', '', '', 'ສີເມືອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101799', 'VT2510', 'ທ່ານ ແສງສຸລີ ວໍລະບຸດ', '', '1980-01-14', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055600230', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101800', 'VT1748', 'ທ່ານ ບຸນກ້ວາງ ພົມມະແສງ', '', '1976-10-06', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2056234567', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101801', 'VT2540', 'ທ່ານ ວິໄລສັກ ແກ້ວສຸວັນແດງ', '', '1986-11-23', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055289997', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101802', 'VT2858', 'ທ່ານນາງ ແສງດາລີ ໂງ່ນພະຈັນ', '', '1987-09-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055565557', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101803', 'VT2853', 'ທ່ານ ລັດສະໝີ ຫອມໜູຮັກ', '', '1986-12-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055492555', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101804', 'VT2720', 'ທ່ານ ວີລ້ຽມ ວິໄລແສງ', '', '1983-11-14', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055566690', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101805', 'VT3102', 'ທ່ານນາງ ວັນນະຄອນ ເພັດເມືອງເຫນືອ', '', '1986-09-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2058855955', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະນຸກ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101806', 'VT2896', 'ທ່ານນາງ ຈັນທະວອນ ແສງທອງ', '', '1989-07-31', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054436877', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໝັ້ນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101807', 'VT2938', 'ທ່ານ ສິນໄຊ ສູນທະລາ', '', '1984-10-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055622622', 'ໂສດ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101808', 'VT2939', 'ທ່ານ ພົມມະຈັກ ວິໄລສຸກ', '', '1989-09-13', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2059533334', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101809', 'VT3024', 'ທ່ານ ອາລຸນປະເສີດ ຍົງວົງສິດທິ', '', '1985-03-12', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055295522', 'ໂສດ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101810', 'VT3973', 'ທ່ານ ສັນຕິສຸກ ຈັນທະວົງ', '', '1988-12-24', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055754639', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101811', 'VT3375', 'ທ່ານນາງ ມະນີວອນ ພິມບ່າວ', '', '1988-11-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054455700', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101812', 'VT3427', 'ທ່ານ ສົມພອນ ທຸມມະນາດີ', '', '1984-04-02', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054707429', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101813', 'VT3426', 'ທ່ານ ອານົງຄານ ຈັນທະພົງ', '', '1989-09-21', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055804053', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປ່າແຫຼບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101814', 'VT3279', 'ທ່ານນາງ ຫັດສະດາ ບຸນຍະສິດ', '', '1985-06-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055645565', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101815', 'VT3852', 'ທ່ານ ພອນປະເສີດ ນາຖາວົງ', '', '1990-11-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2058443456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວທອງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101816', 'VT3089', 'ທ່ານນາງ ໄພວັນ ມິລະກອນ', '', '1986-05-04', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2056784466', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະອາດ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101817', 'VT3369', 'ທ່ານນາງ ທູນທິດາ ອິນທະວົງ', '', '1988-10-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2058215558', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮູ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101818', 'VT3368', 'ທ່ານນາງ ດາລິວັນ ພິມມະທັດ', '', '1990-08-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2054910555', 'ໂສດ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101819', 'VT3425', 'ທ່ານ ມະຫາໄຊ ຄູຄຳ', '', '1993-03-09', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055791978', 'ໂສດ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101820', 'VT3442', 'ທ່ານນາງ ເພັດສະໄຫມ ສະຫຼີພົມ', '', '1991-01-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055591925', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101821', 'VT3440', 'ທ່ານນາງ ຫັດສະດີ ພົມທະສິນ', '', '1990-04-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055595916', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດ້ວງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101822', 'VT3794', 'ທ່ານນາງ ກະຕ່າຍທອງ ແດງມະນີຕາ', '', '1988-12-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2059655693', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101823', 'VT3774', 'ທ່ານນາງ ລັດສະໝີ ພູມມີ', '', '1980-11-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055514589', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101824', 'VT3869', 'ທ່ານ ວິລະສອນ ນັກໂຮມ', '', '1990-11-27', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055414404', 'ໂສດ', '', '', '', '', '', 'ໂພສີ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101825', 'VT3873', 'ທ່ານ ບຸນຖະໝອມ ຊາມົນຕີ', '', '1991-04-25', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055456199', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101826', 'VT3933', 'ທ່ານນາງ ວັນນະພອນ ວົງເພັດ', '', '1984-08-18', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2052258885', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101827', 'VT4155', 'ທ່ານ ຄຳພອນ ສີວໍລະວົງ', '', '1994-05-31', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2056558989', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101828', 'VT4156', 'ທ່ານນາງ ພອຍໄພລິນ ປັນຍາດາ', '', '1993-03-24', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2058432222', 'ໂສດ', '', '', '', '', '', 'ຫນອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101829', 'VT3983', 'ທ່ານນາງ ສຸດາເພັດ ວັນນະວົງ', '', '1993-01-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2058875555', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101830', 'VT3984', 'ທ່ານນາງ ທິບພາວອນ ບົວວົງ', '', '1994-08-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055567152', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101831', 'VT4254', 'ທ່ານ ພູທອນ ແກ້ວມະນີ', '', '1992-01-04', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055553289', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101832', 'VT4471', 'ທ່ານນາງ ດາລາວັນ ສີວັນທອງ', '', '1984-07-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າອົງກອນ', '2055588852', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວາດໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101833', 'VT0632', 'ທ່ານນາງ ພານຄຳ ເຄນນາວົງ', '', '1970-05-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055500957', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101834', 'VT0038', 'ທ່ານນາງ ແສງທອງ ຈິດຮູບໂລກ', '', '1967-06-25', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055590099', 'ແຕ່ງງານ', '', '', '', '', '', 'ພ້າວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101835', 'VT1999', 'ທ່ານນາງ ທິບນາລີ ເມືອງຈັນ', '', '1978-12-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055590868', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີຖານເຫນືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101836', 'VT2413', 'ທ່ານນາງ ເພັດສົມພອນ ບຸບຜາ', '', '1984-04-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054900500', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງເຫນືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101837', 'VT2572', 'ທ່ານນາງ ເພັດສະໄໝ ອິນທະລາດ', '', '1986-07-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055593838', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101838', 'VT2494', 'ທ່ານນາງ ສີພາວັນ ວິລະຈິດ', '', '1981-03-15', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055595942', 'ຮ້າງ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101839', 'VT2416', 'ທ່ານນາງ ສອນໄຊ ອົບປະສົງ', '', '1978-07-18', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056456395', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດໄຕໃຫຍ່', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101840', 'VT2553', 'ທ່ານນາງ ເພັດສຸດາຈັນ ສີສະຫວັດ', '', '1987-05-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056455456', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101841', 'VT0991', 'ທ່ານ ເຂັມຄົມສິດ ຊະນະສີສານ', '', '1973-07-17', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055926153', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101842', 'VT0905', 'ທ່ານນາງ ສົມນຸດ ພູສີສຸລາດ', '', '1976-03-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056522151', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101843', 'VT0808', 'ທ່ານນາງ ສົມຄວນ ພະຈັນສິລິ', '', '1975-11-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056269365', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101844', 'VT2552', 'ທ່ານນາງ ພູເງິນ ດວງໃຈ', '', '1986-12-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055777779', 'ໂສດ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101845', 'VT2570', 'ທ່ານນາງ ຜ່ອງສີ ພັນດານຸວົງ', '', '1983-02-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054289465', 'ໂສດ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101846', 'VT2279', 'ທ່ານນາງ ນົງຄານ ເພັດໂສພາ', '', '1984-08-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055649477', 'ໝ້າຍ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101847', 'VT2647', 'ທ່ານ ບັນດາສັກ ເພັດວໍລະສັກ', '', '1982-05-20', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059556969', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີຖານເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101848', 'VT2735', 'ທ່ານ ລຳໄພ ພັນຜິວ', '', '1986-07-02', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056651119', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101849', 'VT3118', 'ທ່ານ ທິບພະວົງ ເມືອງຈັນ', '', '1987-06-26', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055566556', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ສີຖານເຫນືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101850', 'VT2414', 'ທ່ານນາງ ເກດສະລິນ ຈັນມະນີ', '', '1983-01-05', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055594699', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101851', 'VT2621', 'ທ່ານນາງ ວິໄລວອນ ລິນທະລາດ', '', '1987-06-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054228910', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101852', 'VT1979', 'ທ່ານນາງ ພອນສະຫວັນ ສຸຂະທຳມະວົງ', '', '1977-04-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055558292', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101853', 'VT2280', 'ທ່ານນາງ ສີສຸພັນ ມະນີວົງ', '', '1984-10-04', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055549154', 'ຮ້າງ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101854', 'VT2648', 'ທ່ານນາງ ວັນນະພາ ລັດຖະມອນ', '', '1987-04-28', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054292482', 'ໂສດ', '', '', '', '', '', 'ສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101855', 'VT2650', 'ທ່ານນາງ ອາລິສາ ບົວລະວົງ', '', '1988-11-24', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052257878', 'ຮ້າງ', '', '', '', '', '', 'ວັດສົບ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101856', 'VT2672', 'ທ່ານນາງ ພອນທິບ ຫຼວງລາດ', '', '1988-08-18', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054113322', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101857', 'VT2734', 'ທ່ານ ສອນເພັດ ພັນມະລີ', '', '1975-08-06', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055605776', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101858', 'VT2730', 'ທ່ານນາງ ພິອາວອນ ອຸດທະຈັກ', '', '1984-03-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055817221', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕີ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101859', 'VT2729', 'ທ່ານນາງ ແສງມະນີວອນ ໂສພາ', '', '1983-01-17', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054444014', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101860', 'VT0168', 'ທ່ານນາງ ອຸດ້ຽນ ສິດທິວົງ', '', '1968-05-25', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054759632', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101861', 'VT2491', 'ທ່ານນາງ ຈັນທະວີວອນ ຮວນຈັນມອນ', '', '1978-10-15', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059833378', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງບົວທອງເຫນືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101862', 'VT0977', 'ທ່ານນາງ ໄຊພອນ ບຸດດາວົງ', '', '1975-10-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056376157', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101863', 'VT3137', 'ທ່ານນາງ ດວງຕາວັນ ພາພິບູນ', '', '1980-07-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055704000', 'ໂສດ', '', '', '', '', '', 'ໂຄກນິນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101864', 'VT3057', 'ທ່ານນາງ ສິລິພອນ ພິມພິລາ', '', '1988-11-23', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2057775777', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງຂັນຄຳ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101865', 'VT3050', 'ທ່ານນາງ ຈິນດາ ທອງຈັນເພັງ', '', '1986-05-30', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054767676', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101866', 'VT3059', 'ທ່ານ ບັນເທົາ ອຸ່ນອຸດົມ', '', '1986-06-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055775886', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍນ້ຳເຢັນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101867', 'VT3041', 'ທ່ານນາງ ພິມພອນ ຄ່ຽມວິໄຊ', '', '1989-10-08', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055522969', 'ໂສດ', '', '', '', '', '', 'ໜອງບົວທອງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101868', 'VT3055', 'ທ່ານນາງ ໄພວັນ ສໍອິນໄຊ', '', '1986-10-12', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055099224', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101869', 'VT3138', 'ທ່ານນາງ ຄຳປະເສີດ ທຳມະຈັກ', '', '1989-07-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056444456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101870', 'VT3075', 'ທ່ານນາງ ວົງພະຈັນ ແສງສຸລິຍະ', '', '1986-05-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055311751', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101871', 'VT3042', 'ທ່ານນາງ ຈັນແພງ ພົມມະຈັນ', '', '1989-07-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056411144', 'ໂສດ', '', '', '', '', '', 'ໂສກປ່າຫຼວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101872', 'VT3056', 'ທ່ານນາງ ພິນໃຈ ວໍລະສານ', '', '1989-04-12', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054395916', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101873', 'VT3047', 'ທ່ານນາງ ທິບພະຈັນ ເພັດທະວົງ', '', '1989-12-31', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055588397', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລະຄຳເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101874', 'VT3052', 'ທ່ານນາງ ກາຢົວ ຢ່າງລືໄຊ', '', '1986-07-24', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055441123', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101875', 'VT3062', 'ທ່ານ ອານຸສັກ ເຮືອງໄຊຍະແສງ', '', '1988-08-18', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055541954', 'ຮ້າງ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101876', 'VT3049', 'ທ່ານ ຄຳພອນ ສີສຸວັນທອງ', '', '1988-12-23', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055069965', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101877', 'VT3139', 'ທ່ານນາງ ທິບພະວັນ ໄຊຄຳຝັ້ນ', '', '1987-03-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052525278', 'ໝ້າຍ', '', '', '', '', '', 'ຫນອງສ້າງທໍ່', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101878', 'VT3140', 'ທ່ານນາງ ເກດມະນີ ສີຫາລາດ', '', '1987-03-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056795578', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເງິນ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101879', 'VT3044', 'ທ່ານ ສົມພອນ ຄອງຕີ', '', '1986-07-09', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055101055', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101880', 'VT3045', 'ທ່ານ ທອງສະໄໝ ນາພັນທະລັກ', '', '1985-12-07', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056653255', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101881', 'VT3072', 'ທ່ານນາງ ປານີພອນ ນັນທະວົງ', '', '1990-03-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054791155', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101882', 'VT3040', 'ທ່ານນາງ ນະລິນີ ມີສະຫວັດ', '', '1986-07-01', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055904409', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫນອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101883', 'VT3081', 'ທ່ານ ສອນໄຊ ຊາພັກດີ', '', '1987-12-31', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058858859', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕີ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101884', 'VT3122', 'ທ່ານນາງ ດາລາວັນ ວົງໄຊ', '', '1983-10-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055946456', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວາດເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101885', 'VT3119', 'ທ່ານ ແກ້ວອຸທອນ ສີວິໄລ', '', '1983-08-04', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054332288', 'ໂສດ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101886', 'VT3121', 'ທ່ານນາງ ພອນສຸດາ ບູລົມ', '', '1991-09-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052599559', 'ໂສດ', '', '', '', '', '', 'ສີຖານເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101887', 'VT3124', 'ທ່ານນາງ ສຸມາລີ ໄຊຍະວົງ', '', '1989-03-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054919123', 'ແຕ່ງງານ', '', '', '', '', '', 'ບຶງຂະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101888', 'VT3025', 'ທ່ານ ທອງສະຫວັນ ຈັນທະລາສີ', '', '1989-07-29', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055989889', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄູນ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101889', 'VT3289', 'ທ່ານ ພັນທະມິດ ກິດຕິຍະລາດ', '', '1985-12-15', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056666061', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຫນູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101890', 'VT3285', 'ທ່ານນາງ ນຸດທະນາ ຄຳມະນີ', '', '1985-10-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055184445', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101891', 'VT3286', 'ທ່ານນາງ ສຸກໄຊ ພັນທະວົງ', '', '1990-03-02', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058232358', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວທອງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101892', 'VT3343', 'ທ່ານນາງ ທິບພະວັນ ວົງພັກດີ', '', '1984-07-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059969919', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫຼັກຫີນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101893', 'VT3418', 'ທ່ານ ຄູນຮັກ ລໍວັນເງີ', '', '1988-05-12', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055859707', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101894', 'VT3827', 'ທ່ານນາງ ເກສອນ ສູນທະລາ', '', '1992-08-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055966866', 'ໂສດ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101895', 'VT2861', 'ທ່ານ ພູ​ຫຼວງ ​ເທບ​ທອງ​ແສນ', '', '1985-05-18', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055700554', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ສີ​ສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101896', 'VT2860', 'ທ່ານນາງ ເພັດສະໝອນ ທຳມະໂຄດວົງໄຊ', '', '1985-01-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055131559', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101897', 'VT3152', 'ທ່ານນາງ ອາທິດ ໄຊຍະບຸດ', '', '1988-08-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055337249', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101898', 'VT2569', 'ທ່ານນາງ ປະທຸມພອນ ວົງມະນີ', '', '1984-03-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055012507', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101899', 'VT2463', 'ທ່ານນາງ ຄຳຫຼ້າ ພິມວົງສາ', '', '1983-10-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056569789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນງາມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101900', 'VT2495', 'ທ່ານນາງ ທິບພາພອນ ແກ່ນທະວົງ', '', '1985-01-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055400266', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຂາຊ້າຍ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101901', 'VT2651', 'ທ່ານນາງ ລັດດາວັນ ຈັນທະຈິດ', '', '1989-12-05', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055580550', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101902', 'VT2669', 'ທ່ານນາງ ທິບສະຫວັນ ແສງສຸລິຍະ', '', '1989-03-17', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055544050', 'ໂສດ', '', '', '', '', '', 'ສາລະຄຳເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101903', 'VT2670', 'ທ່ານນາງ ພູວັນ ທຸມມະເກສອນ', '', '1986-11-30', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056545270', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄູນນ້ອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101904', 'VT2671', 'ທ່ານນາງ ພອນນາລີ ຈັນທະຈັກ', '', '1986-07-31', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055015011', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101905', 'VT2724', 'ທ່ານນາງ ໃຈສະໝອນ ວົງສະລາດ', '', '1988-11-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056666977', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຫວາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101906', 'VT2728', 'ທ່ານນາງ ວັນນະລອນ ວິຊາເທບ', '', '1985-08-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055111288', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101907', 'VT2725', 'ທ່ານນາງ ສະຫວັນໃຈ ຈັນມະວົງ', '', '1982-10-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059453535', 'ໂສດ', '', '', '', '', '', 'ີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101908', 'VT3043', 'ທ່ານ ນິພາກອນ ພັນມະນີວົງ', '', '1986-07-03', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058884545', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີເມືອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101909', 'VT3046', 'ທ່ານ ແສງພະຈັນ ວິລິວົງ', '', '1987-11-30', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054113344', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101910', 'VT3051', 'ທ່ານນາງ ເພັດລັດດາວອນ ຄຳປານີສົງ', '', '1983-08-24', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055440550', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101911', 'VT3073', 'ທ່ານນາງ ວຽງສະໄຫມ ພອນສະຫວັນ', '', '1987-11-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055551655', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງມຶກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101912', 'VT3142', 'ທ່ານນາງ ມີນາ ວິໄລແສງ', '', '1987-03-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058899222', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101913', 'VT3063', 'ທ່ານນາງ ບົວວັນ ພອນມີໄຊ', '', '1985-11-01', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055334557', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101914', 'VT3145', 'ທ່ານນາງ ຈັນທະວອນ ລູຊາ', '', '1987-12-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055556578', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101915', 'VT3136', 'ທ່ານ ລັດຕະນະ ສິລິສັກ', '', '1987-10-12', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055656695', 'ແຕ່ງງານ', '', '', '', '', '', 'ກາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101916', 'VT3135', 'ທ່ານ ຄຳເສັງ ວົງຄຳຈັນ', '', '1980-06-16', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056496777', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຂາຊາຍ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101917', 'VT3061', 'ທ່ານນາງ ສົມໃຈ ວົງລໍຄຳ', '', '1986-05-25', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055556595', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101918', 'VT3058', 'ທ່ານ ຄຳພູມີ ພຸດທະວົງ', '', '1987-04-30', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058823311', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແຊງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101919', 'VT3053', 'ທ່ານນາງ ອຸລາວັນ ທຳມະວົງສາ', '', '1990-07-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055775880', 'ໂສດ', '', '', '', '', '', 'ໂນນຫວາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101920', 'VT3074', 'ທ່ານນາງ ສຸດາຈັນ ຈູມມະລີ', '', '1987-11-04', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055844442', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳໃຕ້', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101921', 'VT3144', 'ທ່ານນາງ ອຳໄພວັນ ວົງໄຊຍາ', '', '1989-03-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055353388', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສົມບູນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101922', 'VT3143', 'ທ່ານນາງ ມຸກດາວັນ ພົມມະລິນ', '', '1988-08-04', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059522211', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101923', 'VT3054', 'ທ່ານນາງ ລັດຕະນາ ອິນທະວົງ', '', '1988-09-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058533338', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເຄັງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101924', 'VT3076', 'ທ່ານນາງ ລິບດາ ລັດຕະນະສັກ', '', '1986-05-05', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056961933', 'ຮ້າງ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101925', 'VT3048', 'ທ່ານ ສົມຊາຍ ສຸພິດາ', '', '1982-12-20', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056145656', 'ຮ້າງ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101926', 'VT3129', 'ທ່ານນາງ ມໍຢ່າງ ເຈີຕົວ', '', '1989-03-23', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054521361', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທົ່ມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101927', 'VT3148', 'ທ່ານນາງ ສຸດສະດາ ອຸ່ນອາລົມ', '', '1985-01-01', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059761129', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101928', 'VT3151', 'ທ່ານນາງ ດາລຸນນີ ສີລາເພັດ', '', '1989-08-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059262222', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຫ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101929', 'VT3156', 'ທ່ານ ສົມສັກ ດວງມະນີ', '', '1983-11-15', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059987889', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101930', 'VT3125', 'ທ່ານນາງ ຄຳຄູນ ທຳມະວົງ', '', '1987-10-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055559954', 'ໂສດ', '', '', '', '', '', 'ຫນອງຫນ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101931', 'VT3120', 'ທ່ານ ວິລຸນາ ວໍລະວົງ', '', '1985-03-31', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055569692', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມຫວັງເຫນືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101932', 'VT3131', 'ທ່ານ ພູວົງ ພົມມະຈັນ', '', '1984-11-18', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055889276', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101933', 'VT3130', 'ທ່ານ ສຸລິໂຍ ຈັນທະລາສີ', '', '1988-10-08', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056666893', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101934', 'VT3146', 'ທ່ານນາງ ມະໄລສອນ ວັງວິລະຈິດ', '', '1989-12-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058871179', 'ໂສດ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101935', 'VT3155', 'ທ່ານນາງ ນາລີ ສຸກປະເສີດ', '', '1991-09-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2057993636', 'ໂສດ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101936', 'VT3126', 'ທ່ານນາງ ພິດາວັນ ຈູມມາລາວົງ', '', '1988-12-26', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055559961', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101937', 'VT3132', 'ທ່ານ ສົມລິດ ສີບຸນເຮືອງ', '', '1988-11-18', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055333661', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຳເກດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101938', 'VT3127', 'ທ່ານ ສົງການ ວິໄລວົງ', '', '1989-04-12', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055557456', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົງເປືອຍເໜືອ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101939', 'VT3123', 'ທ່ານນາງ ອຳພອນ ລໍລອນສີ', '', '1988-05-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055565594', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫ່ງາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101940', 'VT3134', 'ທ່ານ ພັນທະພອນ ສີສົມພອນ', '', '1985-09-09', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052126661', 'ແຕ່ງງານ', '', '', '', '', '', 'ອີ່ໄລເໜືອ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101941', 'VT3150', 'ທ່ານນາງ ວັນສະຫຼີ ສີສຸວັນທອງ', '', '1986-12-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054499924', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101942', 'VT3128', 'ທ່ານນາງ ນຸດສະນີ ນາເຂດ', '', '1989-12-18', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058871174', 'ແຕ່ງງານ', '', '', '', '', '', 'ອ່າງນໍ້າຫຸມ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101943', 'VT3133', 'ທ່ານນາງ ພູຄຳ ດວງໃຈ', '', '1987-02-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055559255', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101944', 'VT3240', 'ທ່ານນາງ ຄຳຄູນມີ ຊາວບຸດດາວົງ', '', '1988-10-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054444199', 'ແຕ່ງງານ', '', '', '', '', '', 'ຝາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101945', 'VT3291', 'ທ່ານນາງ ບົວພອນຄຳ ສີວິໄລ', '', '1986-06-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056292292', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101946', 'VT3293', 'ທ່ານນາງ ສຸພາພອນ ຄະວົງສາ', '', '1988-10-30', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059908228', 'ໝ້າຍ', '', '', '', '', '', 'ສີຊົມຊື່ນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101947', 'VT3287', 'ທ່ານ ສຸກສັນ ດວງມາລາ', '', '1990-03-27', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059109998', 'ແຕ່ງງານ', '', '', '', '', '', 'ພ້າວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101948', 'VT3288', 'ທ່ານນາງ ວິໄລວັນ ໄຫລສຸລິວົງ', '', '1984-11-17', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055912345', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດໄຕນ້ອຍທ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101949', 'VT3294', 'ທ່ານ ວິໄລພອນ ສົມຈັນມະວົງ', '', '1984-12-01', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054568756', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄູນນ້ອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101950', 'VT3290', 'ທ່ານນາງ ສົມສະນິດ ໂພທິລາດ', '', '1986-03-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059933599', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101951', 'VT3330', 'ທ່ານນາງ ວິໄລກອນ ເຜົ້າຜາສຸກ', '', '1986-09-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058535499', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101952', 'VT3344', 'ທ່ານນາງ ຝົ້ງ ລຽງສະກຸນ', '', '1989-09-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059494594', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງໄຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101953', 'VT3345', 'ທ່ານນາງ ພອນສີ ກຸມພົນປາກດີ', '', '1985-01-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055994945', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101954', 'VT3346', 'ທ່ານນາງ ພອນທິບ ຫາວັນນະລາດ', '', '1989-11-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058211344', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101955', 'VT3347', 'ທ່ານ ພູທອງ ຊາມຸນຕີ', '', '1981-07-02', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059037289', 'ໂສດ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101956', 'VT3348', 'ທ່ານ ດວງພອນ ນຸສີຫາລາດ', '', '1990-04-02', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055542622', 'ໂສດ', '', '', '', '', '', 'ໂພໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101957', 'VT3349', 'ທ່ານ ເກດສະໜາ ພົມມະຫານ', '', '1988-12-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059919988', 'ໂສດ', '', '', '', '', '', 'ນາຄູນນ້ອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101958', 'VT3350', 'ທ່ານນາງ ອາລິຍະພອນ ຈັນທະວົງ', '', '1988-07-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056060515', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101959', 'VT3412', 'ທ່ານນາງ ອຸທາ ຈຳປາພັນ', '', '1991-01-29', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055348834', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101960', 'VT3413', 'ທ່ານ ສຸລິສັກ ຊົງວິໄລ', '', '1988-08-14', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055580400', 'ໂສດ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101961', 'VT3415', 'ທ່ານນາງ ອຸ່ນເຮືອນ ກຸວໍລະວົງ', '', '1991-10-19', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055668434', 'ໂສດ', '', '', '', '', '', 'ຫັດສະດີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101962', 'VT3416', 'ທ່ານ ສຸກສະຫວັນ ໄຊຍະວົງ', '', '1993-04-02', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056789778', 'ໂສດ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072101963', 'VT3417', 'ທ່ານນາງ ທິບພາວັນ ອິນທະສານ', '', '1990-01-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058581224', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101964', 'VT3444', 'ທ່ານ ລິດສະມັນ ຈັນທະໂຊດ', '', '1991-02-07', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055020000', 'ໂສດ', '', '', '', '', '', 'ຫນອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101965', 'VT3554', 'ທ່ານ ໄຊພອນ ບຸນວິໄລ', '', '1989-08-06', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055567355', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101966', 'VT3568', 'ທ່ານນາງ ສອນທະວີ ສີວິໄລ', '', '1990-09-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058883844', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101967', 'VT3569', 'ທ່ານນາງ ແປ໋ກກີ້ ສຸທຳມະວົງ', '', '1987-04-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055622370', 'ໂສດ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101968', 'VT3570', 'ທ່ານນາງ ອິນທະຫວາ ທຳມະທິໂນ', '', '1991-01-10', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055946522', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພຍວັດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101969', 'VT3571', 'ທ່ານນາງ ໂອເລັດ ໄຊຍະບຸດ', '', '1991-08-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052204478', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101970', 'VT3572', 'ທ່ານ ຈັກກະພັນ ແສງຈັນ', '', '1989-12-05', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055593020', 'ໂສດ', '', '', '', '', '', 'ເມືອງວາທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101971', 'VT3573', 'ທ່ານນາງ ສຸວັນແລມ ລຸນສະຫວ່າງ', '', '1991-05-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052696969', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101972', 'VT3574', 'ທ່ານ ພຸດທະເສນ ແຂ່ງຂັນ', '', '1991-03-21', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059879358', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101973', 'VT3581', 'ທ່ານ ເສກສັນ ຈັນທະໂຊດ', '', '1988-02-24', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056024282', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຮ່', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101974', 'VT3746', 'ທ່ານ ບຸນແລມ ແສງສຸລິນ', '', '1986-03-04', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059969019', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101975', 'VT3740', 'ທ່ານ ອິນຄຳ ສີບຸນທັນ', '', '1986-05-03', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055119559', 'ໂສດ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101976', 'VT3742', 'ທ່ານ ເກດມະນີ ວໍລະສານ', '', '1989-01-15', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058248277', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງບອງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101977', 'VT3741', 'ທ່ານນາງ ນິດາວັນ ລໍລອນສີ', '', '1991-12-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056996676', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວີໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101978', 'VT3738', 'ທ່ານ ໜູເພັດ ມັດສິມມາ', '', '1992-01-17', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059233300', 'ແຕ່ງງານ', '', '', '', '', '', 'ເພຍວັດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101979', 'VT3739', 'ທ່ານ ຢາງທໍ່ ເຈີປ່າວທ່າວ', '', '1990-06-01', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055571773', 'ໂສດ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101980', 'VT3938', 'ທ່ານ ລາດຊະພົນ ໄຊພຣະລາດ', '', '1986-10-23', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056665330', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101981', 'VT3751', 'ທ່ານນາງ ສຸກສາຄອນ ທິສານະກອນ', '', '1991-11-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052514199', 'ແຕ່ງງານ', '', '', '', '', '', 'ອີ່ໄລເໜືອ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101982', 'VT3743', 'ທ່ານນາງ ໄໝຊີຢ່າງ ຢ່າງລືໄຊ', '', '1991-06-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059783939', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101983', 'VT3750', 'ທ່ານ ຈັນທິເດດ ແກ້ວວິໄລ', '', '1987-11-09', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056006181', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101984', 'VT3747', 'ທ່ານນາງ ສີບັງອອນ ສຸນາເຄນ', '', '1991-08-24', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054546673', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101985', 'VT3745', 'ທ່ານ ຈັນທາ ວົງລັດສະໝີ', '', '1990-03-19', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056789686', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫ່ງາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101986', 'VT3749', 'ທ່ານນາງ ສຸກພາວັນ ບົວວົງ', '', '1991-11-29', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055551885', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101987', 'VT3744', 'ທ່ານນາງ ເພື່ອນ ແສງດາວັນ', '', '1989-06-21', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054273666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101988', 'VT3748', 'ທ່ານ ຄຳມີ ໃສທະວົງສີ', '', '1987-07-29', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056002823', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເຄັງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101989', 'VT3783', 'ທ່ານນາງ ເຂັມມະນີ ອຸດົມວິໄລ', '', '1982-06-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2057222033', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຊ້າງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101990', 'VT4161', 'ທ່ານນາງ ປະກາຍເງິນ ຫຼ້າວົງເຖິງ', '', '1991-09-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052509395', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101991', 'VT4157', 'ທ່ານ ວິຊຽນ ມະນີວົງ', '', '1988-02-03', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055914456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂຄກນ້ອຍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101992', 'VT4162', 'ທ່ານນາງ ດອກຟ້າ ກິ່ງສັກດາ', '', '1992-11-25', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055447355', 'ໂສດ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101993', 'VT4158', 'ທ່ານ ບຸນແສງ ຟົງ', '', '1991-05-06', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056789313', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101994', 'VT4159', 'ທ່ານ ສຸກກະສັນ ໂພໄຊ', '', '1989-04-07', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056551456', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101995', 'VT4163', 'ທ່ານ ວິທະຍາ ຄຸນສອນພິລາ', '', '1989-02-24', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055930910', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະນຸກ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101996', 'VT4164', 'ທ່ານ ຄຳຫຼ້າຢ່າງ ສິງຫາປັນຍາ', '', '1987-11-08', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056708961', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101997', 'VT4166', 'ທ່ານນາງ ຈັນທອນ ສຸລິນທອງ', '', '1981-06-18', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056345222', 'ຮ້າງ', '', '', '', '', '', 'ໂຊກນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101998', 'VT4168', 'ທ່ານນາງ ເລີດສະດາ ວໍລະສານ', '', '1991-06-07', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055441199', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072101999', 'VT4169', 'ທ່ານນາງ ສວນນາລີ ວຽງຄຳເກດ', '', '1991-07-25', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052226755', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102000', 'VT4165', 'ທ່ານ ຄຳໂນນ ໄຊຍະແສງ', '', '1994-01-12', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059775759', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວຫລວງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102001', 'VT4279', 'ທ່ານ ພອນປະເສີດ ຈິດຕະລາດ', '', '1994-07-13', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052896395', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102002', 'VT4270', 'ທ່ານ ພຸດທະພອນ ພົມສິດທິເດດ', '', '1993-12-08', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054545566', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102003', 'VT4278', 'ທ່ານນາງ ໜູນິດ ພົມຮັກສາ', '', '1997-10-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058662345', 'ໂສດ', '', '', '', '', '', 'ຄໍາຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102004', 'VT4272', 'ທ່ານ ສິນທະນູ ເທບພະສຸວັນ', '', '1989-02-09', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054353939', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102005', 'VT4271', 'ທ່ານ ພານຸເດດ ກຸມພົນ', '', '1993-08-11', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056838339', 'ໂສດ', '', '', '', '', '', 'ໜອງປາໃນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102006', 'VT4285', 'ທ່ານນາງ ລີ່ຕ້າ ວົງທະແສນ', '', '1995-04-03', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055521777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102007', 'VT4276', 'ທ່ານ ບຸນຄຳ ບົດສະຫວ່າງ', '', '1992-03-11', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055489689', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102008', 'VT4291', 'ທ່ານນາງ ສົມຫຍິງ ສຸລະມະນີ', '', '1994-04-02', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059763000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102009', 'VT4282', 'ທ່ານນາງ ມີລາວັນ ທິບບູນເຮືອງ', '', '1994-05-22', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056414474', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນໍ້າເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102010', 'VT4293', 'ທ່ານນາງ ຈັນມະລີ ລັດຕະນະ', '', '1991-09-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055958559', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102011', 'VT4263', 'ທ່ານນາງ ສັນຊະນີ ພຸດທະແກ່ນວົງ', '', '1993-10-08', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059800252', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102012', 'VT4292', 'ທ່ານນາງ ເມນິກາ ນ້ອຍນາລີ', '', '1993-09-02', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058122422', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງຄ້າ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102013', 'VT4268', 'ທ່ານ ສາຍຝົນ ບຸນທະພອນ', '', '1993-02-23', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2057792323', 'ໂສດ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102014', 'VT4294', 'ທ່ານນາງ ສຸພະຈິດ ມະນີວົງ', '', '1993-04-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052494949', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງໄກ່ແກ້ວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102015', 'VT4286', 'ທ່ານນາງ ຈິນຕະນາ ບຸນທະນົງສັກ', '', '1995-06-29', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056565195', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102016', 'VT4264', 'ທ່ານນາງ ບົວຈັນ ຫຼ້າຈອມສີ', '', '1995-06-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055546635', 'ໂສດ', '', '', '', '', '', 'ຜາງແຫ້ງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102017', 'VT4274', 'ທ່ານນາງ ປານີ ພັດທະນາ', '', '1991-09-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055888809', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102018', 'VT4287', 'ທ່ານ ແອັບເປີ່ນ ສີຫາບັນດິດ', '', '1993-11-25', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055349997', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102019', 'VT4277', 'ທ່ານນາງ ວິໄລທອງ ພົມມະຈັນ', '', '1995-02-01', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056992699', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102020', 'VT4284', 'ທ່ານນາງ ວອນນິສາ ພິລາວັນ', '', '1987-04-08', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055347299', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102021', 'VT4289', 'ທ່ານນາງ ສຸດທິພອນ ອິນທະວົງ', '', '1994-09-27', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055597771', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102022', 'VT4283', 'ທ່ານນາງ ທິບພະດີ ວິໄລສັກ', '', '1994-02-01', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058886618', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102023', 'VT4266', 'ທ່ານນາງ ຊາຍທອງ ວັນທະນະພອນ', '', '1993-06-20', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055415445', 'ໂສດ', '', '', '', '', '', 'ວັດຈັນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102024', 'VT4269', 'ທ່ານນາງ ຄໍາເສົາ ທິໂນລາດ', '', '1993-01-02', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2058156565', 'ໂສດ', '', '', '', '', '', 'ວັດໄຕໃຫຍ່ທ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102025', 'VT4273', 'ທ່ານນາງ ພຸດທະສອນ ສີພາບຸດດີ', '', '1992-08-12', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056573366', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102026', 'VT4275', 'ທ່ານນາງ ໄວໂຍລິນ ຈູມມະນີວົງ', '', '1995-09-14', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2052556022', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102027', 'VT4290', 'ທ່ານນາງ ສອນນະພາ ພິມພັນທະວົງ', '', '1993-05-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055488844', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102028', 'VT4434', 'ທ່ານນາງ ດາລີວັນ ສຸດທິວົງນໍລາດ', '', '1995-11-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056977739', 'ໂສດ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102029', 'VT4435', 'ທ່ານນາງ ພຸດທະວັນ ສົມສີຫາຄົມ', '', '1994-11-09', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056469969', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວ້ຍເຕີຍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102030', 'VT4436', 'ທ່ານນາງ ພອນດາວັນ ພິມມະສານ', '', '1995-01-12', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2056318866', 'ໂສດ', '', '', '', '', '', 'ຈອມເພັດໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102031', 'VT4437', 'ທ່ານນາງ ພິດໄພລິນ ເພັດໄຊຍະໂຄດ', '', '1996-08-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055566605', 'ໂສດ', '', '', '', '', '', 'ກາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102032', 'VT4439', 'ທ່ານນາງ ກຸຫຼາບ ສີບຸນເຮືອງ', '', '1990-12-13', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055851410', 'ໂສດ', '', '', '', '', '', 'ຫົວຂົວ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102033', 'VT4440', 'ທ່ານນາງ ອຳພາພອນ ວົງມາທຳ', '', '1995-08-26', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055888929', 'ໂສດ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102034', 'VT4442', 'ທ່ານນາງ ອານຸລັກ ເພັດພູໄທ', '', '1994-02-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2055115777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຂີ້ເຫຼັກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102035', 'VT4441', 'ທ່ານນາງ ສຸກສາຄອນ ແກ້ວປະເສີດ', '', '1990-02-11', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2059162659', 'ໂສດ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102036', 'VT4443', 'ທ່ານນາງ ພວງມະນີ ອິນທະແສງ', '', '1984-04-06', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054630999', 'ໂສດ', '', '', '', '', '', 'ໜອງປີງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102037', 'VT4520', 'ທ່ານນາງ ພອນສະໄໝ ຄຳວົງສາ', '', '1993-08-16', '', 'ຍິງ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054844474', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັງຊາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102038', 'VT4521', 'ທ່ານ ສັກດາວົງ ຈັນທະວົງ', '', '1993-09-23', '', 'ຊາຍ', 26, '', 'ບໍລິການລູກຄ້າທົ່ວໄປ', '2054845656', 'ໂສດ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102039', 'VT2421', 'ທ່ານ ທຳມະລັດ ວົງພັກດີ', '', '1984-09-02', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500918', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102040', 'VT1351', 'ທ່ານ ສີນະຄອນ ພິມມະຈັກ', '', '1975-12-18', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500809', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102041', 'VT1721', 'ທ່ານ ສີປະເສີດ ພິລາວົງ', '', '1975-02-18', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055647579', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102042', 'VT1750', 'ທ່ານ ພອນແກ້ວ ໄຊບົວສອນ', '', '1979-10-01', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055527788', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102043', 'VT2423', 'ທ່ານ ພຸດທະກອນ ພິລາວົງ', '', '1984-10-31', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500959', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102044', 'VT2743', 'ທ່ານ ວຽງນະຄອນ ສຸດທິຈັກ', '', '1985-05-10', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500915', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102045', 'VT2474', 'ທ່ານ ບຸນສະໜອງ ໄຊຍະພູມີ', '', '1984-11-25', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500963', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102046', 'VT1797', 'ທ່ານ ທອງຈັນ ວັນນະສິນ', '', '1977-06-09', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055600203', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້ເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102047', 'VT2700', 'ທ່ານ ເພັດສະໝອນ ພົມສຸພາ', '', '1986-06-12', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054708666', 'ໂສດ', '', '', '', '', '', 'ສະພັງເມີກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102048', 'VT2699', 'ທ່ານ ສິງຄຳ ມູນໂພໄຊ', '', '1986-07-03', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500717', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງເມີກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102049', 'VT3598', 'ທ່ານ ຈິລາຢຸດ ໃຈປິນຕາ', '', '1982-05-09', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055600529', 'ໂສດ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102050', 'VT2831', 'ທ່ານ ໄຊແກ້ວ ອິນທະກຸນ', '', '1987-12-28', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056989966', 'ໂສດ', '', '', '', '', '', 'ໜອງໄຮ່', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102051', 'VT2833', 'ທ່ານ ສັນຕິສຸກ ສີໂສພາ', '', '1985-09-13', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055955498', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102052', 'VT2744', 'ທ່ານນາງ ຈຳປາແກ້ວ ສຸວັນນະປັນຍາ', '', '1988-03-29', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055900234', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພສີ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102053', 'VT2530', 'ທ່ານນາງ ມະໄລລັກ ຈຳນຽນການ', '', '1983-06-02', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056663536', 'ໂສດ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102054', 'VT2687', 'ທ່ານນາງ ວິໄລພອນ ອິນພີມ', '', '1988-10-21', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2058242424', 'ໂສດ', '', '', '', '', '', 'ໜອງປີງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102055', 'VT2688', 'ທ່ານນາງ ພິໄລລັກ ທອງແກ້ວ', '', '1987-04-22', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054799797', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102056', 'VT2427', 'ທ່ານ ວິລະພົງ ແກ້ວພົມຫອມ', '', '1985-07-29', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055500894', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102057', 'VT2701', 'ທ່ານນາງ ສອນດາລາ ດວງປະສີດ', '', '1988-11-23', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055118153', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102058', 'VT2547', 'ທ່ານນາງ ເພັດ ລໍຫວັນຟອງ', '', '1984-05-05', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056758234', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຫວາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102059', 'VT2846', 'ທ່ານ ແກ້ວປະເສີດ ກົມມະນີວົງ', '', '1985-11-16', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054909933', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102060', 'VT2847', 'ທ່ານ ວຽງໄຊ ວິໄລວົງ', '', '1985-06-22', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055889984', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102061', 'VT2848', 'ທ່ານ ເກດລະຄອນ ຈັນທະຈອນ', '', '1985-05-15', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055529242', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102062', 'VT3115', 'ທ່ານ ຍຸດທະນາ ດວງພະຈັນ', '', '1982-05-03', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2052366144', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102063', 'VT3362', 'ທ່ານ ພູວອນ ສີວົງຄຳ', '', '1990-02-22', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056566604', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102064', 'VT3198', 'ທ່ານ ກິດຕິສັກ ພິພັກຂະວົງ', '', '1989-07-10', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054582148', 'ແຕ່ງງານ', '', '', '', '', '', 'ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102065', 'VT3199', 'ທ່ານ ສຸດທິໄຊ ເລັ່ງສະຫວັດ', '', '1987-11-25', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054102004', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102066', 'VT3297', 'ທ່ານນາງ ລັດດາວອນ ພູມມະໄລສິດ', '', '1990-05-15', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055568043', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102067', 'VT3468', 'ທ່ານ ເພັດພະຈັນ ສີລາວົງ', '', '1991-03-04', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054727999', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສ້າງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102068', 'VT2163', 'ທ່ານ ສຸລິຍາ ຈັນທະລາສີ', '', '1982-02-12', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055219277', 'ໂສດ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102069', 'VT3158', 'ທ່ານ ສັນຕິກອນ ປະຖຳມະວົງ', '', '1990-12-23', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055223398', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102070', 'VT3367', 'ທ່ານ ຕຸ້ຍ ຈະເລີນສັກ', '', '1989-08-07', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2052171717', 'ໂສດ', '', '', '', '', '', 'ໜອງບົວທອງເໜືອ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102071', 'VT3365', 'ທ່ານນາງ ສີດາວັນ ດາລາແສນ', '', '1990-10-30', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054585588', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102072', 'VT3298', 'ທ່ານນາງ ພຸດທະສອນ ເສົາວະລິດ', '', '1989-08-09', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2058852288', 'ໂສດ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102073', 'VT3366', 'ທ່ານນາງ ອາໂນລັກ ພູນວິຈິດ', '', '1991-02-01', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054789222', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102074', 'VT3359', 'ທ່ານນາງ ນ້ອຍນິວາ ພິມມະສານ', '', '1989-12-28', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056888280', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102075', 'VT3360', 'ທ່ານນາງ ບຸນມີ ລໍແຝງຍອງ', '', '1993-01-24', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054660054', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102076', 'VT3364', 'ທ່ານ ວິຊຽນ ຄຳມູນຕີ', '', '1991-01-08', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054585566', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102077', 'VT3381', 'ທ່ານ ບີເອັດ ວິລະ', '', '1990-08-28', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054446600', 'ໂສດ', '', '', '', '', '', 'ທົ່ງສັງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102078', 'VT3472', 'ທ່ານ ວັດທະນາ ຫຼວງພິໄຊ', '', '1984-12-16', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054293956', 'ໂສດ', '', '', '', '', '', 'ໜອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102079', 'VT3469', 'ທ່ານ ຄຳສິງ ໄຊຍະແສງ', '', '1987-06-26', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2058157777', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົມສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102080', 'VT3471', 'ທ່ານ ປາງທອງ ວົງພະຈັນ', '', '1982-06-16', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054845888', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102081', 'VT3470', 'ທ່ານ ຄອນສະຫວັນ ພັນທະວົງດາ', '', '1989-01-06', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054519195', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102082', 'VT3473', 'ທ່ານ ໄພມະນີ ສິດທິພອນ', '', '1987-09-16', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059066645', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102083', 'VT3613', 'ທ່ານ ສຸລິວົງ ພັນລັກ', '', '1990-04-30', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055586676', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102084', 'VT3614', 'ທ່ານ ຈິລາພອນ ໂພທິສານ', '', '1991-12-24', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055654949', 'ໂສດ', '', '', '', '', '', 'ໜອງສະໂນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102085', 'VT3616', 'ທ່ານນາງ ສຸດດາລິນ ພູມມີ', '', '1990-07-10', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2058875888', 'ໂສດ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102086', 'VT3617', 'ທ່ານ ບົວສອນ ສຸກຈັນທະລາ', '', '1991-04-14', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054755777', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102087', 'VT3735', 'ທ່ານ ສຸລິຍາ ຈະເລີນສຸກ', '', '1986-11-14', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054888276', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102088', 'VT3736', 'ທ່ານ ວັນນະສັກ ສຸຕັນນຸວົງ', '', '1988-06-23', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059998958', 'ແຕ່ງງານ', '', '', '', '', '', 'ອູບມູງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102089', 'VT3615', 'ທ່ານ ສັກດາ ລາດຊະວົງ', '', '1987-08-25', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2054548191', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂສກປ່າຫຼວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102090', 'VT3733', 'ທ່ານ ເນັ້ງລີ ກູ້ຈົງຕົວ', '', '1989-04-27', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055589992', 'ໂສດ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102091', 'VT3734', 'ທ່ານ ສຸລິອອງ ທ່າວວືຕົວຮື', '', '1983-10-05', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056556658', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102092', 'VT3737', 'ທ່ານ ໂອເລ ທັກຂິນ', '', '1991-06-20', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055559143', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102093', 'VT3732', 'ທ່ານ ບຸນປັນຄຳ ພັນດານຸວົງ', '', '1991-01-08', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056696345', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102094', 'VT3782', 'ທ່ານ ນິຍົມ ຈິດຕະວົງ', '', '1989-05-30', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059852232', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102095', 'VT3909', 'ທ່ານນາງ ອໍລະດີ ສີຈັນໂທ', '', '1991-09-17', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055589996', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102096', 'VT3922', 'ທ່ານ ສັກໄຊ ພັດວັນສີ', '', '1991-09-11', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055774499', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102097', 'VT3923', 'ທ່ານ ວັນນະຄອນ ຈັນທະລາດ', '', '1991-05-08', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059454114', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102098', 'VT3924', 'ທ່ານ ສິນທະວົງ ໄຊສົມແພງ', '', '1992-09-15', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059959191', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102099', 'VT3925', 'ທ່ານ ຄູນປະເສີດ ໃສຄຳບັນດິດ', '', '1991-09-22', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055577165', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102100', 'VT4179', 'ທ່ານ ທະນົງສັກ ພິມພະຈັນ', '', '1988-05-04', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059063335', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102101', 'VT4180', 'ທ່ານ ຄຳໄຊ ວົງຄຳແພງ', '', '1990-02-27', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056579090', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102102', 'VT4181', 'ທ່ານ ຄຳເພັດ ຈັນທະປັນຍາ', '', '1989-01-22', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055112666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102103', 'VT4182', 'ທ່ານ ກົງສະຫວັນ ຈັນທະວົງ', '', '1990-04-26', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055552604', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102104', 'VT4188', 'ທ່ານນາງ ພິກຸນແກ້ວ ພົມມະວົງສາ', '', '1994-02-02', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059150011', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102105', 'VT4183', 'ທ່ານ ຄຳກ້ອນ ສີຫານາດ', '', '1992-07-27', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059199966', 'ໂສດ', '', '', '', '', '', 'ນາທົ່ມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102106', 'VT4185', 'ທ່ານ ຊອນ ພົນອາສາ', '', '1985-05-03', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2052803388', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102107', 'VT4004', 'ທ່ານ ສຸລິຍາ ສາຍດາລາ', '', '1995-01-13', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055755711', 'ໂສດ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102108', 'VT4005', 'ທ່ານນາງ ໂມນາ ການໍລາດ', '', '1994-10-09', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056199969', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102109', 'VT4006', 'ທ່ານ ບຸນຄ້ຳ ສີວົງໄຊ', '', '1995-11-08', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055777979', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102110', 'VT4007', 'ທ່ານ ສີວິໄລ ອິນທະວົງ', '', '1989-08-05', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059502882', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍແດນເມືອງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102111', 'VT4008', 'ທ່ານ ອາທອນ ຫຼວງອາໄພ', '', '1981-08-02', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2059929783', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102112', 'VT4319', 'ທ່ານ ຈັນຝາຍ ອິນທະວີໄຊ', '', '1993-05-14', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2056665678', 'ໂສດ', '', '', '', '', '', 'ນາແຄ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102113', 'VT4323', 'ທ່ານ ວົງສຸດາ ດວງພະຈັນ', '', '1993-02-06', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055184006', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102114', 'VT4321', 'ທ່ານ ມອນຄໍາ ນໍລະສານ', '', '1984-09-19', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2055977717', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາມອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102115', 'VT4478', 'ທ່ານ ທອງສະຫວັນ ວິໄລວົງ', '', '1993-11-05', '', 'ຊາຍ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2058089999', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102116', 'VT4479', 'ທ່ານນາງ ສຸກສະໄໝ ແກ້ວວິໄຊ', '', '1994-04-08', '', 'ຍິງ', 26, '', 'ຄວບຄຸມການບໍລິການ', '2057789988', 'ແຕ່ງງານ', '', '', '', '', '', 'ສ້າງເຫີວຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102117', 'VT0461', 'ທ່ານ ຄຳແພງ ພີມພັນທະວົງ', '', '1964-11-07', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055622613', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102118', 'VT0895', 'ທ່ານ ຈັນທະສອນ ບູລົມ', '', '1978-07-03', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055590191', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102119', 'VT1294', 'ທ່ານ ວີຄຳ ເລືອງວັນໄຊ', '', '1974-09-09', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2056244244', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ນາງົວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102120', 'VT2023', 'ທ່ານ ສຸລິສັກ ບັນດາວົງ', '', '1965-03-31', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055538384', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102121', 'VT1047', 'ທ່ານ ວິໄຊ ວິລະວົງ', '', '1971-02-10', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055608023', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102122', 'VT1072', 'ທ່ານ ສີລິລາດ ຫຼວງໂຄດ', '', '1965-07-06', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055500606', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102123', 'VT0291', 'ທ່ານ ເພັດສະດາວອນ ແສນວໍລະສິນ', '', '1967-04-03', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055600247', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102124', 'VT3201', 'ທ່ານ ແສນທະວີ ພົມມະວົງ', '', '1984-09-14', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2056231177', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102125', 'VT3397', 'ທ່ານ ອວດ ພັນທະວົງ', '', '1989-09-25', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2058898899', 'ໂສດ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102126', 'VT0322', 'ທ່ານ ຄຳໃບ ແກ້ວວິໄຊ', '', '1969-11-05', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055600248', 'ແຕ່ງງານ', '', '', '', '', '', 'ສ້າງເຫວີຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102127', 'VT0430', 'ທ່ານ ພອນໄຊ ພີມມະສອນ', '', '1969-04-12', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2056966444', 'ຮ້າງ', '', '', '', '', '', 'ທາດຫລວງເຫນືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102128', 'VT1788', 'ທ່ານ ບຸນອຸ້ມ ໂງ່ນພະຈັນ', '', '1971-06-13', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2052347456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102129', 'VT2578', 'ທ່ານ ລັດມະນີ ສິດລາກອນ', '', '1980-06-10', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055311780', 'ຮ້າງ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102130', 'VT2666', 'ທ່ານ ວໍລະວຸດ ຈິດຕະມະນີ', '', '1981-01-08', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2056672456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102131', 'VT0722', 'ທ່ານ ຫັດສະໄນ ໄຊຍະແສງ', '', '1971-05-08', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055811338', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102132', 'VT2058', 'ທ່ານ ສີລິສັນຕິພາບ ໂພຄະສົມບຸນ', '', '1975-12-02', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2057053399', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102133', 'VT1879', 'ທ່ານນາງ ທິບພາພອນ ຈັນທະຈອນ', '', '1978-01-13', '', 'ຍິງ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055799009', 'ໂສດ', '', '', '', '', '', 'ວັດສົບ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102134', 'VT1958', 'ທ່ານ ສີພັນດອນ ໄຊທົງເດດ', '', '1976-04-07', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2057179988', 'ແຕ່ງງານ', '', '', '', '', '', 'ສິມມະໂນ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102135', 'VT1962', 'ທ່ານ ເຫັບມະນີ ແສງງາມ', '', '1979-03-30', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2058598956', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102136', 'VT1875', 'ທ່ານນາງ ບຸບຜາວັນ ເດດວົງພັນ', '', '1977-12-11', '', 'ຍິງ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055609279', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102137', 'VT3200', 'ທ່ານ ເຂັມເພັດ ຫອມສົມບັດ', '', '1988-03-01', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2054762777', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102138', 'VT1919', 'ທ່ານນາງ ໄຂຄຳ ແກ້ວບູນມີ', '', '1978-07-26', '', 'ຍິງ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2059559993', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102139', 'VT2875', 'ທ່ານ ຕຸ້ຍ ໄຊຍະແສງ', '', '1986-11-09', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055555715', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຂົວຫລວງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102140', 'VT3476', 'ທ່ານ ປະຖົມ ສູນດາລາ', '', '1990-09-02', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2056866555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102141', 'VT3377', 'ທ່ານ ສອນປະເສີດ ຊານໄຊຍະ', '', '1989-02-26', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055556279', 'ໂສດ', '', '', '', '', '', 'ທ່າງອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102142', 'VT4222', 'ທ່ານນາງ ວາລູນີ ພົມມະເທບ', '', '1993-08-16', '', 'ຍິງ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2052222245', 'ໂສດ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102143', 'VT4223', 'ທ່ານ ນົງລັກ ສະຫວ່າງອູໄທ', '', '1992-08-14', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2052965073', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102144', 'VT4252', 'ທ່ານ ຈິດຕະນາ ບົວສະຫວັນ', '', '1989-10-17', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055593930', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102145', 'VT4253', 'ທ່ານ ພອນສະຫວັນ ຄຳຮຸ່ງ', '', '1994-01-08', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055739395', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂຸນຕາທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102146', 'VT4485', 'ທ່ານ ໄປຢ່າງ ເນັ່ງຈີ້', '', '1985-05-05', '', 'ຊາຍ', 26, '', 'ພັດທະນາເຄືອຂ່າຍ', '2055999241', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102147', 'VT1160', 'ທ່ານ ສີຈັນ ອຸ່ນຄໍາ', '', '1973-06-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055500699', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102148', 'VT1158', 'ທ່ານ ແກ້ວວິໄລ ຈັນທະພອນ', '', '1972-05-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055590067', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້ໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102149', 'VT0600', 'ທ່ານ ອານັນ ສຸລິຍະນັນ', '', '1968-01-22', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055500566', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102150', 'VT1524', 'ທ່ານ ສີ ວົງພະຈັນ', '', '1968-08-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055590319', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102151', 'VT1009', 'ທ່ານ ຄຳແກ້ວ ເລືອງວັນໄຊ', '', '1977-04-30', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055590634', 'ໂສດ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102152', 'VT0970', 'ທ່ານ ດາລາ ປະຖຳມະວົງ', '', '1974-02-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055898292', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຫ້າ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072102153', 'VT2025', 'ທ່ານ ລັດຕະນະ ສຸດທິວົງນໍລາດ', '', '1971-08-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055626606', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102154', 'VT1793', 'ທ່ານ ທະນົງສັກ ສີຫາລາດ', '', '1972-04-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056554888', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102155', 'VT0655', 'ທ່ານ ສາຍພອນ ຂຸນສຸວັນ', '', '1970-09-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055500541', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເຫນືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102156', 'VT1256', 'ທ່ານ ບຸນໄຊ ອິນທະວົງສາ', '', '1973-06-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055590468', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102157', 'VT0601', 'ທ່ານ ພູທອນ ວິລະວົງ', '', '1968-10-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055590330', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ບໍ່ໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102158', 'VT0782', 'ທ່ານ ອຳໄພວັນ ພິມພະໄກສອນ', '', '1970-09-30', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055030164', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102159', 'VT1804', 'ທ່ານ ທອງສຸກ ພົມພັກດີ', '', '1978-02-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055622610', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102160', 'VT1056', 'ທ່ານ ໄພທູນ ຈັນສະມຸດ', '', '1972-07-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055666662', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102161', 'VT0888', 'ທ່ານນາງ ວັນສອນ ເດດວົງພັນ', '', '1974-01-24', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059111155', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂາມງອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102162', 'VT0637', 'ທ່ານ ສຸດທະສົງ ສຸດທິຈັກ', '', '1973-08-13', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055600017', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງໝໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102163', 'VT0965', 'ທ່ານ ແກ້ວມະນີ ສີຫາລາດ', '', '1970-10-25', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055605223', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນເຫນືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102164', 'VT0494', 'ທ່ານ ຄຳປະສິດ ອາທິເດດ', '', '1964-06-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055408688', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສົມບູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102165', 'VT0964', 'ທ່ານ ສຸບັນເຫຼັກ ຈັນທະໃສ', '', '1973-06-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055600303', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102166', 'VT2024', 'ທ່ານ ຫັດແກ້ວ ແກ້ວປະເສີດ', '', '1971-10-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055622457', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102167', 'VT2252', 'ທ່ານ ຄັດຕະພົນ ແພງຄຳດີ', '', '1981-09-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059394282', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປ່າລານ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102168', 'VT2299', 'ທ່ານ ຊິກໂຕ້ ໝື່ນສຸພັນ', '', '1981-04-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055444616', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຊຽງດີ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102169', 'VT0636', 'ທ່ານ ເດືອນ ພິລາ', '', '1972-01-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055707376', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປ່າເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102170', 'VT0447', 'ທ່ານ ທະນົງສອນ ສີງຄຳພັນ', '', '1970-08-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055605217', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມແຈ້ງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102171', 'VT1660', 'ທ່ານ ຄຳຕັນ ແປນສີພະຈັນ', '', '1977-04-20', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055654893', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງປິງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102172', 'VT0774', 'ທ່ານ ວົງປະເສີດ ວັນນະສອນ', '', '1973-05-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056407668', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນນົກຂຸ້ມ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102173', 'VT1008', 'ທ່ານ ສາຍລິນ ລິດທິແສງ', '', '1976-05-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055789651', 'ແຕ່ງງານ', '', '', '', '', '', 'ຝ່າຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102174', 'VT1963', 'ທ່ານ ສະດາເພັດ ເດດສະດາຈັນ', '', '1979-02-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059428251', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102175', 'VT1651', 'ທ່ານ ບຸນເພັງ ແຄນກອງ', '', '1966-01-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055170040', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໜອງທາ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102176', 'VT2196', 'ທ່ານ ວິລະພົນ ສະເດັດຕັນ', '', '1974-10-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055402897', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102177', 'VT1959', 'ທ່ານ ຈັນທະກອນ ແກ້ວມະນີວົງ', '', '1975-11-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055649150', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102178', 'VT1799', 'ທ່ານ ດາວອນ ຊູຕັນນຸວົງ', '', '1969-05-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055615034', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ສີບຸນເຮືອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102179', 'VT0325', 'ທ່ານ ທອງວັນ ວົງພະຈັນ', '', '1966-12-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054787773', 'ໂສດ', '', '', '', '', '', 'ບ້ານ ທາດຫລວງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102180', 'VT1844', 'ທ່ານ ຈັນທະລາ ຫຼວງອາໄພ', '', '1974-03-30', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055610338', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102181', 'VT2556', 'ທ່ານ ກິໂຕ ຊື່ນພັນ', '', '1986-07-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056008600', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102182', 'VT1796', 'ທ່ານ ຈັນສຸລິຍາ ຈຳປາມະນີ', '', '1979-09-27', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054346159', 'ແຕ່ງງານ', '', '', '', '', '', 'ປັກແຮັດ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102183', 'VT2454', 'ທ່ານ ສີສຸວັນ ໄຊຍະແສງ', '', '1984-10-25', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055022207', 'ໂສດ', '', '', '', '', '', 'ທາດຂາວ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102184', 'VT1961', 'ທ່ານ ສົມບຸນ ສຸລະມະນີ', '', '1972-04-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055992371', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຊັບ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102185', 'VT1805', 'ທ່ານ ສຸລິນທອງ ມອນໄຊຍະວົງ', '', '1980-01-31', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055855444', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102186', 'VT2005', 'ທ່ານ ລຳທອງ ແກ້ວອຸທາ', '', '1980-10-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055796601', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102187', 'VT2006', 'ທ່ານ ສຸກັນ ເພັດທະວົງໄຊ', '', '1965-10-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055659676', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102188', 'VT1960', 'ທ່ານ ພັດທະນາ ບົວຄຳໂພທິລາດ', '', '1976-06-21', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056898130', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ຈະເລີນໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102189', 'VT1749', 'ທ່ານ ສຸລິເດດ ມີນ້ອຍມານີ', '', '1976-12-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055104080', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102190', 'VT2452', 'ທ່ານ ສີວິໄຊ ນາພັນທະລັກ', '', '1983-11-23', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055450456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102191', 'VT3038', 'ທ່ານ ວິໄຊ ລາວລີ', '', '1987-09-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055112707', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໂນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102192', 'VT3036', 'ທ່ານນາງ ວັນເພັງ ໝັ້ນວົງພັນ', '', '1988-12-12', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055115759', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102193', 'VT3039', 'ທ່ານ ໄພຈະເລີນ ແກ້ວກຸນນະວົງ', '', '1989-12-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055831731', 'ໂສດ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102194', 'VT3035', 'ທ່ານນາງ ຈຸລາພອນ ຂັນທະວົງ', '', '1989-10-25', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058655866', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102195', 'VT3525', 'ທ່ານ ບຸນຕາ ເພຍເທບ', '', '1982-11-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054141477', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102196', 'VT3515', 'ທ່ານ ໂສພາ ສູນດາລາ', '', '1972-04-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059546462', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້ເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102197', 'VT3550', 'ທ່ານ ຫັດສະຈັນ ບຸນຍາວົງ', '', '1978-12-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056912780', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້ເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102198', 'VT3523', 'ທ່ານ ເທບສະກຸນ ສົມສະກຸນ', '', '1991-01-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054937777', 'ໂສດ', '', '', '', '', '', 'ໂພນຕ້ອງຈອມມະນີິ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102199', 'VT3077', 'ທ່ານ ດວງເດືອນ ວ່າງຕົ່ງເຢ້', '', '1981-10-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055169155', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102200', 'VT3078', 'ທ່ານ ວັນນະລາດ ເພຍເທບ', '', '1973-09-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055007788', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102201', 'VT3079', 'ທ່ານ ພຸດທະສອນ ວິລະວົງ', '', '1969-01-24', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055611636', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102202', 'VT3475', 'ທ່ານ ຊອມທອງ ໜຳທະພັນ', '', '1988-06-20', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056905455', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດາ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102203', 'VT3477', 'ທ່ານ ແກ້ວກັນຍາ ວົງໄຊ', '', '1981-04-18', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056715588', 'ແຕ່ງງານ', '', '', '', '', '', 'ເກົ້າລ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102204', 'VT3548', 'ທ່ານ ສຸກນິລັນດອນ ສີພັນທອງ', '', '1991-11-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054333856', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102205', 'VT3547', 'ທ່ານ ອາລິດ ສຸລິຍະນັນ', '', '1995-07-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059975516', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102206', 'VT3509', 'ທ່ານ ສອນນະລິນ ຫຼວງລາດ', '', '1992-05-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054306611', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງປິງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102207', 'VT3511', 'ທ່ານ ຄຳສິງ ສີປະເສີດ', '', '1974-06-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056336675', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102208', 'VT3567', 'ທ່ານ ແສງສຸລິຍາ ມອນໄຊຍະວົງ', '', '1986-06-29', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056529178', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102209', 'VT3584', 'ທ່ານ ລັດສະໝີ ແກ້ວອາໄພ', '', '1988-04-23', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056785132', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102210', 'VT3585', 'ທ່ານ ວິລະວອນ ນວນຜາລີ', '', '1990-02-23', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058605959', 'ໂສດ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102211', 'VT3586', 'ທ່ານ ອານຸສັກ ນັນທະວົງສາ', '', '1986-02-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058534932', 'ໂສດ', '', '', '', '', '', 'ບຶງຂະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102212', 'VT3587', 'ທ່ານ ສຸກສະຫວັດ ສີຟອງພາມາ', '', '1991-04-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058555703', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102213', 'VT3588', 'ທ່ານ ສິດທິສັກ ມະນີວົງ', '', '1988-09-17', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056575529', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102214', 'VT3589', 'ທ່ານ ເປມ ຄຳພະວົງ', '', '1990-09-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059655466', 'ໂສດ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102215', 'VT3682', 'ທ່ານ ບົວລິວອນ ມີໄຊພົນ', '', '1985-11-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055755855', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວາດໄຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102216', 'VT3694', 'ທ່ານ ວິໄຊ ວິລະວົງ', '', '1987-11-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054243399', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງຍາວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102217', 'VT3695', 'ທ່ານ ອຸໃດ ດາລາວົງ', '', '1988-11-11', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055798454', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102218', 'VT3520', 'ທ່ານ ວິລະພອນ ເພຍເທບ', '', '1992-05-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058638385', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102219', 'VT3521', 'ທ່ານ ສຸລິຍາ ແສງວົງໄຊ', '', '1987-03-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056009326', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102220', 'VT3516', 'ທ່ານ ໃບລົມພັດ ເທບບູລີ', '', '1985-02-13', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056706786', 'ແຕ່ງງານ', '', '', '', '', '', 'ພະໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102221', 'VT3526', 'ທ່ານ ບຸນສົງ ອິນດາລາ', '', '1986-04-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054911966', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102222', 'VT3517', 'ທ່ານ ສົມພາວັນ ສັນນິກອນ', '', '1985-12-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055909822', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102223', 'VT3527', 'ທ່ານ ບຸນຈັນ ຈິດທະວົງ', '', '1982-01-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058060606', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102224', 'VT3518', 'ທ່ານ ອາດິໄຊ ດາລາວົງ', '', '1987-06-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055911291', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102225', 'VT3549', 'ທ່ານ ຄຳມອນ ເພັດທະວົງໄຊ', '', '1972-05-09', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056898809', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102226', 'VT3478', 'ທ່ານ ພູວິໃສ ຫຼວງຈັນດາວົງ', '', '1987-08-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058889955', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102227', 'VT3552', 'ທ່ານ ສັງວານ ພັນທະວົງ', '', '1992-02-24', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058856812', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102228', 'VT3600', 'ທ່ານ ແອວລີ ໄຊຍະວົງ', '', '1993-08-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058533833', 'ໂສດ', '', '', '', '', '', 'ໜອງແຕ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102229', 'VT3519', 'ທ່ານ ວິລະ ພີມພາວົງ', '', '1988-05-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058871199', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ່ຽງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102230', 'VT3524', 'ທ່ານ ຄຳໝັ້ນ ແກ້ວກັນຍາ', '', '1983-03-04', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055820216', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102231', 'VT3545', 'ທ່ານ ວົງໄຊ ລາດຊະດາວົງ', '', '1977-01-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055882916', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102232', 'VT3546', 'ທ່ານ ເພັດສະໝອນ ອິນດາລາ', '', '1989-08-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058482255', 'ໂສດ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102233', 'VT3551', 'ທ່ານ ລີຊົວມົວ ໄຊວື', '', '1984-05-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054553772', 'ໂສດ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102234', 'VT3706', 'ທ່ານ ຈັນທະຈັກ ສົນທິລາດ', '', '1988-05-23', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058244483', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102235', 'VT3705', 'ທ່ານ ພຸດທະໄຊ ສົງຄາມ', '', '1985-04-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059964446', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນຕິ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102236', 'VT3707', 'ທ່ານ ສົມລວຍ ສີລະສານ', '', '1989-09-09', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054902816', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102237', 'VT3903', 'ທ່ານ ດວງມະນີ ສີສະໝຸດ', '', '1991-11-17', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058925012', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຫວາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102238', 'VT3904', 'ທ່ານ ສົມສະນຸກ ພົມມະວົງ', '', '1986-10-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056776539', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102239', 'VT3905', 'ທ່ານ ສົມພາວັນ ປະທຸມມະລາດ', '', '1989-07-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055304848', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102240', 'VT3907', 'ທ່ານ ເຢັ່ງຢ້າງ ຈາເຢີ', '', '1984-03-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056949535', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102241', 'VT3908', 'ທ່ານ ຄຳພູວຽງ ອຳພາວັນ', '', '1989-03-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059655596', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102242', 'VT3902', 'ທ່ານ ພອນປະເສີດ ຊາພັກດີ', '', '1982-08-18', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058889008', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102243', 'VT3897', 'ທ່ານ ຈັນທອນ ແສງວັນດີ', '', '1991-10-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058536000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102244', 'VT3901', 'ທ່ານ ຄຳໄພ ອິນທະສານ', '', '1993-08-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056879363', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102245', 'VT3899', 'ທ່ານ ຕິ່ງຄຳ ສາຍສຸດທາ', '', '1990-01-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058562890', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາແຄ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102246', 'VT3898', 'ທ່ານ ສະຫຼອງໄຊ ກິມະນີວົງ', '', '1988-12-22', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055926999', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102247', 'VT3896', 'ທ່ານ ທອງໄຊ ພັນທະມີໄຊ', '', '1986-09-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056738328', 'ແຕ່ງງານ', '', '', '', '', '', 'ສົ່ງເປືອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102248', 'VT3917', 'ທ່ານ ຄຳພັນ ວັນນະວົງ', '', '1979-10-24', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055820451', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102249', 'VT3918', 'ທ່ານ ສົມພານ ແປນສີພະຈັນ', '', '1983-01-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059953763', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102250', 'VT3919', 'ທ່ານນາງ ອຳຄາ ທຳມະວົງ', '', '1991-10-09', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054542221', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102251', 'VT3920', 'ທ່ານນາງ ນິພາພອນ ຊາມຸນຕີ', '', '1986-08-15', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2052556699', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102252', 'VT3916', 'ທ່ານ ກ່ຳ ຈັນທະໃສ', '', '1980-11-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055609738', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102253', 'VT3996', 'ທ່ານ ໂອເລ່ ສຸລິສັກ', '', '1991-10-25', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056777095', 'ໂສດ', '', '', '', '', '', 'ໂພນສີນວນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102254', 'VT3953', 'ທ່ານ ດວງວິໄຊ ສີຫາປັນຍາ', '', '1990-06-20', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056363363', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102255', 'VT4206', 'ທ່ານ ພອນແກ້ວ ວາງປາປໍເຍຍຕູ້', '', '1991-03-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055594619', 'ໂສດ', '', '', '', '', '', 'ໂພນແກ້ວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102256', 'VT4209', 'ທ່ານ ຄຳລອດ ຈັນສະໄໝ', '', '1990-03-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056567678', 'ໂສດ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102257', 'VT4208', 'ທ່ານ ທະວີສຸກ ລັດສິມມາ', '', '1993-10-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055537089', 'ແຕ່ງງານ', '', '', '', '', '', 'ເມືອງນ້ອຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102258', 'VT4210', 'ທ່ານ ພົນນິວັນ ອິນສີສຸລາດ', '', '1991-11-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055665282', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102259', 'VT4211', 'ທ່ານ ພັນນະລາ ຜາສະຫວັດ', '', '1991-10-16', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2052373791', 'ໂສດ', '', '', '', '', '', 'ຝາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102260', 'VT4220', 'ທ່ານນາງ ຫົງທອງ ພົມວົງໄຊ', '', '1993-02-24', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056016234', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102261', 'VT4221', 'ທ່ານ ສຸກສະໄໝ ສຸພັນທະວົງ', '', '1994-02-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059995398', 'ໂສດ', '', '', '', '', '', 'ນາຜາສຸກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102262', 'VT4384', 'ທ່ານ ວຽງໄຊ ຈັນທະວິໄລ', '', '1989-02-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055545085', 'ໂສດ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102263', 'VT4385', 'ທ່ານ ດາວນ້ອຍດວງດີ ໂກສະດາ', '', '1997-06-18', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2052326456', 'ໂສດ', '', '', '', '', '', 'ທົ່ງສັງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102264', 'VT4386', 'ທ່ານ ວິໄລບູນ ໂຄດໂຍທາ', '', '1989-12-17', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054576666', 'ໂສດ', '', '', '', '', '', 'ທາດຫຼວງໃຕ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102265', 'VT4387', 'ທ່ານ ບຸນລິດ ສານບຸນຄູນໄຊ', '', '1995-01-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055285202', 'ໂສດ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102266', 'VT4418', 'ທ່ານ ວິລະເດດ ເທບພະສຸວັນ', '', '1994-08-09', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055712380', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102267', 'VT4419', 'ທ່ານ ສະຖາພອນ ສີແສງລັດ', '', '1996-10-18', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2052266022', 'ໂສດ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102268', 'VT4421', 'ທ່ານ ພຸດທະຄອນ ຫົງວິໄລ', '', '1994-10-19', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2059466888', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເຄັງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102269', 'VT4422', 'ທ່ານ ສຸໄມຕີ ວິລະວົງ', '', '1994-08-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2057759977', 'ໂສດ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102270', 'VT4423', 'ທ່ານ ອຸທອນ ຈິດຕະກຸນ', '', '1992-11-24', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2058838858', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102271', 'VT4452', 'ທ່ານ ສິດທະກອນ ຈັນທະຜາສຸກ', '', '1994-05-04', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2055997703', 'ໂສດ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102272', 'VT4453', 'ທ່ານນາງ ທິບພະສອນ ໄຊຄຳຝັ້ນ', '', '1995-11-23', '', 'ຍິງ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2054319191', 'ໂສດ', '', '', '', '', '', 'ໜອງສ້າງທໍ່', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102273', 'VT4438', 'ທ່ານ ຖາວອນ ສອນວົງ', '', '1992-05-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການຕິດຕັ້ງ-ສ້ອມແປງ', '2056145033', 'ໂສດ', '', '', '', '', '', 'ໂພນເຄັງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102274', 'VT2223', 'ທ່ານ ສຸລິໄຊ ຈັນທະວີໄຊ', '', '1979-09-18', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055600226', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສາງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102275', 'VT2830', 'ທ່ານ ສຸລິຈັນ ແກ້ວບົວວັນ', '', '1990-08-04', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054911044', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຫວາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102276', 'VT1930', 'ທ່ານ ຄຳແດງ ເທບສົມບັດ', '', '1974-01-08', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055590766', 'ແຕ່ງງານ', '', '', '', '', '', 'ອາກາດ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102277', 'VT0830', 'ທ່ານ ຂັນແກ້ວ ພານຸວົງ', '', '1974-05-25', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055799959', 'ໂສດ', '', '', '', '', '', 'ຫັດສະດີໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102278', 'VT0785', 'ທ່ານນາງ ອໍລະພິມ ສິດທິພັນທອງ', '', '1974-01-01', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055717656', 'ແຕ່ງງານ', '', '', '', '', '', 'ບໍ່ໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102279', 'VT2819', 'ທ່ານ ສິດທິສັກ ປິຍະຊາດ', '', '1975-02-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055500985', 'ໂສດ', '', '', '', '', '', 'ດົງປະແລບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102280', 'VT2098', 'ທ່ານ ກູ້ທ່າວ ຊົງເຢີ', '', '1980-06-20', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055701848', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102281', 'VT2273', 'ທ່ານນາງ ມອນມະນີ ວາລີນທະລາສັກ', '', '1982-06-10', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055424642', 'ໂສດ', '', '', '', '', '', 'ໜອງບົວທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102282', 'VT1736', 'ທ່ານນາງ ດາວັນ ພັນທະວົງ', '', '1975-07-05', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055600020', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102283', 'VT2711', 'ທ່ານ ພຸດທະໜອມ ວັນລາວົງ', '', '1983-08-31', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055687676', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102284', 'VT2693', 'ທ່ານ ເລນູ ສິລິຈັນທອນ', '', '1989-02-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055494455', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102285', 'VT1957', 'ທ່ານ ບົວສະຫວັນ ພິມມະສອນ', '', '1970-07-27', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055695353', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຊ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102286', 'VT1916', 'ທ່ານນາງ ສີລາພອນ ໄຊຍະກອນ', '', '1983-04-17', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055679620', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102287', 'VT1973', 'ທ່ານ ບຸນປັນ ບຸດທະວົງ', '', '1976-04-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054903666', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102288', 'VT2455', 'ທ່ານ ທຳມະຈິດ ດວງດີ', '', '1986-04-19', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055011137', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102289', 'VT2874', 'ທ່ານ ມະລັດຕະສະຫວັນ ສິດທິປັນຍາ', '', '1987-09-16', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2057878788', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງນາໂຊກໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102290', 'VT1977', 'ທ່ານນາງ ພູວຽງ ເທບພະວົງສາ', '', '1972-07-23', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055404351', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສາລາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102291', 'VT3239', 'ທ່ານ ສຸລິພອນ ໄຊຍະສິດ', '', '1990-04-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056250005', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102292', 'VT2539', 'ທ່ານນາງ ພັນທະມາລີ ວົງສາມາດ', '', '1984-04-25', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054908855', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102293', 'VT2709', 'ທ່ານ ສັນທະສິດ ສຸລິຍະມາດ', '', '1987-05-10', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054999266', 'ໂສດ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102294', 'VT2757', 'ທ່ານນາງ ໂມລີນ້າ ທຳມະເທໂວ', '', '1987-01-30', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055904040', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102295', 'VT2859', 'ທ່ານນາງ ຄຳໃບ ທອງປະເສີດ', '', '1987-12-26', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055308786', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງຄຳຊ້າງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102296', 'VT2655', 'ທ່ານນາງ ດວງປີ ດວງໂພສີ', '', '1984-06-24', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058399939', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຫ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102297', 'VT2599', 'ທ່ານ ໄຊນະຄອນວຽງ ວົງດາລາແສນ', '', '1986-10-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056623344', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102298', 'VT2099', 'ທ່ານ ຢ່າງບີ ຢ່າງລືໄຊ', '', '1976-12-26', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056800081', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສ້ຽວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102299', 'VT0804', 'ທ່ານນາງ ມະນີວັນ ສີວິໄລ', '', '1975-11-15', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055111110', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊ້າງຄູ້', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102300', 'VT2653', 'ທ່ານນາງ ຄິດສະຫງວນ ສີສຸລິດ', '', '1986-09-08', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056858668', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາເໜືອ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102301', 'VT1907', 'ທ່ານນາງ ນິລະມົນ ອິນລາວົງສາ', '', '1983-08-21', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055112298', 'ໂສດ', '', '', '', '', '', 'ເມືອງວາທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102302', 'VT0602', 'ທ່ານນາງ ເພັດສະໄໝ ສີລິພົງພັນ', '', '1971-04-02', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054801888', 'ແຕ່ງງານ', '', '', '', '', '', 'ສວນມອນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102303', 'VT2872', 'ທ່ານ ອາລຸນປະດິດ ສີບຸນນະວົງ', '', '1989-05-26', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055534939', 'ແຕ່ງງານ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102304', 'VT2873', 'ທ່ານ ສິນທະວອນ ພົມມະວົງ', '', '1988-10-18', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2052878555', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102305', 'VT3270', 'ທ່ານ ອາລີ ໄຊເກົ້າທໍ່', '', '1989-05-07', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054166059', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໝຽ້ງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102306', 'VT3271', 'ທ່ານ ສຸລິວົງ ຈັນທະສອນ', '', '1987-08-12', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055550246', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈັນສະຫວ່າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102307', 'VT3499', 'ທ່ານ ໄຊຊະນະ ອຸປັນຍາ', '', '1992-07-10', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055889705', 'ແຕ່ງງານ', '', '', '', '', '', 'ໄຊສະຫວ່າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102308', 'VT3558', 'ທ່ານ ສົມຈິດ ຍ່ອຍສາຍຄຳ', '', '1990-11-16', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055503565', 'ໂສດ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102309', 'VT3634', 'ທ່ານ ສຸລະໄຊ ປັນຍາດາ', '', '1990-11-06', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058036333', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102310', 'VT3631', 'ທ່ານ ທອງພອນ ທຳມະວົງສາ', '', '1990-05-23', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059995077', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102311', 'VT3632', 'ທ່ານ ແສງພະຈັນ ສຸວັນດີ', '', '1988-11-01', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059567312', 'ໂສດ', '', '', '', '', '', 'ໜອງພະຍາ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102312', 'VT3626', 'ທ່ານ ສຸກອານັນ ວັນນະລາດ', '', '1991-11-26', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054646777', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102313', 'VT3629', 'ທ່ານ ໄມນາງ ອຸບປະພັນ', '', '1992-09-13', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054489222', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມເພັດເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102314', 'VT2852', 'ທ່ານ ອຸດອນ ຣາຊາສົມບັດ', '', '1984-10-11', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055006622', 'ແຕ່ງງານ', '', '', '', '', '', 'ພັນໝັ້ນ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102315', 'VT3395', 'ທ່ານ ຈັນທະວົງ ພົມພັກດີ', '', '1990-01-28', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056769679', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102316', 'VT3627', 'ທ່ານ ຈິດຂັນຕິ ອິນທະສອນ', '', '1989-02-01', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058530555', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102317', 'VT3628', 'ທ່ານ ອຸ່ນຄຳ ວົງສີປະສົມ', '', '1990-02-05', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054373838', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102318', 'VT3633', 'ທ່ານ ເຕ່ ສຸພັນທອນ', '', '1991-12-31', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055536553', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102319', 'VT3934', 'ທ່ານນາງ ເພັດດາລາ ເທບພະວົງ', '', '1993-01-07', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055555708', 'ໂສດ', '', '', '', '', '', 'ດົງສ້າງຫີນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102320', 'VT3995', 'ທ່ານ ສຸພາສິດ ອົບພະລາວົງ', '', '1989-07-11', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059454248', 'ໂສດ', '', '', '', '', '', 'ໜອງດ້ວງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102321', 'VT3994', 'ທ່ານ ແສງພະຈັນ ຈັນທະວົງ', '', '1992-05-13', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059975990', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102322', 'VT3993', 'ທ່ານ ຄະນິດສອນ ຂຸນພານິດ', '', '1992-06-29', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055533687', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຳເຄ້', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102323', 'VT3992', 'ທ່ານ ຈັນຄູນ ພົມມະຈິດ', '', '1988-11-14', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058833711', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປາແຫຼບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102324', 'VT3991', 'ທ່ານນາງ ລຳມອນ ຈັນສິລິລາດ', '', '1991-12-25', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058659992', 'ໂສດ', '', '', '', '', '', 'ໂນນບໍ່ແກ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102325', 'VT3990', 'ທ່ານ ສະຖາພອນ ແກ້ວອ່ອນຕາ', '', '1991-11-10', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2056785418', 'ໂສດ', '', '', '', '', '', 'ໂນນສະອາດ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102326', 'VT3989', 'ທ່ານ ກົງໃຈ ສຸວັນດີ', '', '1991-04-24', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055550214', 'ໂສດ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102327', 'VT4039', 'ທ່ານ ອານຸສອນ ທັກນຸວົງ', '', '1990-09-23', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058377775', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງເມຶກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102328', 'VT4197', 'ທ່ານ ແສງໄຊ ພັນລັກ', '', '1993-12-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059844559', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102329', 'VT4198', 'ທ່ານນາງ ວັນມາລີ ອິນສີຊຽງໃໝ່', '', '1992-06-23', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2058228244', 'ໂສດ', '', '', '', '', '', 'ວັດໄຕໃຫຍ່ທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102330', 'VT4199', 'ທ່ານ ສົງການ ຜັນພາວັນ', '', '1986-04-15', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2059991415', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102331', 'VT4200', 'ທ່ານ ສີສະຫວາດ ບຸນກາລີ', '', '1988-05-01', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055744955', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຂີ້ເຫຼັກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102332', 'VT4480', 'ທ່ານ ພອນສະຫວັນ ແກ້ວພຸດທະວົງ', '', '1994-06-07', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055433345', 'ໂສດ', '', '', '', '', '', 'ໂຊກຄຳ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102333', 'VT4499', 'ທ່ານ ພົງສະຫວັດ ລັດທະວັນ', '', '1993-10-22', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055110333', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102334', 'VT4498', 'ທ່ານນາງ ຈິນດາວອນ ບຸນຍະວົງ', '', '1994-11-23', '', 'ຍິງ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2054545345', 'ໂສດ', '', '', '', '', '', 'ທ່າງ່ອນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102335', 'VT4497', 'ທ່ານ ດວງປະເສີດ ສົມພະຄູນ', '', '1990-03-22', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055688526', 'ໂສດ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102336', 'VT4496', 'ທ່ານ ພອນປະເສີດ ວິລະວົງ', '', '1995-11-19', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2055551911', 'ໂສດ', '', '', '', '', '', 'ບໍ່ໂອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102337', 'VT4500', 'ທ່ານ ປາລິສັກ ທຸມມະບຸດ', '', '1994-09-23', '', 'ຊາຍ', 26, '', 'ໂທລະສັບຕັ້ງໂຕະ ແລະ ອິນເຕີເນັດ', '2052431060', 'ໂສດ', '', '', '', '', '', 'ຝາຍ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102338', 'VT2140', 'ທ່ານ ເນຕິ ມີສະຫວັດ', '', '1978-08-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055590487', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);
INSERT INTO `employee` (`barcode`, `emp_id`, `emp_name`, `surname`, `dob`, `age`, `gender`, `com_id`, `branch`, `department`, `tel`, `family_stt`, `nation`, `ethnic`, `religion`, `job`, `house_no`, `village`, `district`, `province`, `emp_name_en`, `surname_en`, `national_en`, `religion_en`, `occupation_en`, `village_en`, `district_en`, `province_en`, `current_address`, `road`, `email`, `employee_log`) VALUES
('204072102339', 'VT0364', 'ທ່ານ ສຸກສະຫວັນ ສຸລິຍະນັນ', '', '1966-04-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055500649', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102340', 'VT0787', 'ທ່ານ ວັນໄຊ ສິນບັນດິດ', '', '1969-06-15', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055500639', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວັນໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102341', 'VT1127', 'ທ່ານ ຄຳ ພົມມະວົງ', '', '1976-04-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059566688', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102342', 'VT2271', 'ທ່ານ ແສງອານັນ ພິໄລສານ', '', '1985-05-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055707336', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງເມິກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102343', 'VT1747', 'ທ່ານ ໄຊສົມພອນ ເລືອງຄຳພັນ', '', '1978-07-04', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054237878', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102344', 'VT2608', 'ທ່ານ ແຮັບປີ້ ສະນຸກຜົນ', '', '1986-01-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055553575', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102345', 'VT1871', 'ທ່ານ ພອນທະລົມ ວັນນະສັກ', '', '1974-03-21', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055500705', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102346', 'VT1809', 'ທ່ານ ໂງ່ນຄຳ ໂຄດປັນຍາ', '', '1978-09-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055600196', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102347', 'VT2037', 'ທ່ານ ມົງກູ້ເຮີ ເລຍຕູ້ເຢີ', '', '1973-06-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055601045', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາເລົ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102348', 'VT1500', 'ທ່ານນາງ ໄພວັນ ສໍສຳພັນ', '', '1976-06-22', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054663656', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102349', 'VT1971', 'ທ່ານ ບຸນຖອງ ສິດລາກອນ', '', '1979-08-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055695252', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102350', 'VT1250', 'ທ່ານ ສິງລາ ວີມະນີ', '', '1969-05-17', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056638999', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102351', 'VT1754', 'ທ່ານ ສຸລິຍາ ແກ້ວມີສີ', '', '1973-06-16', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055606939', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໝ້ຽງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102352', 'VT0925', 'ທ່ານນາງ ຄຳມອນ ສິງປະທູນທັດ', '', '1968-07-02', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055424111', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນກອຍ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102353', 'VT2272', 'ທ່ານນາງ ສີສຸພັນ ທຳມະທິໂນ', '', '1982-10-22', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055669888', 'ໂສດ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102354', 'VT2607', 'ທ່ານ ພູເຂົາຄຳ ພັນດານຸວົງ', '', '1986-09-11', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056665533', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102355', 'VT0971', 'ທ່ານ ວິສຸພັນ ພຸດທະຈັກ', '', '1975-10-21', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055600198', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102356', 'VT1872', 'ທ່ານນາງ ອ້ອມອາລີ ໄຊຫົມຜົນ', '', '1979-09-08', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055614765', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພັງເມິກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102357', 'VT1801', 'ທ່ານ ສຳມະນາ ບູນໄຊຍະພວຍ', '', '1975-04-03', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055659661', 'ຮ້າງ', '', '', '', '', '', 'ນາຊາຍທອງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102358', 'VT0922', 'ທ່ານ ໜາມເພັດ ອິນທະປັນຍາ', '', '1973-06-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055408378', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນດູ່', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102359', 'VT2217', 'ທ່ານ ນິລັນ ຄຸນພະທຳ', '', '1981-02-13', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055666596', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102360', 'VT1974', 'ທ່ານ ອຳໄພວັນ ວົງສະຫວັນ', '', '1973-09-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2057790505', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງດາ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102361', 'VT1007', 'ທ່ານ ນ່ານ ດີມະນີວົງ', '', '1972-01-20', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055627505', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຄໍ້ເໜືອ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102362', 'VT0962', 'ທ່ານນາງ ສີສຸພອນ ສິງສະຫວ່າງ', '', '1976-11-23', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059665599', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງສະຫວາດ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102363', 'VT2076', 'ທ່ານ ສຸກອຸໄທ ໄຊຍະລາດ', '', '1981-05-12', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055419687', 'ແຕ່ງງານ', '', '', '', '', '', 'ແສງສະຫວ່າງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102364', 'VT1337', 'ທ່ານ ຄອນຈັນ ໄຊຍະທຳ', '', '1970-03-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056789733', 'ແຕ່ງງານ', '', '', '', '', '', 'ເວີນຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102365', 'VT1928', 'ທ່ານ ເອລາວັນ ໄຊຍະວົງ', '', '1977-12-11', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056363777', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102366', 'VT3504', 'ທ່ານ ຈັນທະວີໄຊ ວັງວິລະຈິດ', '', '1982-12-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054346555', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102367', 'VT3335', 'ທ່ານ ໄກ່ເພັດ ຄຸນນະວົງສາ', '', '1989-10-13', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054165613', 'ໂສດ', '', '', '', '', '', 'ທົ່ງປົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102368', 'VT3404', 'ທ່ານ ຊ້າງ ແຜນດິນໄຫວ', '', '1991-09-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054040777', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຫ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102369', 'VT3400', 'ທ່ານ ອິ່ງ ພົມວິໄຊ', '', '1987-11-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059595519', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102370', 'VT3501', 'ທ່ານ ພຸດທະວັນ ພັນທະລາດ', '', '1988-12-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056644123', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນຂີ້ເຫລັກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102371', 'VT3696', 'ທ່ານ ຄອນສະຫວັນ ພັນທະລີ', '', '1983-12-21', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055499955', 'ແຕ່ງງານ', '', '', '', '', '', 'ອຸດົມຜົນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102372', 'VT2100', 'ທ່ານ ຈັນທະສອນ ວັນວິໄລ', '', '1981-04-20', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055649292', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາໄຫ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102373', 'VT2286', 'ທ່ານ ວຽງຄຳ ມະຫາໄຊ', '', '1980-03-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055407526', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102374', 'VT2278', 'ທ່ານນາງ ວຽງພອນ ບຸນທະດີ', '', '1982-04-06', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054108177', 'ໝ້າຍ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102375', 'VT2095', 'ທ່ານ ສີລາວົງ ວົງວິໄຊ', '', '1980-06-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054257555', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102376', 'VT2871', 'ທ່ານ ສະຖາພອນ ສູນດາລາ', '', '1989-07-28', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2058597776', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວັນເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102377', 'VT2432', 'ທ່ານ ວັນນະ​ແສງ ນາຄະ​ດີ', '', '1981-06-17', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059956110', 'ໂສດ', '', '', '', '', '', 'ໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102378', 'VT1527', 'ທ່ານ ວັນນະກອນ ພອນປະເສີດ', '', '1974-06-30', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055707271', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂຸນ​ຕາ​ທ່າ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102379', 'VT3237', 'ທ່ານ ຈັນຫອມ ສີສູນທອນ', '', '1982-11-25', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055533392', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ້ານ ປາກທ້າງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102380', 'VT3238', 'ທ່ານ ບຸນທະວີ ສຸວັນນະກາສີ', '', '1987-03-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054649445', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງບອງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102381', 'VT3384', 'ທ່ານ ສຸລະສັກ ວົງແສງເດືອນ', '', '1988-04-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055499945', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102382', 'VT3267', 'ທ່ານ ຄອນສະຫວັນ ພິມມະສານ', '', '1985-09-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055900505', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແຕ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102383', 'VT3557', 'ທ່ານ ສຸລິຍາ ສີໂຍທາຮັກ', '', '1990-03-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054828999', 'ໂສດ', '', '', '', '', '', 'ນ້ຳກ້ຽງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102384', 'VT3559', 'ທ່ານ ດາວສະຫວາດ ເດດພົມມະເທດ', '', '1987-08-22', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2058454040', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102385', 'VT3502', 'ທ່ານ ຄານທະສອນ ສີສຸວັນ', '', '1990-11-06', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055556875', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວທອງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102386', 'VT3635', 'ທ່ານ ການາ ອຸໄທທິດ', '', '1989-01-22', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054641666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບຶກ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102387', 'VT3791', 'ທ່ານ ທອງໄຊ ສິມມະວົງ', '', '1990-03-09', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2052299998', 'ໂສດ', '', '', '', '', '', 'ໜອງແຕ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102388', 'VT3853', 'ທ່ານນາງ ໂສພາພອນ ວົງພູທອນ', '', '1990-10-24', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054245666', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂສກປ່າຫຼວງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102389', 'VT3854', 'ທ່ານ ຕຸ່ນ ໄຊວົງສາ', '', '1990-12-27', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054455774', 'ໂສດ', '', '', '', '', '', 'ໂນນບໍ່ແກ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102390', 'VT3849', 'ທ່ານ ສົມກຽດ ຈັນທະວົງສາ', '', '1987-05-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054499848', 'ໂສດ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102391', 'VT3856', 'ທ່ານນາງ ວິໄລພອນ ແກ້ວຫານາມ', '', '1993-01-03', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054251666', 'ໂສດ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102392', 'VT3855', 'ທ່ານ ອາລຸນສະຫວັນ ແກ້ວວິໄຊ', '', '1991-07-23', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2058987870', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102393', 'VT4193', 'ທ່ານ ຄຳສິງ ຄຳພູວົງ', '', '1991-04-01', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2052501199', 'ແຕ່ງງານ', '', '', '', '', '', 'ດ່ານຊ້າງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102394', 'VT4194', 'ທ່ານ ນິລັນດອນ ສູນດາລາ', '', '1992-08-07', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2058283847', 'ໂສດ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102395', 'VT3465', 'ທ່ານ ບຸນມາ ໄຊຍາພີມ', '', '1989-08-13', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055558748', 'ໂສດ', '', '', '', '', '', 'ສີບຸນເຮືອງທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102396', 'VT3851', 'ທ່ານນາງ ສຸດາວັນ ເພັງພົມມະຈັນ', '', '1991-09-12', '', 'ຍິງ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2054212111', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທາມ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102397', 'VT4212', 'ທ່ານ ເຕົາ ຄຳມູນຕີ', '', '1990-04-05', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055861609', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງແວງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102398', 'VT4213', 'ທ່ານ ສິນນະຄອນ ໂຄດປັນຍາ', '', '1994-04-25', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055230022', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງແກ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102399', 'VT4360', 'ທ່ານ ວີໄຊ ສຸກອິນທະລາດ', '', '1989-11-18', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056789269', 'ໂສດ', '', '', '', '', '', 'ພະຂາວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102400', 'VT4361', 'ທ່ານ ສິດທິເດດ ຂັນທະວົງ', '', '1994-09-02', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059643366', 'ໂສດ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102401', 'VT4362', 'ທ່ານ ບຸນຄົງ ທອງແສງຈິດ', '', '1994-06-14', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2052565257', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີບຸນເຮືອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102402', 'VT4363', 'ທ່ານ ສອນໄຊ ຫຼວງຄົມ', '', '1992-08-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055578332', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານທອງໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102403', 'VT4364', 'ທ່ານ ພຽນແສງ ພັນວິໄລ', '', '1994-03-10', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2059222314', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102404', 'VT4377', 'ທ່ານ ທິນນະກອນ ບຸນຍະເລດ', '', '1994-04-16', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2055268444', 'ໂສດ', '', '', '', '', '', 'ໂນນສະຫງ່າ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102405', 'VT4381', 'ທ່ານ ພອນສະຫວັນ ພາສຸວັນ', '', '1995-05-08', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2052823888', 'ໂສດ', '', '', '', '', '', 'ວັດນາກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102406', 'VT4382', 'ທ່ານ ບູນທອນ ບຸດທະວົງ', '', '1983-08-09', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2058685565', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102407', 'VT4383', 'ທ່ານ ສອນປະເສີດ ສີບຸນເຮືອງ', '', '1996-08-26', '', 'ຊາຍ', 26, '', 'ຫ້ອງການເຕັກນິກ', '2056788800', 'ໂສດ', '', '', '', '', '', 'ສີດຳດວນ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102408', 'XB2640', 'ທ່ານ ເພັດຕະນາ ອິນທະວົງ', '', '1968-02-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055590599', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102409', 'XB1411', 'ທ່ານ ຄຳໄຜ່ ຫຼວງສີດາ', '', '1968-06-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055590713', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102410', 'XB1156', 'ທ່ານ ເລັງທ່າວ ເຈີຈິງ', '', '1974-06-08', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055500938', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102411', 'XB1046', 'ທ່ານ ສົມວັນດີ ໝາວເຢ່ງ', '', '1969-10-16', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055567779', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102412', 'XB0966', 'ທ່ານ ຊົ່ງກາວ ໄຊຮົ່ວຕົ່ງເລັ່ງ', '', '1970-07-05', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055600149', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ລ້ອງຊານ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102413', 'XB3231', 'ທ່ານນາງ ນິໄລວັນ ປັນຍາທອງ', '', '1989-12-03', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055559925', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄອນວັດ', 'ລ້ອງຊານ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102414', 'XB1992', 'ທ່ານ ສົມຫວັງ ອິນທະວົງ', '', '1970-06-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055308763', 'ແຕ່ງງານ', '', '', '', '', '', 'ນ້ຳຄຽນ', 'ຮົ່ມ', 'ວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102415', 'XB3726', 'ທ່ານນາງ ບຸນຖົມ ແສງພູມີວົງ', '', '1987-12-05', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2059661999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102416', 'XB3728', 'ທ່ານນາງ ພິມພອນ ຊາວົງໄຊ', '', '1987-04-06', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2054008074', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102417', 'XB3729', 'ທ່ານ ລີປ່າວ ຢ່າງ', '', '1988-05-29', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055019557', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102418', 'XB3730', 'ທ່ານ ຢົງຢ່າງ ຈົງຕູ້', '', '1983-04-23', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055566732', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102419', 'XB3831', 'ທ່ານ ອາຫຼົງລໍ່ ໄຟດ່າ', '', '1988-04-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055516002', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102420', 'XB3832', 'ທ່ານ ຊຽງ ສອນດາລາ', '', '1989-01-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2058608385', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102421', 'XB3833', 'ທ່ານ ຄອນປະເສີດ ພົມມະຈັນ', '', '1990-08-30', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055516646', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຳຄອນ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102422', 'XB3875', 'ທ່ານ ເຢັ່ງວ່າງ ຝາເທີ', '', '1992-08-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055532261', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102423', 'XB4060', 'ທ່ານ ສຸລິກອນ ຈິນດາມະນີ', '', '1986-01-21', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055991313', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102424', 'XB3900', 'ທ່ານ ຕົວຢ່າງ ພູມສະຫັວນ', '', '1991-02-28', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055329600', 'ແຕ່ງງານ', '', '', '', '', '', 'ອອມ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102425', 'XB4061', 'ທ່ານ ສີສະຫວາດ ພະໄຊສີສຸນົນ', '', '1992-01-06', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2058666610', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີວິໄລ', 'ປາກຊັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102426', 'XB4062', 'ທ່ານນາງ ນິດ ໄຊປັນຍາ', '', '1992-12-13', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055605445', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊົມຊື່ນ', 'ບໍລິຄັນ', 'ບໍລິຄໍາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102427', 'XB3974', 'ທ່ານ ສີລີ ໄຊຍະຊ້າງ', '', '1988-03-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2052925060', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນເລົາ', 'ລ້ອງຊານ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102428', 'XB3975', 'ທ່ານ ຈີ້ລີຢ່າງ ດ່າເສີ', '', '1991-08-01', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055367790', 'ແຕ່ງງານ', '', '', '', '', '', 'ອອມ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102429', 'XB3976', 'ທ່ານ ເນັ້ງຊົ່ງ ຕົ່ງເລັ່ງ', '', '1991-10-11', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2052925484', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102430', 'XB3977', 'ທ່ານ ວາ ທ່າວ', '', '1991-01-19', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055119333', 'ແຕ່ງງານ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102431', 'XB3978', 'ທ່ານນາງ ເກັຍຢ່າງ ເລັ່ງຊາວເກີ', '', '1990-09-27', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055444112', 'ໂສດ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102432', 'XB4256', 'ທ່ານ ທະນູສອນ ວານິດຖາ', '', '1995-10-22', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055555008', 'ໂສດ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102433', 'XB4402', 'ທ່ານ ເຍ່ຍທ່າວ ຈ້າເພ້ຍ', '', '1995-06-26', '', 'ຊາຍ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2052515438', 'ໂສດ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102434', 'XB4403', 'ທ່ານນາງ ຕິມ ມະນີວັນ', '', '1993-10-10', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2055214056', 'ໂສດ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102435', 'XB4404', 'ທ່ານນາງ ມີນາ ສີສັງວານ', '', '1993-04-17', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2058282858', 'ໂສດ', '', '', '', '', '', 'ພູຫົວຊ້າງ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102436', 'XB4491', 'ທ່ານນາງ ກະເລຍຊົ່ງ ຊີຢີ', '', '1994-07-24', '', 'ຍິງ', 26, '', 'ລລທ ສາຂາ ໄຊສົມບຸນ', '2058480333', 'ແຕ່ງງານ', '', '', '', '', '', 'ຜາສະຫງົບ', 'ອານຸວົງ', 'ໄຊສົມບຸນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102437', 'VT2824', 'ທ່ານນາງ ດາລີລອນ ແກ້ວບັນດິດ', '', '1983-10-30', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055333838', 'ແຕ່ງງານ', '', '', '', '', '', 'ແກ້ງຍາງ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102438', 'VT1940', 'ທ່ານນາງ ມະໂນລົມ ເຂັມສຸລິຍາຈັກ', '', '1975-04-16', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055590966', 'ແຕ່ງງານ', '', '', '', '', '', 'ຮ່ອງໄກ່ແກ້ວ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102439', 'VT1145', 'ທ່ານ ສະຖິດ ສິຈິວັງສາ', '', '1969-02-20', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055500678', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນປາເປົ້າ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102440', 'VT0590', 'ທ່ານ ໄມ ພະກອນຄຳ', '', '1967-11-12', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055590193', 'ແຕ່ງງານ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102441', 'VT1806', 'ທ່ານ ກອນລາ ໄຊຍະແສງ', '', '1977-05-31', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055600228', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຂາວ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102442', 'VT2222', 'ທ່ານ ພຸດທະສີງຫາ ສະຫວັດຜົນ', '', '1978-09-08', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055590680', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102443', 'VT1755', 'ທ່ານ ຄຳສະຫວັນ ອະຣິຍະທຳ', '', '1978-02-01', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054791111', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫາຍໂສກ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102444', 'VT2710', 'ທ່ານ ໄຊສົມບັດ ຊາວົງໄຊ', '', '1986-09-15', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054224522', 'ແຕ່ງງານ', '', '', '', '', '', 'ອີໄລໃຕ້', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102445', 'VT2718', 'ທ່ານ ສີສະຫວາດ ພິມມະເສນ', '', '1987-10-02', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055663456', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍເຕີຍ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102446', 'VT2722', 'ທ່ານ ເມກຄະລາ ຈັນທະວົງ', '', '1979-05-07', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055666698', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102447', 'VT3361', 'ທ່ານ ອຸໄທ ໂພທິຫຸມພັນ', '', '1984-08-08', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055556975', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102448', 'VT1975', 'ທ່ານ ລົດນິຍົມ ອຸດົມສຸກ', '', '1978-05-05', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055600122', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຊ້າງ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102449', 'VT2250', 'ທ່ານນາງ ວັນພວງ ຄຸນປາກດີ', '', '1980-10-12', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055800700', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໜ່ຽງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102450', 'VT2828', 'ທ່ານນາງ ລານີ ສິມພະວົງ', '', '1987-06-13', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2056533182', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102451', 'VT2092', 'ທ່ານນາງ ບົວສະຫວັນ ວົງອາມາດ', '', '1979-11-06', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055506696', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102452', 'VT2826', 'ທ່ານ ເສັງຢ່າງ ຢ່າງຫວັງມະ', '', '1986-04-29', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055544599', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102453', 'VT3105', 'ທ່ານ ພອນປະເສີດ ລິນທິບພະວົງ', '', '1990-07-31', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2059959959', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫົວຂົວ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102454', 'VT3331', 'ທ່ານ ຂັນໄຊ ສີຫານຸລາດ', '', '1989-04-15', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2059583456', 'ໂສດ', '', '', '', '', '', 'ນາທົ່ມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102455', 'VT3437', 'ທ່ານນາງ ພັດຕະພອນ ເມືອງວົງ', '', '1990-10-15', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055877004', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີຊົມຊື່ນ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102456', 'VT3467', 'ທ່ານ ທອງໄອ່ ເຈີປາວທາວ', '', '1984-05-18', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2056666040', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາສຽ້ວ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102457', 'VT3531', 'ທ່ານ ຊາລີ ສີຫາຈັກ', '', '1989-01-01', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055996999', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາລ້ອມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102458', 'VT3445', 'ທ່ານ ສົມມີໄຊ ບຸດຈັນທະລາດ', '', '1992-01-02', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2059977252', 'ໂສດ', '', '', '', '', '', 'ຫາດຊາຍຂາວ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102459', 'VT3642', 'ທ່ານນາງ ສຸລິ​ຕ້າ ພົມມະ​ວົງສາ', '', '1991-08-08', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055552454', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງແກ້ວ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102460', 'VT3507', 'ທ່ານ ອານົງສັກ ຂຸນປະເສີດ', '', '1991-11-10', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054503964', 'ແຕ່ງງານ', '', '', '', '', '', 'ບ. ສີບຸນເຮືອງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102461', 'VT3690', 'ທ່ານນາງ ປາພາວານາ ແກ້ວເຊກອງ', '', '1984-09-24', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055556226', 'ແຕ່ງງານ', '', '', '', '', '', 'ອານຸ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102462', 'VT3721', 'ທ່ານ ວິລະຄານ ສາຍຄຳໃບ', '', '1992-06-16', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054214636', 'ໂສດ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102463', 'VT3722', 'ທ່ານ ບົວຫຼີ້ ທິບພະວົງ', '', '1992-01-19', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2056728456', 'ໂສດ', '', '', '', '', '', 'ດົງປາແຫຼບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102464', 'VT3723', 'ທ່ານ ຫັດສະຫວັນ ເພັດຈະເຣີນ', '', '1993-03-04', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2052199199', 'ໂສດ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102465', 'VT3724', 'ທ່ານນາງ ວິສຸດາ ພະສະຖານ', '', '1993-02-28', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054213277', 'ໂສດ', '', '', '', '', '', 'ໜອງວຽງຄຳ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102466', 'VT3912', 'ທ່ານ ວິລະສິດ ພານຸວົງ', '', '1991-04-15', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2056893370', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102467', 'VT4189', 'ທ່ານນາງ ທິບພະຈັນ ໄຊຍະພູມມິນ', '', '1990-07-09', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055945288', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວຫຼວງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102468', 'VT4190', 'ທ່ານນາງ ຍອຍຄຳ ໄຊສັກສີ', '', '1986-10-07', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2058236669', 'ໂສດ', '', '', '', '', '', 'ບຶງຂະຫຍອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102469', 'VT4234', 'ທ່ານນາງ ວັນນະສອນ ພະກອນຄຳ', '', '1995-01-13', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2059331616', 'ໂສດ', '', '', '', '', '', 'ຕານມີໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102470', 'VT4235', 'ທ່ານນາງ ເພັດມະນີວອນ ແກ້ວມຸງຄຸນ', '', '1992-08-07', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2057551919', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງທາໃຕ້', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102471', 'VT4236', 'ທ່ານນາງ ກ້ອຍວິມົນ ໄຊຍະລາດ', '', '1991-12-07', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055551299', 'ໂສດ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102472', 'VT4458', 'ທ່ານ ສຸລິໄຊ ພົມວົງໄຊ', '', '1994-08-10', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054368789', 'ໂສດ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102473', 'VT4477', 'ທ່ານນາງ ຈິນຈິລາ ສອນມັງຄະລະ', '', '1991-12-21', '', 'ຍິງ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2056969494', 'ໂສດ', '', '', '', '', '', 'ສະພັງມຶກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102474', 'VT4457', 'ທ່ານ ບຸນນະພັນ ພິໄລສານ', '', '1994-10-22', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054598000', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102475', 'VT4524', 'ທ່ານ ສຸດໃຈ ສໍສຳພັນ', '', '1996-02-20', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054218789', 'ໂສດ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102476', 'VT4525', 'ທ່ານ ອານຸລັກ ຈັນເພັງໄຊ', '', '1996-10-01', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2054079789', 'ໂສດ', '', '', '', '', '', 'ໂພນທັນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102477', 'VT4530', 'ທ່ານ ສຸນີ ມະລີວັນ', '', '1997-07-16', '', 'ຊາຍ', 26, '', 'ວິເຄາະລະບົບຂໍ້ມູນ-ຂ່າວສານ', '2055889758', 'ໂສດ', '', '', '', '', '', 'ສີວິໄລ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102478', 'VT0618', 'ທ່ານ ຄຳພຸດ ພິມວັນ', '', '1965-08-01', '', 'ຊາຍ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2055500756', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງກາງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102479', 'VT1720', 'ທ່ານນາງ ມະລິລະມອນ ແກ້ວຫາວົງ', '', '1969-01-02', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2055500638', 'ໝ້າຍ', '', '', '', '', '', 'ກາງທ່າ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102480', 'VT1836', 'ທ່ານ ສົມປາດຖະໜາ ຫຼ້າໄຄສີ', '', '1981-03-06', '', 'ຊາຍ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2056239955', 'ໂສດ', '', '', '', '', '', 'ສີໄຄທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102481', 'VT2060', 'ທ່ານນາງ ພູວຽງ ໄຊຍະສອນ', '', '1979-01-26', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2054555944', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາຄູນນ້ອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102482', 'VT3340', 'ທ່ານ ຈັນທະບູນ ອຸດົມພົງ', '', '1989-10-07', '', 'ຊາຍ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2059999416', 'ໂສດ', '', '', '', '', '', 'ວັດໄຕນອ້ຍທົ່ງ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102483', 'VT2864', 'ທ່ານນາງ ວັນທິດາ ວົງສຸທິ', '', '1988-10-25', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2059938888', 'ແຕ່ງງານ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102484', 'VT3378', 'ທ່ານນາງ ມຸກທອງ ແກ້ວມະນີ', '', '1990-12-27', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2059969666', 'ໂສດ', '', '', '', '', '', 'ສະພັງມິກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102485', 'VT3691', 'ທ່ານນາງ ໂສມສະມາລີ ອິນມາທອງ', '', '1987-12-15', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2058486565', 'ໂສດ', '', '', '', '', '', 'ທົ່ງພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102486', 'VT3942', 'ທ່ານ ພຸດທະວົງ ທຸມມະເກສອນ', '', '1992-08-29', '', 'ຊາຍ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2059866555', 'ໂສດ', '', '', '', '', '', 'ຄຳສະຫວາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102487', 'VT3979', 'ທ່ານນາງ ແສງສຸວັນ ເພັງເມືອງຄູນ', '', '1991-02-16', '', 'ຍິງ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2055557696', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງບົວທອງໃຕ້', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102488', 'VT4288', 'ທ່ານ ອິນທານິນ ສີລາວົງ', '', '1994-07-27', '', 'ຊາຍ', 26, '', 'ພັດທະນາບຸກຄະລາກອນ ແລະ ວັດທະນະທໍາອົງກອນ', '2059857979', 'ໂສດ', '', '', '', '', '', 'ຈອມມະນີ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102489', 'MVT1774', 'ທ່ານນາງ ພຸດທະມາລີ ພອນສະຫວັນ', '', '1978-12-06', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055818456', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍລົມ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102490', 'MVT1969', 'ທ່ານນາງ ພອນສະຫວັດ ແສນຍາກອນ', '', '1979-04-30', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055500529', 'ແຕ່ງງານ', '', '', '', '', '', 'ສະພານ​ທອງ​ໃຕ້', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102491', 'MVT2438', 'ທ່ານນາງ ພອນປານີ ສໍສຳພັນ', '', '1985-11-14', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055102868', 'ແຕ່ງງານ', '', '', '', '', '', 'ຊຽງດາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102492', 'MVT3096', 'ທ່ານນາງ ພຽງສະແຫວງ ຊົມພາ', '', '1987-02-22', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2056539789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102493', 'MVT2560', 'ທ່ານ ທັດສະນະພອນ ຫຼວງລາດ', '', '1983-06-05', '', 'ຊາຍ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2054544789', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102494', 'MVT2837', 'ທ່ານ ເພັດສະໝອນ ສຸລິວົງ', '', '1984-07-04', '', 'ຊາຍ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055577707', 'ໂສດ', '', '', '', '', '', 'ໄຊ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102495', 'MVT3447', 'ທ່ານນາງ ວຽງສະຫັວນ ທະນາຄອນ', '', '1991-06-30', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055344441', 'ແຕ່ງງານ', '', '', '', '', '', 'ໜອງໄຮ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102496', 'MVT3618', 'ທ່ານນາງ ຈິດຕິມາ ຊາມຸນຕີ', '', '1991-02-19', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2054586655', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102497', 'MVT3911', 'ທ່ານນາງ ສຸທິດາ ວົງສີຫາຣາດ', '', '1992-07-10', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055414555', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງປ່າແຫຼບ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102498', 'MVT4150', 'ທ່ານນາງ ລັດສະນີກອນ ພູບຸນປູກ', '', '1992-08-27', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055565371', 'ໂສດ', '', '', '', '', '', 'ໜອງໜ້ຽວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102499', 'MVT4231', 'ທ່ານນາງ ອິນທິສອນ ຫຼວງລາດ', '', '1994-02-22', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2056562424', 'ໂສດ', '', '', '', '', '', 'ໂພນສະອາດ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102500', 'MVT4470', 'ທ່ານນາງ ມຸກອານົງ ບຸດທະສະວົງ', '', '1993-01-02', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2058555721', 'ໂສດ', '', '', '', '', '', 'ສະຫວ່າງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102501', 'MVT4469', 'ທ່ານນາງ ດາວພະສຸກ ຫອມສົມບັດ', '', '1994-11-01', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2054490747', 'ໂສດ', '', '', '', '', '', 'ນາຄູນນ້ອຍ', 'ນາຊາຍທອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102502', 'MVT1908', 'ທ່ານນາງ ວຽງເງິນ ອິນທະວົງ', '', '1982-10-20', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055111117', 'ແຕ່ງງານ', '', '', '', '', '', 'ວຽງຈະເລີນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102503', 'MVT2576', 'ທ່ານ ຄຳພອນ ພຸດທະວົງ', '', '1986-02-05', '', 'ຊາຍ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055220199', 'ແຕ່ງງານ', '', '', '', '', '', 'ນາທົ່ມ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102504', 'MVT3094', 'ທ່ານນາງ ອະລຸນີ ພັນພິພັດ', '', '1974-06-12', '', 'ຍິງ', 26, '', 'ບໍລິສັດ ລາວ ໂມບາຍມັນນີ ຈຳກັດ', '2055500808', 'ໂສດ', '', '', '', '', '', 'ສະພານທອງເໜືອ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102505', 'VT1080', 'ທ່ານນາງ ບາງທອງ ອິນທະພົນ', '', '1973-05-13', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2055590534', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາຍນ້ຳເງິນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102506', 'VT0665', 'ທ່ານ ບົວສີ ສັນຍາສິດ', '', '1966-06-16', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055590773', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂນນແກ້ວ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102507', 'VT1839', 'ທ່ານ ກາລະສິນ ພົມມະວົງສາ', '', '1970-02-12', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055500700', 'ແຕ່ງງານ', '', '', '', '', '', 'ທົ່ງສາງນາງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102508', 'VT2568', 'ທ່ານ ຂັນທະນູວຽງ ແກ້ວມະນີວົງ', '', '1982-12-07', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055544799', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳເໜຶອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102509', 'VT2708', 'ທ່ານ ສົມລິດ ພົມມະຫານ', '', '1987-12-02', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055200347', 'ແຕ່ງງານ', '', '', '', '', '', 'ຄຳຮຸ່ງ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102510', 'VT0952', 'ທ່ານນາງ ມະໂນທຳ ສຸທຳມະວົງ', '', '1977-04-24', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2055600028', 'ແຕ່ງງານ', '', '', '', '', '', 'ສີສະຫວາດ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102511', 'VT0078', 'ທ່ານ ບຸນຖົມ ນາວິໄລວົງ', '', '1963-12-01', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055600010', 'ຮ້າງ', '', '', '', '', '', 'ສະພານທອງ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102512', 'VT3160', 'ທ່ານ ນິຣັນດອນ ດວງພະຈັນ', '', '1990-06-22', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055799898', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນຄຳ', 'ສີໂຄດຕະບອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102513', 'VT3114', 'ທ່ານນາງ ຊັນນີ້ ທອງປານ', '', '1988-02-24', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2055112311', 'ແຕ່ງງານ', '', '', '', '', '', 'ທ່ານາ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102514', 'VT2934', 'ທ່ານນາງ ແກ້ວດາວັນ ສີດາພົມ', '', '1986-12-09', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2059976999', 'ແຕ່ງງານ', '', '', '', '', '', 'ຂົວຫຼວງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102515', 'VT3187', 'ທ່ານນາງ ສຸກສະຫວັນ ສີວົງສົດ', '', '1988-07-05', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2057757711', 'ຮ້າງ', '', '', '', '', '', 'ນາສ້າງໄພ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102516', 'VT3329', 'ທ່ານ ຈັນທະໜອມ ຍົດລືໄຊ', '', '1991-01-09', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2056666541', 'ແຕ່ງງານ', '', '', '', '', '', 'ດົງໂດກ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102517', 'VT3877', 'ທ່ານນາງ ລິນດາ ແກ້ວທອງສາ', '', '1991-11-11', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2059179999', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນໜູນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102518', 'VT4177', 'ທ່ານນາງ ວິສຸດາກອນ ວົງໄກສອນ', '', '1991-11-16', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2052265553', 'ແຕ່ງງານ', '', '', '', '', '', 'ທາດຫຼວງ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102519', 'VT4178', 'ທ່ານນາງ ວາດສະໜາ ພິມມະສານ', '', '1993-09-14', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2059880789', 'ໂສດ', '', '', '', '', '', 'ທ່າພະລານໄຊ', 'ສີສັດຕະນາກ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102520', 'VT4214', 'ທ່ານ ສັນຕິສຸກ ວົງສຸພັນ', '', '1994-12-12', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2052979446', 'ແຕ່ງງານ', '', '', '', '', '', 'ດອນແດງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102521', 'VT4247', 'ທ່ານນາງ ມຸກມະນີ ບຸນທະວີສັກ', '', '1993-01-07', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2055963350', 'ແຕ່ງງານ', '', '', '', '', '', 'ໂພນພະເນົາ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102522', 'VT4307', 'ທ່ານ ຂັນຄໍາ ພູສີ', '', '1988-11-08', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2057999168', 'ຮ້າງ', '', '', '', '', '', 'ສີສັງວອນ', 'ໄຊເສດຖາ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102523', 'VT4309', 'ທ່ານນາງ ລາລີ ວົງປັນຍາ', '', '1995-10-13', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2054772222', 'ແຕ່ງງານ', '', '', '', '', '', 'ຫ້ວຍຫົງ', 'ຈັນທະບູລີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102524', 'VT4315', 'ທ່ານ ຈັນທະໜອມ ເຊັງວົງ', '', '1988-03-14', '', 'ຊາຍ', 26, '', 'ກວດກາພາຍໃນ', '2055008929', 'ແຕ່ງງານ', '', '', '', '', '', 'ສາລາຄຳເໜືອ', 'ຫາດຊາຍຟອງ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
('204072102525', 'VT4495', 'ທ່ານນາງ ກູດແກ້ວ ແກ້ວບົວສາ', '', '1995-07-24', '', 'ຍິງ', 26, '', 'ກວດກາພາຍໃນ', '2059932611', 'ໂສດ', '', '', '', '', '', 'ໂນນແສງຈັນ', 'ໄຊທານີ', 'ນະຄອນຫຼວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `heavy_metal`
--

CREATE TABLE `heavy_metal` (
  `hea_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lead` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chromlum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ether` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manganese` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_a_u` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_u` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copper` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zine` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alcoho` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `silica` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arsenic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_i_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methy_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methanoi_urine` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phenolic_resin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xylene` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_e_k_i_urine` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `heavy_metal_log` int(11) NOT NULL
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
  `hpylori` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calcium` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phosphorus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `immunity_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `log_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `status_log` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`log_id`, `emp_id`, `status_log`, `time_stamp`) VALUES
(31, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-28 09:26:39'),
(32, 2, 'ອອກຈາກລະບົບ', '2021-06-28 09:31:07'),
(33, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-28 09:31:47'),
(34, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-29 03:51:03'),
(35, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-29 04:50:35'),
(36, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-29 08:15:34'),
(37, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-29 09:19:48'),
(38, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-29 11:08:08'),
(39, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-06-30 02:35:22'),
(40, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-02 02:26:39'),
(41, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-04 09:42:39'),
(42, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-04 13:25:26'),
(43, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-05 03:41:49'),
(44, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-05 05:54:38'),
(45, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-05 07:42:40'),
(46, 2, 'ເຂົ້າສູ່ລະບົບ', '2021-07-07 03:23:33');

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
('01184701013D29010185FD01', '2022-11-30'),
('01184701013D400101636101', '2023-01-01'),
('014CEB0101BD2501017FC501', '2022-09-01');

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
  `user_id` int(11) DEFAULT NULL,
  `methamphetamine_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `muscle_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `oc_vision_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pack_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `package_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`pack_id`, `pack_name`, `package_log`) VALUES
('AUDIO', 'ກວດການໄດ້ຍິນ ( Audio Screenin ) ', '2021-07-04 13:26:26'),
('CBC', 'ກວດຫາຄວາມຜິດປົກກະຕິຂອງເມັດເລືອດ( CBC)', '2021-07-04 13:26:26'),
('CLOT', 'ການກວດຫາໄຊມັນໃນເລືອດ (Cholesterol)', '2021-07-04 13:26:26'),
('EKG', 'ຄື້ນໄຟຟ້າຫົວໃຈ (EKG)', '2021-07-04 13:26:26'),
('NAFA', 'ການກວດລະດັບນໍ້າຕານໃນເລືອດ (FBS)', '2021-07-04 13:26:26'),
('PE', 'ກວດສຸຂະພາບຮ່າງກາຍໂດຍທ່ານໝໍ(PE)', '2021-07-04 13:26:26'),
('Urine', 'ການກວດປັດສະວະທົ່ວໄປ(Urine)', '2021-07-04 13:26:26'),
('X-Ray', 'ການກວດເອັກສະເລປອດ ແລະ ຫົວໃຈ(Chest X-ray)', '2021-07-04 13:26:26'),
('ຕາອາຊີບ', 'ກວດສາຍຕາອາຊີບ (Occupational Health Vision test)', '2021-07-04 13:26:26'),
('ສາຍຕາ', 'ກວດລະບົບສາຍຕາ ແລະ ຕາບອດສີ ( Eye Exam, color Blind ', '2021-07-04 13:26:26');

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
  `user_id` int(11) DEFAULT NULL,
  `pe_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `register_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `barcode`, `time`, `queue`, `year`, `date`, `user_id`, `register_log`) VALUES
(1, '204072100161', '11:30:28', 1, 2021, '2021-07-07', 2, '2021-07-07 04:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `registerdetail`
--

CREATE TABLE `registerdetail` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `pack_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `registerdetail_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registerdetail`
--

INSERT INTO `registerdetail` (`id`, `reg_id`, `pack_id`, `registerdetail_log`) VALUES
(700, 1, 'AUDIO', '2021-07-07 04:30:28'),
(701, 1, 'CBC', '2021-07-07 04:30:28'),
(702, 1, 'CLOT', '2021-07-07 04:30:28'),
(703, 1, 'EKG', '2021-07-07 04:30:28'),
(704, 1, 'NAFA', '2021-07-07 04:30:28'),
(705, 1, 'PE', '2021-07-07 04:30:28'),
(706, 1, 'Urine', '2021-07-07 04:30:28'),
(707, 1, 'X-Ray', '2021-07-07 04:30:28'),
(708, 1, 'ຕາອາຊີບ', '2021-07-07 04:30:28'),
(709, 1, 'ສາຍຕາ', '2021-07-07 04:30:28');

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
  `user_id` int(11) DEFAULT NULL,
  `se_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `spirometry_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_vision`
--

CREATE TABLE `test_vision` (
  `test_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `r_short` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_long` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_tited` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_conclusion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_short` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_long` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_tited` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_conclusion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `test_vision_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `thryoid_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tumor_gttgk`
--

CREATE TABLE `tumor_gttgk` (
  `id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `total_bill` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drect_bill` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protein` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ambumin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `globulin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tumor_gttgk_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `tumor_marker_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ultrasound`
--

CREATE TABLE `ultrasound` (
  `ul_id` int(11) NOT NULL,
  `barcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `ultra_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `conclusion_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ultrasound_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `urinalvsis_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `stt_id` int(11) DEFAULT NULL,
  `username_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`user_id`, `staff_id`, `user_name`, `email`, `pass`, `profile_path`, `stt_id`, `username_log`) VALUES
(2, '001', 'ປູນາ', 'puna@gmail.com', '202cb962ac59075b964b07152d234b70', 'Health_60894840197d2.png', 1, '2021-06-28 08:06:29'),
(3, '002', 'ຫຼ້າ', 'lar@gmail.com', '202cb962ac59075b964b07152d234b70', 'Health_6089484d66750.png', 2, '2021-06-28 08:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `stt_id` int(11) NOT NULL,
  `stt_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_status_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`stt_id`, `stt_name`, `user_status_log`) VALUES
(1, 'ປະຕິບັດງານ', '2021-06-28 08:06:53'),
(2, 'ຜູ້ຈັດການຜູ້ໃຊ້', '2021-06-28 08:06:53');

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
  `user_id` int(11) DEFAULT NULL,
  `x_ray_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`log_id`);

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
-- Indexes for table `test_vision`
--
ALTER TABLE `test_vision`
  ADD PRIMARY KEY (`test_id`),
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
-- Indexes for table `tumor_gttgk`
--
ALTER TABLE `tumor_gttgk`
  ADD PRIMARY KEY (`id`),
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
-- Indexes for table `ultrasound`
--
ALTER TABLE `ultrasound`
  ADD PRIMARY KEY (`ul_id`),
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
  MODIFY `audi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `biochemistry`
--
ALTER TABLE `biochemistry`
  MODIFY `bio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cbc`
--
ALTER TABLE `cbc`
  MODIFY `cbc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `checkup_status`
--
ALTER TABLE `checkup_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `company_package`
--
ALTER TABLE `company_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `ekg`
--
ALTER TABLE `ekg`
  MODIFY `ekg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `heavy_metal`
--
ALTER TABLE `heavy_metal`
  MODIFY `hea_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `immunity`
--
ALTER TABLE `immunity`
  MODIFY `im_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `methamphetamine`
--
ALTER TABLE `methamphetamine`
  MODIFY `meth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `muscle`
--
ALTER TABLE `muscle`
  MODIFY `muscle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `oc_vision`
--
ALTER TABLE `oc_vision`
  MODIFY `oc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pe`
--
ALTER TABLE `pe`
  MODIFY `pe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `registerdetail`
--
ALTER TABLE `registerdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `se`
--
ALTER TABLE `se`
  MODIFY `se_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `spirometry`
--
ALTER TABLE `spirometry`
  MODIFY `spir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `test_vision`
--
ALTER TABLE `test_vision`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `thryroid`
--
ALTER TABLE `thryroid`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tumor_gttgk`
--
ALTER TABLE `tumor_gttgk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tumor_marker`
--
ALTER TABLE `tumor_marker`
  MODIFY `tum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ultrasound`
--
ALTER TABLE `ultrasound`
  MODIFY `ul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `urinalvsis`
--
ALTER TABLE `urinalvsis`
  MODIFY `urin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `x_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- Constraints for table `test_vision`
--
ALTER TABLE `test_vision`
  ADD CONSTRAINT `test_vision_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `test_vision_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `thryroid`
--
ALTER TABLE `thryroid`
  ADD CONSTRAINT `thryroid_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `thryroid_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `tumor_gttgk`
--
ALTER TABLE `tumor_gttgk`
  ADD CONSTRAINT `tumor_gttgk_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `tumor_gttgk_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `tumor_marker`
--
ALTER TABLE `tumor_marker`
  ADD CONSTRAINT `tumor_marker_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `tumor_marker_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `ultrasound`
--
ALTER TABLE `ultrasound`
  ADD CONSTRAINT `ultrasound_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `employee` (`barcode`),
  ADD CONSTRAINT `ultrasound_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

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
