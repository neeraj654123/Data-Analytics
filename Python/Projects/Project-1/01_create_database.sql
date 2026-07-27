-- This query will create a new database named as healthcare
Create database healthcare;

Use healthcare;

create table diagnosis(
DiagnosisID int primary key,
DiagnosisName varchar(225));

create table outcomes(
OutcomeID int primary key,
OutcomeName varchar(225));

create table patients(
PatientID int primary key,
PatientName varchar(225),
Age int,
Gender varchar(1),
DiagnosisID int,
AdmissionDate Date,
DischargeDate Date,
OutcomeID int,
TreatmentCost decimal(10,2),
foreign key (DiagnosisID) references diagnosis(DiagnosisID),
foreign key (OutcomeID) references outcomes(OutcomeID));

create table labs(
LabID int primary key,
PatientID int ,
TestName varchar(225),
Result decimal(10,2),
NormalRange varchar(225),
foreign key (PatientID) references patients(PatientID));