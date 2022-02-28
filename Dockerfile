# Generated by IBM TransformationAdvisor
# Mon Feb 28 17:11:49 UTC 2022

FROM ibmcom/websphere-traditional:8.5.5.17-ubi

# put app and scripts and properties in /work/config
# put external library (e.g db driver) in /work/config/lib
COPY --chown=was:root modresorts-1.0.war /work/config/modresorts-1.0.war
COPY --chown=was:root ./src/config /work/config
COPY --chown=was:root ./lib /work/config/lib
RUN /work/configure.sh
