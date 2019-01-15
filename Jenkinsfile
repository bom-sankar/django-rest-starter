#!groovy

node {

    try {
        stage 'Checkout'
            git url: 'https://github.com/bom-sankar/django-rest-starter.git'

            //sh 'git log HEAD^..HEAD --pretty="%h %an - %s" > GIT_CHANGES'
            //def lastChanges = readFile('GIT_CHANGES')
            //slackSend color: "warning", message: "Started `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n_The changes:_\n${lastChanges}"

        stage 'Test'
            sh 'virtualenv env -p python3.5'
            sh '. env/bin/activate'
            sh 'env/bin/pip install -r requirements.txt'
            sh 'echo "Test run complete"'

        stage 'Deploy'
            sh './deployment/deploy_prod.sh'

        stage 'Publish results'
            sh 'echo "result published"'
            //slackSend color: "good", message: "Build successful: `${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"
    }

    catch (err) {
        //slackSend color: "danger", message: "Build failed :face_with_head_bandage: \n`${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"

        throw err
    }

}