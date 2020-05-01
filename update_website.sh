#! /usr/bin/env sh

aws s3 rm s3://anhoang.xyz --recursive
aws s3 cp . s3://anhoang.xyz --recursive
