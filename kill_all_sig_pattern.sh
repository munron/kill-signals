#!/bin/bash

SIGNALS=(
  "SIGHUP"      "SIGINT"      "SIGQUIT"    "SIGILL"      "SIGTRAP"
  "SIGABRT"     "SIGBUS"      "SIGFPE"     "SIGKILL"     "SIGUSR1"
  "SIGSEGV"     "SIGUSR2"     "SIGPIPE"    "SIGALRM"     "SIGTERM"
  "SIGSTKFLT"   "SIGCHLD"     "SIGCONT"    "SIGSTOP"     "SIGTSTP"
  "SIGTTIN"     "SIGTTOU"     "SIGURG"     "SIGXCPU"     "SIGXFSZ"
  "SIGVTALRM"   "SIGPROF"     "SIGWINCH"   "SIGIO"       "SIGPWR"
  "SIGSYS"      "SIGRTMIN"
)

for ((i = 0; i < ${#SIGNALS[@]}; i++)) {
    sleep 0.1
    ./loop &
    kill -s "${SIGNALS[i]}" $!
    kill -9 $!
    echo "SIGNALS[$i] = ${SIGNALS[i]}"
}

