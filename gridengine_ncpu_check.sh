#!/bin/bash
declare -A TOTAL
TOTAL=()
qhost -j | sed -e "\$a END" | tail -n +3 |  grep -v ^"\s"*job | grep -v ^"\s"*------ |  while read LINE;
do
  HOST=$(echo ${LINE} | awk '{print $1;}' | grep  -v ^'[0-9]')
  RET=$?
  if [ ${RET} -eq 0 ]; then
    CHECK=$(echo "$LINE" | awk '{print $8;}')
    if [  -n "${CHECK}" -o "END" = "$LINE" ]; then
      for i in ${!TOTAL[@]}; do
        echo "[$i]=>[${TOTAL[$i]}] NCPU"
      done
      echo
      echo "$LINE"
    fi
    TOTAL=()
  else
    ACCOUNT=$(echo ${LINE} | awk '{print $4;}')
    JOBID=$(echo ${LINE} | awk '{print $1;}')
    NCPUPART=$(qstat -j ${JOBID} | grep ^'hard resource_list' |grep ncpu)
    RETNCPUPART=$?
    NCPU=1
    if [ ${RETNCPUPART} -eq 0  ]; then
      NCPU="MUSTBEEXTRACT"
      NCPU=$(qstat -j ${JOBID} | grep ^'hard resource_list' |grep ncpu|sed 's/.*ncpu=\([0-9]*\)/\1/g')
    fi
    TOTAL[${ACCOUNT}]=$((${TOTAL[$ACCOUNT]}+${NCPU}))
    echo "  ${LINE} ncpu=$NCPU"
  fi
done

