# Menggunakan image resmi SearXNG versi paling stabil
FROM searxng/searxng:latest

# Mengatur port internal agar sesuai dengan environment cloud
ENV SEARXNG_PORT=8080
ENV SEARXNG_BIND_ADDRESS=0.0.0.0

# Menonaktifkan fitur rate-limit bawaan SearXNG agar Pinger kita tidak diblokir
ENV SEARXNG_LIMITER=false

# Mengekspos port 8080 agar Back4app bisa merutekan trafik web ke sini
EXPOSE 8080

# (Opsional) Hilangkan tanda pagar di bawah ini JIKA Anda punya file settings.yml kustom
# COPY searxng/settings.yml /etc/searxng/settings.yml
