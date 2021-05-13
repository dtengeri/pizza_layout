#!/bin/sh

lcov --remove coverage/lcov.info 'lib/*/*.freezed.dart' 'lib/*/*.g.dart' -o coverage/lcov.info
genhtml -o coverage coverage/lcov.info