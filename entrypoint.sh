#!/bin/bash

set -e

sonar-scanner -X -Dsonar.host.url=$INPUT_URL -Dsonar.login=$INPUT_TOKEN -Dsonar.projectVersion=$(cat VERSION)