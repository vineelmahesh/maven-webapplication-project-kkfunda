node

{
    // /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.11/bin
    def mavenHome =tool name:"maven-3.9.11"
    stage ('git checkout')
    {
        git branch: 'scripted', url: 'https://github.com/vineelmahesh/maven-webapplication-project-kkfunda.git'
    }
    stage ('maven-build')
    {
        sh "${mavenHome}/bin/mvn clean package"
    }
    stage ('sonarQube')
    {
        sh "${mavenHome}/bin/mvn sonar:sonar"
    }
    stage ('deploy into nexus')
    {
        sh "${mavenHome}/bin/mvn clean deploy"
    }
     stage ('deploy into tomcat')
     {
         echo "deploying war file using curl..."
         sh """

      curl -u mahesh:admin \
--upload-file /var/lib/jenkins/workspace/bsnl-scripted/target/maven-web-application.war \
"http://54.235.60.179:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
         
         
     }
}


