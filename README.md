Fork of the below for UMass Amherst CS692S Project Fall 2020

Source code for the paper accepeted in NIPS'19: 
*In-Place Zero-Space Memory Protection for CNN*

## Scripts
* To reproduce accuracy results in the paper:

`./run_accuracy.sh `

* To reproduce QAT results:  

1- Open run_wot.sh in edit mode. <br/>
2- Set the mode as QAT. 
3- Set the model for which the QAT needs to be performed. 
4- In case the code needs to be run for 4-bit then pass the argument --four-bit else by default it will run for 8-bits. 
5- In case the code needs to be run for 32-bit hamming code i.e SEC-DED (32,26,1) then pass the argument as --thirty-two-bit-code else the code will run by default for SEC-DED (64,57,1). 
6- Save and exit run_wot.sh 
7- ` ./run_wot.sh `

* To reproduce WOT results:

1- Open run_wot.sh in edit mode. 
2- Set the mode as WOT. 
3- Set the model for which the WOT needs to be performed. 
4- In case the code needs to be run for 4-bit then pass the argument --four-bit else by default it will run for 8-bits. 
5- In case the code needs to be run for 32-bit hamming code i.e SEC-DED (32,26,1) then pass the argument as --thirty-two-bit-code else the code will run by default for SEC-DED (64,57,1). 
6- Save and exit run_wot.sh 
7- ` ./run_wot.sh `


* To reproduce fault injection experiments:

1- Open run_fault_injection.sh in edit mode. 
2- Set the model for which the fault injection experiment needs to be performed. 
3- Set the mode for the experiment among faulty,inplace, zero, avg, ecc.  
4- Set checkpoint as the path to the trained model. 
5- Provide the value to the parameter num_mem_bits and in case the code needs to be run for 32-bit hamming code i.e SEC-DED (32,26,1) then pass the argument as --thirty-two-bit-code else the code will run by default for SEC-DED (64,57,1). 
6- Save and exit run_fault_injection.sh 
7- `./run_fault_injection.sh `


## Required Packages
* pytorch 1.3.1
* torchvision 0.4.2
* distiller 0.4.0
* bitstring 3.1.5



