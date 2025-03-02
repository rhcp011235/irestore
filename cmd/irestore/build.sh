# Build script made by rhcp011235
# t.me/rhcp011235
#

    #!/bin/bash
    
    architectures=("linux/amd64" "windows/amd64" "darwin/amd64" "darwin/arm64" "linux/arm64")
    
    for arch in "${architectures[@]}"; do
        os=$(echo "$arch" | cut -d'/' -f1)
        architecture=$(echo "$arch" | cut -d'/' -f2)
        
        env GOOS="$os" GOARCH="$architecture" go build -o "myapp_${os}_${architecture}"
    done

