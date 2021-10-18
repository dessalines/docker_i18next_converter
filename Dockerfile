FROM node:latest
WORKDIR /test
RUN yarn global add i18next-v4-format-converter
RUN echo '{ "user": "{{count}} user", "user_plural": "{{count}} users" }' > test.json
RUN cat test.json
RUN i18next-v4-format-converter
RUN cat test.json
