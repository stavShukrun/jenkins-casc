FROM jenkins/jenkins:lts

# Skip the setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Coping files && set config path
COPY ./jenkins-casc.yaml /var/jenkins-casc.yaml
ENV CASC_JENKINS_CONFIG /var/jenkins-casc.yaml

# Installing plugins.txt
COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --clean-download-directory --list --view-security-warnings -f /usr/share/jenkins/ref/plugins.txt