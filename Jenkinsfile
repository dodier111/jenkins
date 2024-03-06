pipeline{
agent any
stages{
stage("clean ws")
{
steps{
sh 'rm -r *'
sh 'sudo rm -r /var/www/html/*'}
}
stage("clone")
{
steps{
sh 'git clone https://github.com/dodier111/jenkins.git -b master'
}}
stage("deploy")
{
steps{
sh 'sudo mv * /var/www/html/'
}
}
}
}
