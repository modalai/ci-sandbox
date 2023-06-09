echo "Hello Docker"
/bin/bash clean.sh
/bin/bash ci-tools/scripts/check-build-script.sh
/bin/bash make_package.sh deb timestamp
