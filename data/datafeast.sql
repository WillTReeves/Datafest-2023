CREATE SCHEMA ABA;

CREATE TABLE ABA.statesites(
    id SMALLINT,
    stateabbr TEXT PRIMARY KEY,
    statename TEXT,
    allowedassets   INT,
    BaseIncomeLimit INT,
    PerHouseMemberIncomeLimit INT,
    IncomeMultiplier REAL
);
COPY ABA.statesites
FROM 'C:\Users\Public\SQL\datafeast\statesites.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM ABA.statesites;

DROP TABLE ABA.qposts;

CREATE TABLE ABA.qposts(
    id INT,
    stateabbr TEXT,
    questionuno TEXT,
    posttext TEXT,
    createdutc TEXT
)

COPY ABA.qposts
FROM 'C:\Users\Public\SQL\datafeast\qposts.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM ABA.qposts;


CREATE TABLE ABA.cat(
    id INT,
    stateabbr TEXT,
    categoryUno TEXT PRIMARY KEY,
    category TEXT
)

COPY ABA.cat
FROM 'C:\Users\Public\SQL\datafeast\categories.csv'
WITH (FORMAT CSV, HEADER);

Select * FROM ABA.cat


CREATE TABLE ABA.subcat(
    id INT,
    stateabbr TEXT,
    categoryuno TEXT ,
    subcategoryuno TEXT PRIMARY KEY,
    subcategory TEXT
)

COPY ABA.subcat
FROM 'C:\Users\Public\SQL\datafeast\subcategories.csv'
WITH (FORMAT CSV, HEADER);

Select * FROM ABA.subcat


CREATE TABLE ABA.timeentries(
    id INT,
    stateabbr TEXT,
    timeentryuno TEXT PRIMARY KEY,
    attorneyuno TEXT,
    "hours" TEXT,
    enteredonutc TEXT
)

COPY ABA.timeentries
FROM 'C:\Users\Public\SQL\datafeast\attorneytimeentries.csv'
WITH (FORMAT CSV, HEADER);

CREATE TABLE ABA.attorneys(
    id INT,
    stateabbr TEXT,
    attorneyuno TEXT PRIMARY KEY,
    city TEXT,
    county TEXT,
    statename TEXT,
    postalcode TEXT,
    createdutc TEXT
)

COPY ABA.attorneys
FROM 'C:\Users\Public\SQL\datafeast\attorneys.csv'
WITH (FORMAT CSV, HEADER);

DROP TABLE ABA.clients;

CREATE TABLE ABA.clients (
    id INT,
    stateabbr TEXT,
    clientuno TEXT PRIMARY KEY,
    county TEXT,
    statename TEXT,
    postalcode TEXT,
    ethnicidentity TEXT,
    age INT,
    gender TEXT,
    marirtalstatus TEXT,
    vetran TEXT,
    imprisoned TEXT,
    numinhouse INT,
    annualinc REAL,
    allowedinc REAL,
    checkingbal REAL,
    savingbal REAL,
    investbal REAL,
    createdutc timestamp
)

COPY ABA.clients
FROM 'C:\Users\Public\SQL\datafeast\clients.csv'
WITH (FORMAT CSV, HEADER);


DROP TABLE ABA.quesions;

CREATE TABLE ABA.quesions (
    id INT,
    stateabbr TEXT,
    questionuno TEXT PRIMARY KEY,
    category TEXT,
    categoryuno TEXT,
    subcategoryuno TEXT,
    subcategory TEXT,
    askedclientuno TEXT,
    askedonutc TIMESTAMP,
    takenbyattorneyuno TEXT,
    takenondate TIMESTAMP,
    closedbyattorneyuno TEXT,
    cosedonutc TIMESTAMP,
    legadeadline TIMESTAMP
)

COPY ABA.quesions
FROM 'C:\Users\Public\SQL\datafeast\questions.csv'
WITH (FORMAT CSV, HEADER);


SELECT * FROM ABA.quesions;