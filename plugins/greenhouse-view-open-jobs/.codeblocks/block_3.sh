steps:
  - action:
      action_name: fetch_open_jobs
      output_key: fetch_open_jobs_result
  - return:
      output_mapper:
        job_details: data.fetch_open_jobs_result
