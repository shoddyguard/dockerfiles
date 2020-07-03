[CmdletBinding()]
param
(
    [Parameter(Mandatory = $false)]
    [string]
    $tag = 'latest'
)

docker build -t "shoddyguard/teamcity-agent-chocolatey:$tag" -f 'teamcity/agent/chocolatey/Dockerfile' .
docker push "shoddyguard/teamcity-agent-chocolatey"