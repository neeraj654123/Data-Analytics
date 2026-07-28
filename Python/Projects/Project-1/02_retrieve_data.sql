use healthcare;

select * from diagnosis;
select * from labs;
select * from outcomes;
select * from patients;


-- Retrieve Detailed Patient's lab history
select p.PatientId, p.PatientName, d.DiagnosisName, o.outcomename, l.TestName, l.Result, l.NormalRange
from patients p
join diagnosis d on p.DiagnosisID = d.DiagnosisID
join outcomes o on p.OutcomeId = o.OutcomeID
join labs l on p.PatientID = l.PatientId
order by p.PatientId, l.TestName;

-- Average lab result by Diagnosis
select d.diagnosisname, l.testname, avg(l.result) as AverageResult
from patients p
join diagnosis d on p.DiagnosisID = d.DiagnosisID
join labs l on p.PatientID = l.PatientId
group by p.PatientId, l.testname;

-- Count of Abnormal lab results
select p.patientid, p.patientname, count(*) as Abnormalcount
from patients p
join labs l on p.patientid=l.patientid
where (l.testname="Blood Sugar" and Result >120) or
	  (l.testname="Cholestrol" and Result >200)  or
	  (l.testname="Hemoglobin" and Result >13)   or
	  (l.testname="Hemoglobin" and Result >13)   
      group by p.patientid, p.patientname
      order by Abnormalcount desc;

-- Diagnosis with highest Treatment Cost
select d.DiagnosisName, max(p.TreatmentCost) as HighestTreatmentCost
from patients p
join diagnosis d on p.diagnosisid = d.diagnosisid
group by d.DiagnosisName
order by HighestTreatmentCost desc;

-- Patients by risk by Age and Gender
select p.patientid, p.patientname, p.age, p.gender, d.DiagnosisName
from patients p
join outcomes o on p.outcomeid=o.outcomeid
join diagnosis d on p.DiagnosisID=d.DiagnosisID
where (p.age >55 and gender="M" and o.outcomeid=2) or
	  (p.age >65 and gender="F" and o.outcomeid=2);