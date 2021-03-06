--This lists all the job applicants;
CREATE TABLE APPLICANT (
APP_ID   INT    NOT NULL PRIMARY KEY,
POS_APPLIED_FOR VARCHAR(255),  
APP_F_NAME      VARCHAR(255)  NOT NULL,
APP_L_NAME      VARCHAR(255)  NOT NULL,
INTERVIEW_STAGE VARCHAR(255),  
JOB_AREA        VARCHAR(255)  
);

INSERT INTO APPLICANT (APP_ID, POS_APPLIED_FOR, APP_F_NAME, APP_L_NAME, INTERVIEW_STAGE, JOB_AREA)
VALUES (342104, 'D_ANALYST', 'MICHAEL', 'SMITH', 'ADVANCE', 'T');
INSERT INTO APPLICANT VALUES (342216, 'EXEC_ASST', 'TERRANCE', 'ERICSSON', 'ADVANCE', 'A');
INSERT INTO APPLICANT VALUES (342687, 'H_DESK', 'SANDRA', 'JOHNSON', 'ADVANCE', 'T');
INSERT INTO APPLICANT VALUES (342125, 'IT_AUDIT', 'SUSAN', 'ZHANG', 'DENIED', 'F');
INSERT INTO APPLICANT VALUES (342548, 'CFO', 'BRADLEY', 'STEVENSON', 'DENIED', 'S');
INSERT INTO APPLICANT VALUES (342026, 'CLOUD_ENGINEER', 'WILLIAM', 'DAVIS', 'ADVANCE', 'T');
INSERT INTO APPLICANT VALUES (342333, 'FDESK_CLERK', 'DEBRA', 'MURPHY', 'DENIED', 'A');
INSERT INTO APPLICANT VALUES (342764, 'VP_OPERATIONS', 'ANNE', 'JACOBS', 'ADVANCE', 'S');
INSERT INTO APPLICANT VALUES (342392, 'FIN_ANALYST', 'LORI', 'SMITH', 'ADVANCE', 'F');
INSERT INTO APPLICANT VALUES (342009, 'WEB_DEV', 'MICHAEL', 'ANDERSON', 'DENIED', 'T');
INSERT INTO APPLICANT VALUES (342638, 'IT_DIRECTOR', 'ALEXANDER', 'WASHINGTON', 'ADVANCE', 'S');
INSERT INTO APPLICANT VALUES (342178, 'EXEC_ASST', 'KAREN', 'STUART', 'ADVANCE', 'A');
INSERT INTO APPLICANT VALUES (342813, 'RISK_MGMT', 'MICHELLE', 'WILKENSON', 'DENIED', 'F');
INSERT INTO APPLICANT VALUES (342555, 'D_ANALYST', 'JOSE', 'DIAZ', 'ADVANCE', 'T');
INSERT INTO APPLICANT VALUES (342902, 'EXEC_ASST', 'NICHOLAS', 'JOHNSON', 'DENIED', 'A');
INSERT INTO APPLICANT VALUES (342512, 'CFO', 'VICTOR', 'TRAVIS', 'ADVANCE', 'S');
INSERT INTO APPLICANT VALUES (342586, 'FIN_ANALYST', 'RYAN', 'PALMER', 'DENIED', 'F');
INSERT INTO APPLICANT VALUES (342416, 'IT_AUDIT', 'JERRY', 'TURNER', 'DENIED', 'F');
INSERT INTO APPLICANT VALUES (342188, 'OFF_CLERK', 'AMANDA', 'WOLF', 'ADVANCE', 'A');
INSERT INTO APPLICANT VALUES (342834, 'VP_OPERATIONS', 'HAROLD', 'YANG', 'DENIED', 'S');

--This table lists the employees who received help in getting an interview;
CREATE TABLE EMPLOYEE_REFERENCE (
EMP_ID    INT     NOT NULL, 
APP_ID    INT     NOT NULL,
EMP_JOB_AREA  VARCHAR(255)   NOT NULL,
PRIMARY KEY (EMP_ID, APP_ID),
FOREIGN KEY (APP_ID) REFERENCES APPLICANT(APP_ID)
);


INSERT INTO EMPLOYEE_REFERENCE (EMP_ID, APP_ID, EMP_JOB_AREA)
VALUES (789682, 342125, 'F');
INSERT INTO EMPLOYEE_REFERENCE VALUES (789920, 342687, 'T');
INSERT INTO EMPLOYEE_REFERENCE VALUES (789521, 342216, 'F');
INSERT INTO EMPLOYEE_REFERENCE VALUES (789466, 342104, 'F');
INSERT INTO EMPLOYEE_REFERENCE VALUES (789211, 342548, 'S');

--This table shows who interviewed the applicant, where, and on what date;
CREATE TABLE INTERVIEWER (
INTERVIEWER_ID  VARCHAR(255)  NOT NULL,
INTERVIEW_DATE  VARCHAR(255),
ROOM_NUM INT NOT NULL,
APP_ID          INT  NOT NULL REFERENCES APPLICANT,
PRIMARY KEY (INTERVIEWER_ID, INTERVIEW_DATE)
);


INSERT INTO INTERVIEWER (INTERVIEWER_ID, INTERVIEW_DATE, ROOM_NUM, APP_ID)
VALUES ('T3', '09/14/2020', 326, 342104);
INSERT INTO INTERVIEWER VALUES ('A1', '05/26/2021', 116, 342216);
INSERT INTO INTERVIEWER VALUES ('T1', '07/03/2020', 206, 342687);
INSERT INTO INTERVIEWER VALUES ('F2', '10/14/2021', 430, 342125);
INSERT INTO INTERVIEWER VALUES ('S3', '02/03/2020', 608, 342548);
INSERT INTO INTERVIEWER VALUES ('T2', '05/06/2021', 216, 342026);
INSERT INTO INTERVIEWER VALUES ('A3', '01/26/2020', 103, 342333);
INSERT INTO INTERVIEWER VALUES ('S2', '08/14/2021', 602, 342764);
INSERT INTO INTERVIEWER VALUES ('F2', '05/10/2021', 430, 342392);      
INSERT INTO INTERVIEWER VALUES ('T3', '10/02/2021', 326, 342009);       
INSERT INTO INTERVIEWER VALUES ('S1', '08/17/2020', 607, 342638);        
INSERT INTO INTERVIEWER VALUES ('A2', '04/12/2021', 125, 342178);        
INSERT INTO INTERVIEWER VALUES ('F1', '02/14/2020', 401, 342813);     
INSERT INTO INTERVIEWER VALUES ('T1', '01/20/2021', 206, 342555);  
INSERT INTO INTERVIEWER VALUES ('A1', '10/04/2020', 116, 342902);        
INSERT INTO INTERVIEWER VALUES ('S3', '04/17/2020', 608, 342512);     
INSERT INTO INTERVIEWER VALUES ('F3', '05/13/2021', 506, 342586);       
INSERT INTO INTERVIEWER VALUES ('F2', '07/12/2021', 430, 342416);     
INSERT INTO INTERVIEWER VALUES ('A3', '02/25/2021', 103, 342188);        
INSERT INTO INTERVIEWER VALUES ('S2', '01/15/2021', 602, 342834);       




--This table shows which applicants want a tech job and how they qualify;
CREATE TABLE TECH (
APP_ID   INT    NOT NULL,
POS_APPLIED_FOR   VARCHAR(255)    NOT NULL,
TECH_CERTS     INT   NOT NULL,    
YEARS_EXP      INT           NOT NULL,
PRIMARY KEY (APP_ID, POS_APPLIED_FOR)
);

INSERT INTO TECH (APP_ID, POS_APPLIED_FOR, TECH_CERTS, YEARS_EXP)
VALUES (342104, 'D_ANALYST', 4, 5);
INSERT INTO TECH VALUES (342687, 'H_DESK', 2, 1);
INSERT INTO TECH VALUES (342026, 'CLOUD_ENGINEER', 5, 2);
INSERT INTO TECH VALUES (342009, 'WEB_DEV', 4, 6);
INSERT INTO TECH VALUES (342555, 'D_ANALYST', 3, 2);



--This table shows who wants a finance job and their qualifications;
CREATE TABLE FINANCIAL(
APP_ID             INT   NOT NULL,
POS_APPLIED_FOR    VARCHAR(255)    NOT NULL,
YEARS_EXP       INT     NOT NULL, 
FIN_CERTS      INT      NOT NULL,
PRIMARY KEY (APP_ID, POS_APPLIED_FOR)
);

INSERT INTO FINANCIAL (APP_ID, POS_APPLIED_FOR, YEARS_EXP, FIN_CERTS)
VALUES (342125, 'IT_AUDIT', 3, 2);
INSERT INTO FINANCIAL VALUES (342392, 'FIN_ANALYST', 4, 3);
INSERT INTO FINANCIAL VALUES (342813, 'RISK_MGMT', 2, 3);
INSERT INTO FINANCIAL VALUES (342586, 'FIN_ANALYST', 5, 3);
INSERT INTO FINANCIAL VALUES (342416, 'IT_AUDIT', 4, 4);


--This table shows who wants an administrative type position;
CREATE TABLE ADMINISTRATIVE (
APP_ID     INT     NOT NULL,
POS_APPLIED_FOR    VARCHAR(255)   NOT NULL,
YEARS_EXP    INT    NOT NULL,
PRIMARY KEY (APP_ID, POS_APPLIED_FOR),
FOREIGN KEY (APP_ID) REFERENCES APPLICANT(APP_ID)
);

INSERT INTO ADMINISTRATIVE (APP_ID, POS_APPLIED_FOR, YEARS_EXP)
VALUES (342216, 'EXEC_ASST', 5);
INSERT INTO ADMINISTRATIVE VALUES (342333, 'F_DESK_CLERK', 1);
INSERT INTO ADMINISTRATIVE VALUES (342178, 'EXEC_ASST', 7);
INSERT INTO ADMINISTRATIVE VALUES (342902, 'EXEC_ASST', 2);
INSERT INTO ADMINISTRATIVE VALUES (342188, 'OFF_CLERK', 4);


--This table shows the applicants who want a c-suite/upper-level position and their qualifications;
CREATE TABLE SENIOR_MGMT(
APP_ID   INT NOT NULL,
POS_APPLIED_FOR   VARCHAR(255)   NOT NULL,
HIGHEST_ED_DEGREE   VARCHAR(255) NOT NULL,
PREV_MGMT_POSITIONS INT  NOT NULL,
PRIMARY KEY (APP_ID, POS_APPLIED_FOR),
FOREIGN KEY (APP_ID) REFERENCES APPLICANT(APP_ID)
);

INSERT INTO SENIOR_MGMT (APP_ID, POS_APPLIED_FOR, HIGHEST_ED_DEGREE, PREV_MGMT_POSITIONS)
VALUES (342548, 'CFO', 'MBA', '2');
INSERT INTO SENIOR_MGMT VALUES (342764, 'VP_OPERATIONS', 'MBA', 1);
INSERT INTO SENIOR_MGMT VALUES (342638, 'IT_DIRECTOR', 'BS', 2);
INSERT INTO SENIOR_MGMT VALUES (342512, 'CFO', 'MBA', 4);
INSERT INTO SENIOR_MGMT VALUES (342834, 'VP_OPERATIONS', 'MBA', 3);