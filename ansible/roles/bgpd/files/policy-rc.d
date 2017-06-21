#!/bin/sh
case "$1" in 
  clagd.service|quagga.service)
    case "$2" in
      *start*) exit 101 ;;
      *)       exit 104 ;;
    esac
  ;;
  *)
    exit 104
  ;;
esac
