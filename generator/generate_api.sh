#!/bin/bash
# To run this, one needs
# openapi-generator, jinja2-cli, wget all of which are available via Homebrew.
# You'll also need Ruby to run the post-generation rubocop step.
#
# Run this from the root directory. Ex: ./generator/generate_api.sh v2.1.81

# A tag from https://github.com/athenianco/api-spec.
tag="$1"

if [[ -z "$tag" ]]; then
  echo "You must provide a tag from https://github.com/athenianco/api-spec as the first argument to this script."
  echo "Ex: ./generator/generate_api.sh v2.1.81"
  exit 1
fi

wget -O generator/openapi.yaml "https://raw.githubusercontent.com/athenianco/api-spec/$tag/openapi.yaml"
# The spec from Athenian needs at least `server_url` in order to generate correct
# code. Data is in the `template_data.json` file.
jinja2 generator/openapi.yaml generator/template_data.json > generator/openapi_generated.yaml

# Generate the API.
openapi-generator generate \
  -g ruby \
  -i generator/openapi_generated.yaml \
  -o ./ \
  -t generator/template \
  -c generator/generator_config.yml \
  "--additional-properties=gemVersion=${tag//v}"

# Can't get the CLI --ignore-file-override option to work so just delete the files we don't need. 🤷
rm .gitlab-ci.yml .travis.yml git_push.sh 
rm -rf .openapi-generator

# Autocorrect all Rubocop violations.
bundle install
bundle exec rubocop -a
