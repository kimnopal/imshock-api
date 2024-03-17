CREATE TABLE
    IF NOT EXISTS schedules (
        id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        date INT UNSIGNED NOT NULL,
        imsak VARCHAR(50) NOT NULL,
        subuh VARCHAR(50) NOT NULL,
        syuruq VARCHAR(50) NOT NULL,
        zuhur VARCHAR(50) NOT NULL,
        asar VARCHAR(50) NOT NULL,
        magrib VARCHAR(50) NOT NULL,
        isya VARCHAR(50) NOT NULL,
        year_id BIGINT UNSIGNED NOT NULL,
        city_id BIGINT UNSIGNED NOT NULL,
        CONSTRAINT fk_schedule_year FOREIGN KEY (year_id) REFERENCES years (id),
        CONSTRAINT fk_schedule_city FOREIGN KEY (city_id) REFERENCES cities (id)
    ) engine = InnoDB;