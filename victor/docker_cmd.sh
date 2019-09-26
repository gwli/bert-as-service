#IMG="victorgwli/bert-as-service"
IMG="nvcr.io/nvidia/tensorflow:19.08-py3"
hdir=`pwd`
NUM_WORKER=2
#https://storage.googleapis.com/bert_models/2018_11_23/multi_cased_L-12_H-768_A-12.zip
PATH_MODEL=$hdir/data/multi_cased_L-12_H-768_A-12
#nvidia-docker run --rm -d -p 5555:5555 -p 5556:5556 -v $PATH_MODEL:/model $IMG $NUM_WORKER tail -f /dev/null
nvidia-docker run --rm -d -p 5555:5555 -p 5556:5556 -v $PATH_MODEL:/model -v $hdir:/hdir $IMG tail -f /dev/null
