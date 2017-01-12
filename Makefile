default: clone
	@docker run -it --rm --name my-maven-project -v ${PWD}/aws-codebuild-jenkins-plugin:/usr/src/mymaven -w /usr/src/mymaven maven:3.2-jdk-7 mvn install
	@ls -la aws-codebuild-jenkins-plugin/target/aws-codebuild.hpi

clone: clean
	@git clone https://github.com/awslabs/aws-codebuild-jenkins-plugin

clean:
	@rm -rf aws-codebuild-jenkins-plugin 
