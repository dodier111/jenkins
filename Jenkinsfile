pipeline{
agent any
stages{
stage("clean ws")
{
steps{
sh 'rm -r *'
sh 'rm -r /var/www/html/*'}
}
stage("clone")
{
steps{
sh 'git clone https://gitlab.com/dodier111/jenkins.git -b master'
}}
stage("deploy")
{
steps{
sh 'mv * /var/www/html/'
}
}
}
}
