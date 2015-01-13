class Jobs

  @@all_jobs = []

  define_method(:initialize) do |past_job, description|
    @past_job = past_job
    @description = description
  end

  define_method(:past_job) do
    @past_job
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(@past_job, @description)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end

end
