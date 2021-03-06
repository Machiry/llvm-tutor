; RUN:  opt -load %shlibdir/libStaticCallCounter%shlibext --legacy-static-cc -analyze %S/Inputs/CallCounterInput.ll \
; RUN:   | FileCheck %s

; Test StaticCallCounter when run through opt.
; CHECK: bar                  2
; CHECK: fez                  1
; CHECK: foo                  3
