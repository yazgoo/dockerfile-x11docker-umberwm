#!/bin/bash
case $((1 + $RANDOM % 4)) in
  1) hsetroot -solid '#11052C';;
  2) hsetroot -solid '#3D087B';;
  3) hsetroot -solid '#F43B86';;
  4) hsetroot -solid '#FFE459';;
esac
