SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE medicineDiazJoseba;


GRANT ALL PRIVILEGES ON medicineDiazJoseba.* to 'diaz'@'%' IDENTIFIED BY 'joseba';

USE medicineDiazJoseba;

CREATE TABLE category (
	id INT(6) AUTO_INCREMENT,
	name VARCHAR(500),
	description VARCHAR(1000),

	CONSTRAINT pk_category PRIMARY KEY (id)
);

CREATE TABLE medicine (
	id INT(3) AUTO_INCREMENT,
	name VARCHAR(150) unique,
	description VARCHAR(1000),
	stock INT(3),
	price REAL,
	id_categ INT(6),

	CONSTRAINT pk_medicine PRIMARY KEY (id),
	CONSTRAINT fk_medicine FOREIGN KEY (id_categ) REFERENCES category(id) ON DELETE CASCADE
	
);



CREATE TABLE user(
	username VARCHAR(20),
	password VARCHAR(32) NOT NULL,
	name VARCHAR(20) UNIQUE,
	surname VARCHAR(20) UNIQUE,
	birthdate date,
	gender VARCHAR(30),
	admin boolean,

CONSTRAINT pk_user PRIMARY KEY (username)
);




CREATE TABLE user_medicine(
	username VARCHAR(20),
	id_medic INT(6),
	amount INT(2),
	buyDate DATE,

	CONSTRAINT PK_USUARIO_MEDIC PRIMARY KEY (id_medic,username,amount,buyDate),
	CONSTRAINT FK_USUARIO_MEDIC FOREIGN KEY (id_medic) REFERENCES medicine(id) ON DELETE CASCADE,
	CONSTRAINT FK2_USUARIO_MEDIC FOREIGN KEY (username) REFERENCES user(username) ON DELETE CASCADE
);




insert into user (username, password, name, surname, birthdate, gender, admin) values ('diaz', 'joseba', 'Joseba', 'Diaz', '2001-04-10', 'Male', true);
insert into user (username, password, name, surname, birthdate, gender, admin) values ('imma', 'imma', 'Imma', 'Imma', '1966-11-09', 'Female', false);


insert into category (id, name, description) values (1, 'Avobenzone, Homosalate, Octisalate, Octocrylene, Oxybenzone', 'Excision of Left Common Carotid Artery, Open Approach, Diagn');
insert into category (id, name, description) values (2, 'Homosalate, Octisalate, Oxybenzone, Avobenzone', 'Destruction of Conduction Mechanism, Percutaneous Approach');
insert into category (id, name, description) values (3, 'Treatment Set TS335861', 'Supplement Right Lacrimal Duct with Autol Sub, Perc Approach');
insert into category (id, name, description) values (4, 'nicotine polacrilex', 'Replacement of R Ethmoid Bone with Nonaut Sub, Open Approach');
insert into category (id, name, description) values (5, 'Benzoyl Peroxide', 'Destruction of Aortic Body, Percutaneous Endoscopic Approach');
insert into category (id, name, description) values (6, 'Titanium Dioxide, Zinc Oxide', 'Fusion Occip Jt w Synth Sub, Post Appr P Col, Open');
insert into category (id, name, description) values (7, 'Arnica', 'CT Scan Trachea/Airway w H Osm Contrast, Unenh, Enhance');
insert into category (id, name, description) values (8, 'Octinoxate Plus', 'Replacement of R Knee Jt with Unicondyl, Open Approach');
insert into category (id, name, description) values (9, 'Mucor plumbeus', 'Bypass Abd Aorta to L Int Ilia with Autol Vn, Open Approach');
insert into category (id, name, description) values (10, 'Moxifloxacin Hydrochloride', 'Repair Left Fibula, Percutaneous Endoscopic Approach');



insert into medicine (name, description, stock, price, id_categ) values ('ZINC OXIDE', 'Removal of Synthetic Substitute from L Tibia, Perc Approach', 40, 12.05, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Clonidine Hydrochloride', 'Bypass R Ext Iliac Art to R Ext Ilia w Nonaut Sub, Open', 40, 5.86, 3);
insert into medicine (name, description, stock, price, id_categ) values ('Chelidonium Curcuma P', 'Sensory/Processing Assessment of Neuro Up Back/UE', 40, 6.14, 7);
insert into medicine (name, description, stock, price, id_categ) values ('OCTINOXATE, ENSULIZOLE, OCTOCRYLENE, TITANIUM DIOXIDE', 'Bypass L Ext Iliac Art to R Int Ilia, Perc Endo Approach', 40, 12.2, 7);
insert into medicine (name, description, stock, price, id_categ) values ('PIPERACILLIN SODIUM,TAZOBACTAM SODIUM', 'Repair Right Vertebral Vein, Percutaneous Approach', 40, 8.3, 8);
insert into medicine (name, description, stock, price, id_categ) values ('Levetiracetam', 'Excision of Right Hip Muscle, Open Approach, Diagnostic', 40, 3.81, 9);
insert into medicine (name, description, stock, price, id_categ) values ('iloperidone', 'Dilation of Left Face Vein, Open Approach', 40, 3.74, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Benazepril Hydrochloride', 'Reposition Multiple Parathyroid Glands, Perc Endo Approach', 40, 16.29, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Lovastatin', 'Repair Left Foot, Percutaneous Endoscopic Approach', 40, 18.08, 8);
insert into medicine (name, description, stock, price, id_categ) values ('Simvastatin', 'Revision of Synthetic Substitute in R Tibia, Perc Approach', 40, 19.19, 3);
insert into medicine (name, description, stock, price, id_categ) values ('SALICYLIC ACID II', 'Drainage of Right Toe Phalanx, Percutaneous Approach, Diagn', 40, 10.41, 6);
insert into medicine (name, description, stock, price, id_categ) values ('Valsartan and Hydrochlorothiazide', 'Revision of Drainage Device in Diaphragm, Perc Approach', 40, 13.81, 9);
insert into medicine (name, description, stock, price, id_categ) values ('OXYBUTYNIN CHLORIDE', 'Revision of Intbd Fus Dev in Occip Jt, Perc Approach', 40, 15.4, 8);
insert into medicine (name, description, stock, price, id_categ) values ('aluminum zirconium pentachlorohydrate', 'Supplement Perineum Bursa/Lig with Nonaut Sub, Open Approach', 40, 14.38, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Aluminum Zirconium Octachlorhydrex GLY', 'Replacement of Nasal Septum with Nonaut Sub, Open Approach', 40, 17.47, 5);
insert into medicine (name, description, stock, price, id_categ) values ('Benzocaine III', 'Dilate L Peroneal Art w 3 Intralum Dev, Perc Endo', 40, 12.5, 9);
insert into medicine (name, description, stock, price, id_categ) values ('ALUMINUM ZIRCONIUM OCTACHLOROHYDREX GLY', 'Drainage of Right Main Bronchus, Endo, Diagn', 40, 8.88, 7);
insert into medicine (name, description, stock, price, id_categ) values ('miconazole nitrate', 'Removal of Nonaut Sub from L Carpal, Perc Endo Approach', 40, 9.8, 1);
insert into medicine (name, description, stock, price, id_categ) values ('ropinirole', 'Release Nose, Percutaneous Endoscopic Approach', 40, 6.54, 3);
insert into medicine (name, description, stock, price, id_categ) values ('Amlodipine Besylate', 'Fusion of L Finger Phalanx Jt with Ext Fix, Open Approach', 40, 17.07, 4);
insert into medicine (name, description, stock, price, id_categ) values ('OCTINOXATE IV', 'Revision of Infusion Device in Ovary, Perc Endo Approach', 40, 3.86, 6);
insert into medicine (name, description, stock, price, id_categ) values ('Pyrithione Zinc', 'Insertion of Int Fix into L Toe Phalanx, Open Approach', 40, 14.97, 8);
insert into medicine (name, description, stock, price, id_categ) values ('SALICYLIC ACID', 'Excision of Left Renal Artery, Percutaneous Approach, Diagn', 40, 14.3, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Quercus Borago Adult Size', 'Revision of Nonaut Sub in Male Perineum, Open Approach', 40, 4.85, 8);
insert into medicine (name, description, stock, price, id_categ) values ('Bismuth subsalicylate', 'Beam Radiation of Larynx using Photons 1 - 10 MeV', 40, 6.14, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Homosalate, Octinoxate, Octisalate, Oxybenzone, Avobenzone, Octocrylene', 'Revision of Internal Fixation Device in R Rib, Perc Approach', 40, 4.95, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Sodium Fluoride', 'Drainage of Cecum, Percutaneous Approach, Diagnostic', 40, 11.52, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Hydrocodone Bitartrate and Acetaminophen', 'Revision of Infusion Dev in Spinal Canal, Perc Endo Approach', 40, 16.16, 9);
insert into medicine (name, description, stock, price, id_categ) values ('ALCOHOL', 'Excision of Left Finger Phalanx, Perc Endo Approach', 40, 13.68, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Air', 'Extirpation of Matter from R Ulnar Art, Perc Endo Approach', 40, 19.43, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Esmolol Hydrochloride', 'Removal of Autol Sub from R Finger Phalanx, Perc Approach', 40, 7.61, 8);
insert into medicine (name, description, stock, price, id_categ) values ('Omeprazole', 'Bypass R Subclav Art to R Up Arm Art w Autol Art, Open', 40, 16.33, 8);
insert into medicine (name, description, stock, price, id_categ) values ('DILTIAZEM HYDROCHLORIDE', 'Reposition Upper Tooth, Sing, with Ext Fix, Extern Approach', 40, 11.98, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Titanium Dioxide, OCTINOXATE', 'Transfuse Autol Frozen Red Cells in Central Art, Perc', 40, 3.13, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Dicyclomine Hydrochloride', 'Destruction of Right Retina, Percutaneous Approach', 40, 12.29, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Enalapril Maleate', 'Excision of Int Mamm, L Lymph, Open Approach, Diagn', 40, 6.21, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Ethyl Alcohol', 'Destruction of Thoracic Spinal Cord, Open Approach', 40, 11.17, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Yellow Pine', 'Bypass 4+ Cor Art from Cor Art, Open Approach', 40, 9.48, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Benzocaine', 'Drainage of Left Breast with Drainage Device, Perc Approach', 40, 19.23, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Pyrithione Zinc II', 'PET Imag of Brain using Oxygen 15', 40, 3.96, 5);
insert into medicine (name, description, stock, price, id_categ) values ('citalopram hydrobromide', 'LDR Brachytherapy of Eye using Californium 252', 40, 15.48, 5);
insert into medicine (name, description, stock, price, id_categ) values ('Cetirizine Hydrochloride', 'CT Scan Bi Submandib Gland w L Osm Contrast, Unenh, Enhance', 40, 5.84, 2);
insert into medicine (name, description, stock, price, id_categ) values ('hydromorphone hydrochloride', 'Replace of L Face Vein with Synth Sub, Perc Endo Approach', 40, 12.51, 2);
insert into medicine (name, description, stock, price, id_categ) values ('CYCLAMEN PURPURASCENS TUBER', 'Removal of Autol Sub from L Toe Phalanx, Perc Endo Approach', 40, 15.61, 1);
insert into medicine (name, description, stock, price, id_categ) values ('amlodipine valsartan and hydrochlorothiazide', 'Introduce Oth Therap Subst in Central Art, Perc', 40, 11.75, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Berberis vulgaris, Cochlearia armoracia, Echinacea, Hydrastis canadensis, Lomatium dissectum, Myrrha, Tabebuia impetiginosa, Propolis, Glandula suprarenalis suis, Thymus suis, Ferrum metallicum,', 'Excision of Right Mandible, Percutaneous Endoscopic Approach', 40, 13.64, 9);
insert into medicine (name, description, stock, price, id_categ) values ('Chlorpheniramine maleate and Dextromethorphan hydrobromide', 'Transfusion of Nonaut WBC into Central Art, Open Approach', 40, 16.62, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Hetastarch in Sodium Chloride', 'Excision of Left Adrenal Gland, Perc Endo Approach', 40, 14.98, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Marshelder Rough', 'Bypass R Pulm Art from Subclav with No Dev, Open Approach', 40, 17.09, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Sulfamethoxazole', 'Drainage of Right Carpal with Drainage Device, Open Approach', 40, 12.64, 6);
insert into medicine (name, description, stock, price, id_categ) values ('GLIPIZIDE', 'Repair Right External Iliac Vein, Open Approach', 40, 6.66, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Ibuprofen', 'Dilate R Renal Art, Bifurc, w Drug-elut Intra, Perc', 40, 12.71, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Dextrose and Sodium Chloride', 'Bypass L Int Iliac Art to B Ext Ilia w Autol Vn, Perc Endo', 40, 5.07, 8);
insert into medicine (name, description, stock, price, id_categ) values ('Ketotifen', 'Excision of Cervicothoracic Vertebral Disc, Perc Approach', 40, 17.28, 5);
insert into medicine (name, description, stock, price, id_categ) values ('abacavir sulfate', 'Fusion C-thor Jt w Nano Intbd Dev, Open, New Tech 2', 40, 8.61, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Antibaceterial Hand Soap Rose', 'Dilation of R Temporal Art with 2 Drug-elut, Open Approach', 40, 8.93, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Bismuthum metallicum, Aloe, Angelica sinensis radix, Antimon. crud., Arg. nit., Arnica, Arsenicum alb., Baptisia, Bryonia, Cinchona, Graphites, Hydrastis, Ipecac., Lachesis, Lycopodium, Myrrha, Nat. carb., Nux vom., Phosphorus, Pulsatilla, Zingiber, Chamomilla, Echinacea, Iris versicolor, Ruta, Taraxacum', 'Supplement Right Nipple with Nonaut Sub, Open Approach', 40, 9.6, 9);
insert into medicine (name, description, stock, price, id_categ) values ('Fexofenadine HCl', 'Fusion of Right Tarsal Joint, Open Approach', 40, 7.24, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Avobenzone, Octocrylene, Oxybenzone, Octisalate', 'Bypass Bladder to Ileocutan w Autol Sub, Perc Endo', 40, 8.41, 8);
insert into medicine (name, description, stock, price, id_categ) values ('EMEDASTINE DIFUMARATE', 'Drainage of T-lum Disc, Perc Approach, Diagn', 40, 18.61, 1);
insert into medicine (name, description, stock, price, id_categ) values ('concord grape', 'Bypass Left External Iliac Vein to Lower Vein, Open Approach', 40, 7.12, 9);
insert into medicine (name, description, stock, price, id_categ) values ('Avobenzone, Homosalate, Octisalate, and Octocrylene', 'Repair Left Lower Arm, Percutaneous Endoscopic Approach', 40, 15.84, 10);
insert into medicine (name, description, stock, price, id_categ) values ('amoxicillin and clavulanate potassium', 'Division of R Trunk Bursa/Lig, Perc Endo Approach', 40, 12.94, 9);
insert into medicine (name, description, stock, price, id_categ) values ('CARBAMAZEPINE', 'Insert of Intspin Prcs Stabl Dev into Cerv Jt, Open Approach', 40, 7.8, 6);
insert into medicine (name, description, stock, price, id_categ) values ('Octinoxate', 'Bypass R Ext Iliac Art to B Int Ilia w Autol Art, Open', 40, 11.33, 7);
insert into medicine (name, description, stock, price, id_categ) values ('Ethyl', 'Removal of Pressure Dressing on Neck', 40, 17.55, 9);
insert into medicine (name, description, stock, price, id_categ) values ('DACARBAZINE', 'Removal of Autol Sub from Nose, Perc Endo Approach', 40, 13.48, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Benzocaine II', 'Reposition L Finger Phalanx Jt with Int Fix, Perc Approach', 40, 17.04, 9);
insert into medicine (name, description, stock, price, id_categ) values ('artemisia absinthium pollen', 'Reposition Left Sternoclavicular Joint, External Approach', 40, 11.52, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Lycopodium clavatum, Pulsatilla,', 'Replacement of L Elbow Jt with Autol Sub, Open Approach', 40, 11.54, 6);
insert into medicine (name, description, stock, price, id_categ) values ('Titanium Dioxide, Zinc Oxide, and Octinoxate', 'Removal of Drain Dev from Adrenal Gland, Perc Endo Approach', 40, 16.59, 7);
insert into medicine (name, description, stock, price, id_categ) values ('HYDROCODONE ACETAMINOPHEN', 'Removal of Infusion Device from Pancreat Duct, Perc Approach', 40, 18.69, 3);
insert into medicine (name, description, stock, price, id_categ) values ('FUROSEMIDE', 'LDR Brachytherapy of Chest using Palladium 103', 40, 9.77, 6);
insert into medicine (name, description, stock, price, id_categ) values ('topotecan hydrochloride', 'Excision of Left Lower Leg, Open Approach', 40, 17.47, 7);
insert into medicine (name, description, stock, price, id_categ) values ('OCTINOXATE and TITANIUM DIOXIDE', 'Dilate R Com Carotid w Intralum Dev, Perc Endo', 40, 5.53, 10);
insert into medicine (name, description, stock, price, id_categ) values ('LIDOCAINE', 'Receptive/Expressive Language Treatment using Oth Equip', 40, 7.91, 4);
insert into medicine (name, description, stock, price, id_categ) values ('Aloe Socotrina, Alumina, Apis Mellifica, Arsenicum Album, Baryta Carbonica, Bryonia, Carbo Vegetabilis, Chamomilla', 'Removal of Infusion Device from Lymphatic, Perc Approach', 40, 10.89, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Cultivated Rye', 'Bypass R Fem Art to R Femor A w Autol Vn, Perc Endo', 40, 11.73, 3);
insert into medicine (name, description, stock, price, id_categ) values ('Acetaminophen', 'Drainage of Esophageal Vein with Drain Dev, Perc Approach', 40, 16.23, 3);
insert into medicine (name, description, stock, price, id_categ) values ('GABAPENTIN', 'Release Right Finger Phalanx, Perc Endo Approach', 40, 13.59, 1);
insert into medicine (name, description, stock, price, id_categ) values ('diphenhydramine hydrochloride', 'Restriction of Esophagus with Intraluminal Device, Endo', 40, 13.38, 10);
insert into medicine (name, description, stock, price, id_categ) values ('Polyethylene Glycol 3350', 'Dilate L Subclav Art, Bifurc, w Drug-elut Intra, Perc', 40, 12.95, 10);
insert into medicine (name, description, stock, price, id_categ) values ('TOPIRAMATE', 'Perceptual Process Assess w Speech Analysis Equip', 40, 12.97, 4);
insert into medicine (name, description, stock, price, id_categ) values ('RANITIDINE HYDROCHLORIDE', 'Resection of Left Fallopian Tube, Via Opening w Perc Endo', 40, 3.02, 10);
insert into medicine (name, description, stock, price, id_categ) values ('BENZALKONIUM CHLORIDE', 'Excision of Right Acetabulum, Perc Endo Approach, Diagn', 40, 3.87, 9);
insert into medicine (name, description, stock, price, id_categ) values ('Tamoxifen Citrate', 'Introduction of Destr Agent into Bil/Panc Tract, Via Opening', 40, 10.1, 3);
insert into medicine (name, description, stock, price, id_categ) values ('KETOROLAC TROMETHAMINE', 'Detachment at Right Upper Leg, Mid, Open Approach', 40, 19.27, 2);
insert into medicine (name, description, stock, price, id_categ) values ('MENTHOL', 'Supplement Left Femoral Shaft with Autol Sub, Open Approach', 40, 18.67, 9);
insert into medicine (name, description, stock, price, id_categ) values ('Amitriptyline Hydrochloride', 'Inspection of C-thor Jt, Extern Approach', 40, 11.25, 5);
insert into medicine (name, description, stock, price, id_categ) values ('Dyspepsia', 'Drainage of Left Pelvic Bone, Percutaneous Approach', 40, 11.58, 1);
insert into medicine (name, description, stock, price, id_categ) values ('betamethasone dipropionate', 'Dilation of 4+ Cor Art with 4 Drug-elut, Open Approach', 40, 18.92, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Hydroxyzine Hydrochloride', 'Insertion of Ext Fix into R Finger Phalanx, Open Approach', 40, 3.25, 10);
insert into medicine (name, description, stock, price, id_categ) values ('valsartan', 'Removal of Synthetic Substitute from Bladder, Open Approach', 40, 16.69, 10);
insert into medicine (name, description, stock, price, id_categ) values ('CEPHALEXIN', 'Alteration of R Low Eyelid with Nonaut Sub, Extern Approach', 40, 14.63, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Arnica, Dulcamara, Berberis, Bryonia, Rhus tox', 'CT Scan of L Kidney using L Osm Contrast', 40, 4.31, 2);
insert into medicine (name, description, stock, price, id_categ) values ('Ibuprofen II', 'Plain Radiography of Thoracic Facet Jt using L Osm Contrast', 40, 18.78, 2);
insert into medicine (name, description, stock, price, id_categ) values ('ibuprofeno', 'Insertion of Spacer into R Carpal Jt, Perc Endo Approach', 40, 9.0, 1);
insert into medicine (name, description, stock, price, id_categ) values ('Isopropyl Alcohol', 'Dilate R Foot Art, Bifurc, w 4 Drug-elut, Perc', 40, 10.55, 3);
insert into medicine (name, description, stock, price, id_categ) values ('TRICLOSAN', 'Release Right Wrist Joint, Percutaneous Endoscopic Approach', 40, 6.17, 9);
insert into medicine (name, description, stock, price, id_categ) values ('formic acid', 'Removal of Monitoring Device from Spinal Cord, Perc Approach', 40, 7.37, 6);



