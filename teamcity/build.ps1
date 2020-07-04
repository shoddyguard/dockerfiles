[CmdletBinding()]
param
(
    [Parameter(Mandatory = $false)]
    [string]
    $tag = 'latest',

    # Whether to push to Docker Hub or not
    [Parameter(Mandatory = $false)]
    [boolean]
    $push = $false
)

docker build -t "shoddyguard/teamcity-agent-chocolatey:$tag" -f 'agent/chocolatey/Dockerfile' .
if ($push)
{
    docker push "shoddyguard/teamcity-agent-chocolatey"
}
