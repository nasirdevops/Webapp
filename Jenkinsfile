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
       stage('Publish') {
     nexusPublisher nexusInstanceId: 'localNexus', nexusRepositoryId: 'releases', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: '', filePath: '/var/lib/jenkins/workspace/nexusJenkinsPipeline/target/mvn-hello-world.war']], mavenCoordinate: [artifactId: 'mvn-hello-world', groupId: 'com.rajeev.hello_world', packaging: 'war', version: '0.0.1-SNAPSHOT']]]
   }
}
