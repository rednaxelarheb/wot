model=squeezenet1_0


# check folder 
DIRECTORY=./log_faults
if [ ! -d "$DIRECTORY" ]; then
  mkdir log_faults
fi


### faulty and baseline protections ###
mode=faulty
# mode=zero
# mode=avg
# mode=ecc
python fault_injection.py --fault_rate_list 0.000001 0.00001 0.0001 0.001 --num_mem_bits 8 --arch ${model} --fault-type ${mode} --num-batches -1 --start-trial-id 0 --end-trial-id 2 |& tee ./log_faults/${model}_${mode}.txt

### inplace ### 
# mode=inplace
# checkpoint=/home/hguan2/Documents/code/nips19/models/squeezenet1_0/model_best.pth.tar 
# python fault_injection.py --fault-rate-list 0.000001 0.00001 0.0001 0.001 --num_mem_bits 4 --arch ${model} --fault-type ${mode} --checkpoint ${checkpoint} --num-batches -1 --start-trial-id 0 --end-trial-id 2 |& tee ./log_faults/${model}_${mode}.txt
