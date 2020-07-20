#!/bin/bash

if ! make -s terraform-fmt DIR=infrastructure OPTS="-check -list=false" 2> /dev/null; then
  echo "$0: Please, format the Terraform files in 'infrastructure'"
  exit 1
fi
if ! make -s terraform-fmt DIR=build/automation/lib/terraform/template OPTS="-check -list=false" 2> /dev/null; then
  echo "$0: Please, format the Terraform files in 'build/automation/lib/terraform/template'"
  exit 1
fi
