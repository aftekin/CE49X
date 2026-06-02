FROM postgres:16

# Copy initialization SQL scripts
COPY init.sql /docker-entrypoint-initdb.d/

# Copy CSV datasets to a directory inside the container
COPY data/firms_detections.csv /var/lib/postgresql/data/
COPY data/news_articles.csv /var/lib/postgresql/data/
COPY data/thermal_events.csv /var/lib/postgresql/data/
COPY data/event_matches.csv /var/lib/postgresql/data/
