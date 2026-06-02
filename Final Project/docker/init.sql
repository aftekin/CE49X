-- CREATE TABLES
CREATE TABLE IF NOT EXISTS firms_detections (
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    brightness DOUBLE PRECISION,
    scan DOUBLE PRECISION,
    track DOUBLE PRECISION,
    acq_date VARCHAR(50),
    acq_time INT,
    satellite VARCHAR(100),
    confidence VARCHAR(50),
    bright_t31 DOUBLE PRECISION,
    frp DOUBLE PRECISION,
    daynight VARCHAR(10),
    country VARCHAR(100),
    area_label VARCHAR(100),
    bright_ti4 DOUBLE PRECISION
);

CREATE TABLE IF NOT EXISTS news_articles (
    date VARCHAR(100),
    news_source VARCHAR(100),
    title TEXT,
    link TEXT
);

CREATE TABLE IF NOT EXISTS thermal_events (
    sensor VARCHAR(50),
    n_points INT,
    centroid_lat DOUBLE PRECISION,
    centroid_lon DOUBLE PRECISION,
    max_brightness DOUBLE PRECISION,
    maxbrightness_ti4 DOUBLE PRECISION,
    average_confidence_rate VARCHAR(50),
    sum_frp DOUBLE PRECISION,
    max_frp DOUBLE PRECISION,
    earliest_detection VARCHAR(100),
    latest_detection VARCHAR(100),
    duration_hours DOUBLE PRECISION,
    centroid_country VARCHAR(100),
    centroid_area_label VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS event_matches (
    sensor VARCHAR(50),
    n_points INT,
    centroid_lat DOUBLE PRECISION,
    centroid_lon DOUBLE PRECISION,
    max_brightness DOUBLE PRECISION,
    maxbrightness_ti4 DOUBLE PRECISION,
    average_confidence_rate VARCHAR(50),
    sum_frp DOUBLE PRECISION,
    max_frp DOUBLE PRECISION,
    earliest_detection VARCHAR(100),
    latest_detection VARCHAR(100),
    duration_hours DOUBLE PRECISION,
    centroid_country VARCHAR(100),
    centroid_area_label VARCHAR(100),
    source_file VARCHAR(200),
    matched_news_count INT,
    nearest_delta_time_hours DOUBLE PRECISION,
    time_score DOUBLE PRECISION,
    action_impact_score DOUBLE PRECISION,
    conflict_word_score DOUBLE PRECISION,
    fire_word_score DOUBLE PRECISION,
    area_score DOUBLE PRECISION,
    keyword_hit_count INT,
    high_confidence_match BOOLEAN,
    total_score DOUBLE PRECISION,
    nearest_news_source VARCHAR(100),
    nearest_news_title TEXT
);

-- COPY DATA FROM CSVs
COPY firms_detections FROM '/var/lib/postgresql/data/firms_detections.csv' DELIMITER ',' CSV HEADER;
COPY news_articles FROM '/var/lib/postgresql/data/news_articles.csv' DELIMITER ',' CSV HEADER;
COPY thermal_events FROM '/var/lib/postgresql/data/thermal_events.csv' DELIMITER ',' CSV HEADER;
COPY event_matches FROM '/var/lib/postgresql/data/event_matches.csv' DELIMITER ',' CSV HEADER;
