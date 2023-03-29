# Using the .NET official image for .NET 6.0
FROM mcr.microsoft.com/dotnet/sdk:6.0

# If you want to use a specific build, un-comment the ENV MCC_VERSION line (remove the # from the start)
# Then replace the <version> with a version of your choice (Example: MCC_VERSION=20220817-29)
#ENV MCC_VERSION=<version>

# Copy over the script and give it execution permissions
COPY start-latest.sh /opt/start.sh
RUN chmod 755 /opt/start.sh
RUN apt-get update && \ 
    apt-get install -y unzip && \
    mkdir /opt/data
ENTRYPOINT ["tail", "-f", "/dev/null"]