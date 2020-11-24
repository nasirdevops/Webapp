node {
      stage ('SCM Checkout'){
      git url: 'https://github.com/kasturirajeev/webapp.git'
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
}
