# sonarqube-scanner-trigger

Simple action to automatically trigger a call to sonnar-scanner.


### Usage

workflow.yml
```yml
name: Push to dev branch

on:
  push:
    branches: [dev]

jobs:
  analyze:
    runs-on: ubuntu-latest
    timeout-minutes: 5

    steps:
    - name: SonarQube Scan
      uses: fedecalendino/sonarqube-scanner-trigger@main
      with:
        url: ${{ secrets.SONARQUBE_URL }}
        token: ${{ secrets.SONARQUBE_TOKEN }}
```


### SetUp

To be able to use this a SonarQube Server must be already setted up. Here is how you can set up your own: https://docs.sonarqube.org/latest/setup/get-started-2-minutes/

This action will expect the following files at the root of the project:

  * `sonar-project.properties`: Typical configuration of any sonar project.
  * `VERSION`: Containing the current version of the project, it will be used as `sonar.projectVersion`.

