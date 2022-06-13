provider "aws" {
  shared_config_files      = ["/home/unthinkable-lap-0286/.aws/config"]
  shared_credentials_files = ["/home/unthinkable-lap-0286/.aws/credentials"]
  profile                  = "tf-user"
}