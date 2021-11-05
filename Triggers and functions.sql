create trigger patients_GENDER 
before INSERT 
on 
Patients 
for each row 
set Patients.total = patients.male1 + patients.male2 + patients.male3, patients.per = patients.total * 60 / 100;
