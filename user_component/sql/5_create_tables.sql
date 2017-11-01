/*
 * Copyright (c) 2017 Anzen Soluciones S.A. de C.V.
 * Mexico D.F.
 * All rights reserved.
 *
 * THIS SOFTWARE IS  CONFIDENTIAL INFORMATION PROPIETARY OF ANZEN SOLUCIONES.
 * THIS INFORMATION SHOULD NOT BE DISCLOSED AND MAY ONLY BE USED IN ACCORDANCE THE TERMS DETERMINED BY THE COMPANY ITSELF.
 */
-- this table must be created in each database
CREATE TABLE ACTIVATION_CODES (
    CLIENT VARCHAR(256) PRIMARY KEY,
    CODE VARCHAR(256) NOT NULL,
    ENABLE BOOLEAN NOT NULL DEFAULT FALSE,
    SALT VARCHAR(256) NOT NULL,
    COUNT_TO_ENABLE INTEGER NOT NULL DEFAULT 3
);
COMMENT ON COLUMN ACTIVATION_CODES.CLIENT IS 'IT IS THE CLIENT TO REGISTER';
COMMENT ON COLUMN ACTIVATION_CODES.CODE IS 'IT IS THE CODE GENERATED FOR SERVICE';
COMMENT ON COLUMN ACTIVATION_CODES.ENABLE IS 'IT IS TO KNOW IF A CLIENT IS ACTIVATE';
COMMENT ON COLUMN ACTIVATION_CODES.SALT IS 'IT IS TO VALIDATE THE CODE';