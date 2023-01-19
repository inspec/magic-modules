cd mmv1
rm -rf build/inspec
ruby compiler.rb -e inspec -p products/kms -t Location -o build/inspec