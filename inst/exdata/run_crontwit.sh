#!/bin/bash

{
  sudo Rscript dpegantwitlib/inst/exdata/run_crontwit.R
} >> dpegantwitlib/inst/exdata/log/bash_log.txt
