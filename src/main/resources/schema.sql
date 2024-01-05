CREATE TABLE USER(
                      GUEST_ID BIGSERIAL PRIMARY KEY,
                      FIRST_NAME VARCHAR(64),
                      LAST_NAME VARCHAR(64),
                      EMAIL_ADDRESS VARCHAR(64),
                      ADDRESS VARCHAR(64),
                      COUNTRY VARCHAR(32),
                      STATE VARCHAR(12),
                      PHONE_NUMBER VARCHAR(24)
);

CREATE TABLE POST (
                      id BIGINT AUTO_INCREMENT PRIMARY KEY,
                      title VARCHAR(400) NOT NULL,
                      content VARCHAR(2000) NULL,
                      created timestamp
);

CREATE TABLE COMMENT (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         post_id BIGINT NOT NULL,
                         content VARCHAR(2000) NULL,
                         created timestamp
);

ALTER TABLE COMMENT
    ADD CONSTRAINT comment_post_id
        FOREIGN KEY (post_id) REFERENCES post(id)

