#!/usr/bin/env bash
set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
# Optional: Reset seed data on each deploy
# DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:seed:replant