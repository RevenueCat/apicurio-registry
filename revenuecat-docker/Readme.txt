These are our Dockerfile for the patched version of apicurio registry.
This is only needed because of https://linear.app/revenuecat/issue/COIN-1017/integrate-tools-in-deployment-workflow

First build the apicurio registry in the parent directory.
Note that with Java 21 you'll get an error with the jandex plugin - try an older JDK.

$ ./mvnw -DskipTests -Pprod clean install

Then run build+push-docker.sh to build the docker and push it.

# Rebasing changes

If you want to rebase the changes onto a different release the relevant commits are:

git cherry-pick 4971edeccdad8aa31d9133c87a1f226afae0888f  # this is the enhanced AvroContentCanonicalizer


