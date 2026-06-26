SELECT
    pid,
    usename,
    state,
    query
FROM pg_stat_activity;

SELECT
    state,
    COUNT(*)
FROM pg_stat_activity
GROUP BY state;

SELECT
    datname,
    numbackends,
    xact_commit,
    blks_read,
    blks_hit
FROM pg_stat_database;