# docker-sonarqube

This is a Docker image based on [SonarQube 7.7-community](https://hub.docker.com/_/sonarqube/). It comes with [SpotBugs plugin](https://github.com/spotbugs/sonar-findbugs) installed. 

To add/remove plugins modify the Dockerfile and build your own version.

### Run the image locally

```bash
docker run -d --name sonar -p 9000:9000 --rm cesdperez/sonarqube-spotbugs
```

### Importign a _Quality profile_

1. You can export a _Quality profile_ being used in a remote Sonar server:
    - navigate to _Quality profiles_ menu in Sonar page
    - Select the desired profile
    - Click _Back up_. It'll download an XML file.

2. For importing the profile in your local sonar:
    - Navigate to http://localhost:9000/profiles
    - login as admin/admin
    - Click _Restore_ and select the previously generated XML file.

3. Set the new profile as default:
    - Navigate to the new profile in http://localhost:9000/profiles
    - Click the settings icon and select _Set as default_.

### Send _sonar-maven-plugin_ results to your server

```bash
mvn sonar:sonar -Dsonar.host.url=http://localhost:9000
```

### Bind your server to SonarLint

Use these settings
- url: http://localhost:9000
- user: admin
- password: admin