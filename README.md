# docker-sonarqube

This is a Docker image based on [SonarQube 7.7-community](https://hub.docker.com/_/sonarqube/). It comes with [SpotBugs plugin](https://github.com/spotbugs/sonar-findbugs) installed. 

To add/remove plugins modify the Dockerfile and build your own version.

### Run the image locally

```bash
docker run -d --name sonar -p 9000:9000 --rm cesdperez/sonarqube-spotbugs
```
