--Query to create the database schema.

--drop table if it exists
drop table if exists demographics;
--create a table for demographics csv file
CREATE TABLE demographics (
	location_key VARCHAR(50),
	population INTEGER,
	population_male INTEGER,
	population_female INTEGER,
	population_rural INTEGER,
	population_urban INTEGER,
	population_largest_city INTEGER,
	population_clustered INTEGER,
	population_density FLOAT,
	human_development_index FLOAT,
	population_age_00_09 INTEGER,
	population_age_10_19 INTEGER,
	population_age_20_29 INTEGER,
	population_age_30_39 INTEGER,
	population_age_40_49 INTEGER,
	population_age_50_59 INTEGER,
	population_age_60_69 INTEGER,
	population_age_70_79 INTEGER,
	population_age_80_and_older INTEGER
);
--drop table if it exists
drop table if exists geography;
--create a table for geography csv file
CREATE TABLE geography (
	location_key VARCHAR(50),
	openstreetmap_id INTEGER,
	latitude FLOAT,
	longitude FLOAT,
	elevation_m INTEGER,
	area_sq_km INTEGER,
	area_rural_sq_km INTEGER,
	area_urban_sq_km INTEGER,
	PRIMARY KEY (location_key)
);
--drop table if it exists
drop table if exists vaccinations;
--create table for vaccinations csv file
CREATE TABLE vaccinations (
 date DATE,
 location_key VARCHAR(50),
 new_persons_vaccinated INTEGER,
 cumulative_persons_vaccinated INTEGER,
 new_persons_fully_vaccinated INTEGER,
 cumulative_persons_fully_vaccinated INTEGER,
 new_vaccine_doses_administered INTEGER,
 cumulative_vaccine_doses_administered BIGINT,
 new_persons_vaccinated_pfizer INTEGER,
 cumulative_persons_vaccinated_pfizer INTEGER,
 new_persons_fully_vaccinated_pfizer INTEGER,
 cumulative_persons_fully_vaccinated_pfizer INTEGER,
 new_vaccine_doses_administered_pfizer INTEGER,
 cumulative_vaccine_doses_administered_pfizer INTEGER,
 new_persons_vaccinated_moderna INTEGER,
 cumulative_persons_vaccinated_moderna INTEGER,
 new_persons_fully_vaccinated_moderna INTEGER,
 cumulative_persons_fully_vaccinated_moderna INTEGER,
 new_vaccine_doses_administered_moderna INTEGER,
 cumulative_vaccine_doses_administered_moderna INTEGER,
 new_persons_vaccinated_janssen INTEGER,
 cumulative_persons_vaccinated_janssen INTEGER,
 new_persons_fully_vaccinated_janssen INTEGER,
 cumulative_persons_fully_vaccinated_janssen INTEGER,
 new_vaccine_doses_administered_janssen INTEGER,
 cumulative_vaccine_doses_administered_janssen INTEGER,
 new_persons_vaccinated_sinovac INTEGER,
 total_persons_vaccinated_sinovac INTEGER,
 new_persons_fully_vaccinated_sinovac INTEGER,
 total_persons_fully_vaccinated_sinovac INTEGER,
 new_vaccine_doses_administered_sinovac INTEGER,
 total_vaccine_doses_administered_sinovac INTEGER
);

