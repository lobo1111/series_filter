path = "/opt/sort_series/config.yml"
config = dict(
    tasks = dict(
	sort_series = dict(
	    disable = ["retry_failed", "seen", "seen_info_hash"],
            thetvdb_lookup = True,
            metainfo_series = True,
            filesystem = dict(
                path = "/opt/complete",
                regexp = ".*\.(avi|mkv|mp4)$",
                recursive = True
            ),
            seen = "local",
            regexp = dict(
                reject = ["sample"]
            ),
            require_field = "series_name",
            accept_all = True,
            move = dict(
                to = "/mnt/storage/video/seriale/{{series_name}}/Season {{series_season|pad(2)}}",
                filename = "{{series_name}} - {{series_id}}",
                clean_source = 50
            )
	)
    )
)
