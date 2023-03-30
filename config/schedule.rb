# frozen_string_literal: true

set :environment, 'development'
set :output, './log/cron_log.log'

every 1.minute do
  rake 'update_point'
end
