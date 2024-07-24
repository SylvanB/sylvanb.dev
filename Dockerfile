FROM klakegg/hugo:ext-alpine AS builder

# Base URL
ARG HUGO_BASEURL=https://sylvanb.dev
ENV HUGO_BASEURL=${HUGO_BASEURL}
# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo
# Set the fallback 404 page if defaultContentLanguageInSubdir is enabled, please replace the `en` with your default language code.
# RUN cp ./public/en/404.html ./public/404.html


FROM pierrezemb/gostatic
COPY --from=builder /src/public /srv/http
