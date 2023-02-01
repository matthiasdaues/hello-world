# Create a folder
mkdir ~/actions-runner && cd ~/actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.301.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.301.1/actions-runner-linux-x64-2.301.1.tar.gz
# Optional: Validate the hash
echo "3ee9c3b83de642f919912e0594ee2601835518827da785d034c1163f8efdf907  actions-runner-linux-x64-2.301.1.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.301.1.tar.gz

# Create the runner and start the configuration experience
./config.sh --url https://github.com/matthiasdaues/hello-world --token AAESZ3US26KKTY2A3QNLC5LD3JWW6
# Last step, run it!
./run.sh

# Using the runner
# 
# runs-on: self-hosted