CREATE TABLE
    IF NOT EXISTS cities (
        id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        name VARCHAR(255) NOT NULL,
        state_id BIGINT UNSIGNED NOT NULL,
        CONSTRAINT fk_city_state FOREIGN KEY (state_id) REFERENCES states (id)
    ) engine = InnoDB;