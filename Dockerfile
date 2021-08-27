FROM python:3.9.6-slim-bullseye
ARG WEASYPRINT_VERSION
ENV WEASYPRINT_VERSION=$WEASYPRINT_VERSION
RUN apt-get update && apt-get install -y --no-install-recommends libpango1.0
RUN pip install weasyprint==$WEASYPRINT_VERSION
WORKDIR /shared
#ENTRYPOINT ["/bin/sh", "-c", "weasyprint in.html out-${WEASYPRINT_VERSION}.pdf"]
ENTRYPOINT weasyprint in.html out-${WEASYPRINT_VERSION}.pdf
