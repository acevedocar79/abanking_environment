/* 
 * Copyright (c) 2017 Anzen Soluciones S.A. de C.V.
 * Mexico D.F.
 * All rights reserved.
 * 
 * THIS SOFTWARE IS  CONFIDENTIAL INFORMATION PROPIETARY OF ANZEN SOLUCIONES.
 * THIS INFORMATION SHOULD NOT BE DISCLOSED AND MAY ONLY BE USED IN ACCORDANCE THE TERMS DETERMINED BY THE COMPANY ITSELF.
 */
-- the first values
INSERT INTO CCS_CRED_PARAMS VALUES (1, 'ScotiaLeap', 1, 20, 8, 8, 20, 3);
-- the first values

-- start scotia_leap_info
CREATE TABLE CCS_SCOTIA_LEAP_INFO(
    CUSTOMER_ID BIGINT NOT NULL,
    ACCT_ID INTEGER NOT NULL,
    CUST_ID INTEGER NOT NULL,
    CLIENT_NAME VARCHAR(255) NOT NULL,
    IS_CARD_PRIMARY BOOLEAN NOT NULL,

    CONSTRAINT pk_scotia_leap_info PRIMARY KEY (CUSTOMER_ID, ACCT_ID, CUST_ID),
    CONSTRAINT fk_ccs_customer_mast_scotia_leap FOREIGN KEY (CUSTOMER_ID) REFERENCES CCS_CUSTOMER_MAST (CUSTOMER_ID)
);
-- end scotia_leap_info