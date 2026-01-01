/* Create a sample dataset */
data students;
    input id name $ age gender $;
    datalines;
1 Ravi 22 M
2 Sita 21 F
3 Arjun 23 M
4 Meena 22 F
;
run;

/* Print the dataset */
proc print data=students;
run;

/* Sort data by age */
proc sort data=students;
    by age;
run;

/* Calculate average age */
proc means data=students;
    var age;
run;

/* Frequency of gender */
proc freq data=students;
    tables gender;
run; 
