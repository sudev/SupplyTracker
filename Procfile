release: bundle exec rake db:migrate db:seed_fu assets:precompile
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
