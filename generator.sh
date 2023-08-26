gem install bundler
cd mmv1
bundle install
./tools/doctor

make terraform VERSION=ga OUTPUT_PATH="$GOPATH/src/github.com/hashicorp/terraform-provider-google"
make terraform VERSION=beta OUTPUT_PATH="$GOPATH/src/github.com/hashicorp/terraform-provider-google-beta"

# Only generate a specific product (plus all common files)
make terraform VERSION=ga OUTPUT_PATH="$GOPATH/src/github.com/hashicorp/terraform-provider-google" PRODUCT=dataproc

rm -rf build/inspec
ruby compiler.rb -e inspec -p products/kms -t Location -o build/inspec