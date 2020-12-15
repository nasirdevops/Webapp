node {
      stage ('SCM Checkout'){
      git url: 'https://github.com/nasirdevops/Webapp.git'
}
      stage('Mvn install'){
      def mvnHome = tool name: 'maven3.6.3', type: 'maven'
      def mvnCMD = "${mvnHome}/bin/mvn"
      sh "${mvnCMD} clean install"
      }
      stage('Mvn Compile'){
      def mvnHome = tool name: 'maven3.6.3', type: 'maven'
      def mvnCMD = "${mvnHome}/bin/mvn"
      sh "${mvnCMD} clean compile"
      }
      stage('Mvn Test'){
      def mvnHome = tool name: 'maven3.6.3', type: 'maven'
      def mvnCMD = "${mvnHome}/bin/mvn"
      sh "${mvnCMD} test"
      }
      stage('Mvn Package'){
      def mvnHome = tool name: 'maven3.6.3', type: 'maven'
      def mvnCMD = "${mvnHome}/bin/mvn"
      sh "${mvnCMD} clean package"
      }      
      stage('Upload Artifacts') {
      nexusArtifactUploader artifacts: [[artifactId: 'mvn-hello-world', classifier: 'debug', file: '/var/lib/jenkins/workspace/nexusJenkins/target/mvn-hello-world.war', type: 'war']], groupId: 'com.rajeev.hello_world', nexusUrl: 'http://13.64.169.57:8081/nexus/', nexusVersion: '8.1.16', protocol: 'http', repository: 'Nexus Repository', version: '0.0.1-SNAPSHOT'
      }
}
