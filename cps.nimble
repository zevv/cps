version = "0.7.0"
author = "disruptek"
description = "continuation-passing style"
license = "MIT"

when not defined(release):
  requires "https://github.com/disruptek/balls >= 3.8.1 & < 4.0.0"

task test, "run tests for ci":
  when defined(windows):
    exec "balls.cmd --gc:arc --gc:orc"
  else:
    exec "balls --gc:arc --gc:orc"

task demo, "generate the demos":
  exec """demo docs/tzevv.svg "nim c --out=\$1 tests/zevv.nim""""
  exec """demo docs/taste.svg "nim c --out=\$1 tests/taste.nim""""

task matrix, "generate the matrix":
  exec """demo docs/test-matrix.svg "balls" 34"""
