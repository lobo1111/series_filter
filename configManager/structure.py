path = "/opt/sort_series/config.yml"
config = dict(
    tasks = dict(
	sort_series = dict(
	    disable = ["retry_failed", "seen", "seen_info_hash"],
            thetvdb_lookup = "yes",
            metainfo_series = "yes",
            filesystem = dict(
                path = "/opt/complete",
                regexp = ".*\.(avi|mkv|mp4)$",
                recurisve = "yes"
            ),
            seen = "local",
            regexp = dict(
                reject = ["sample"]
            ),
            require_filed = "series_name",
            accept_all = "yes",
            move = dict(
                to = "/mnt/storage/video/seriale/{{series_name}}/Season {{series_season|pad(2)}}",
                filename = "{{series_name}} - {{series_id}}",
                clean_source = 50
            )
	)
    )
)
