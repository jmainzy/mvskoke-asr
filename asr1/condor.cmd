executable = condor-run.sh
getenv     = true
output     = run.out
error      = run.error
log        = run.log
notification = complete
transfer_executable = false
request_memory = 1*1024
request_GPUs = 1
queue
