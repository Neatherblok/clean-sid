set -e
# if [ "${CONDA_DEFAULT_ENV}" != "TF25" ]; then
# 	echo 'You are not in the <TF25> environment. Attempting to activate the RumiGAN environment. Please run "conda activate TF25" and try again if this fails.'
# 	condaActivatePath=$(which activate)
# 	source ${condaActivatePath} TF25
# fi

if [ "${CONDA_DEFAULT_ENV}" != "TF24" ]; then
	echo 'You are not in the <TF24> environment. Attempting to activate the TF24 environment. Please run "conda activate TF24" and try again if this fails.'
	condaActivatePath=$(which activate)
	source ${condaActivatePath} TF24
fi

###------ ###------ ###------ ###------ ###------ 
###------ SID / FID metrics ----- ###------ 
###------ ###------ ###------ ###------ ###------ 

## Include the location of the ground truth and generated images!

# ###------ m = 1

python ./sid.py --model 'DataSet' --data 'MNIST' --noise 'MNIST_Full' --reals_dir '' --fakes_dir '' --order 1 --GPU '1' --SID_flag 1 --FID_flag 1 --KID_flag 0 --metric_mode 'clean'

# ###------ m = -1

#python ./sid.py --model 'DataSet' --data 'MNIST' --noise 'MNIST_Full' --reals_dir '' --fakes_dir '' --order -1 --GPU '1' --SID_flag 1 --FID_flag 1 --KID_flag 0 --metric_mode 'clean'

# ###------ m = -3

#python ./sid.py --model 'DataSet' --data 'MNIST' --noise 'MNIST_Full' --reals_dir '' --fakes_dir '' --order -3 --GPU '1' --SID_flag 1 --FID_flag 1 --KID_flag 0 --metric_mode 'clean'

# ###------ m = -5

#python ./sid.py --model 'DataSet' --data 'MNIST' --noise 'MNIST_Full' --reals_dir '' --fakes_dir '' --order -5 --GPU '1' --SID_flag 1 --FID_flag 1 --KID_flag 0 --metric_mode 'clean'