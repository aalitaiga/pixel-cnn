# TODO
#!/usr/bin/env zsh
export HOME=`getent passwd $USER | cut -d':' -f6`
source activate pixel_cnn
PYTHONUNBUFFERED=1
echo Running on $HOSTNAME
python train.py --folder 'exploration' --name 'testing_baselines' --seed 5 --max-steps 1  --env-size 4 --n-switches 4 --log_dir '/data/lisatmp2/feduswil/logs' --phi_space 'hypersphere' --selectivity_measure 'attrsel' --learning_rate 1e-4 --coeff_MB 1e-1 --trans 1 --eps 0.1 --K 20 --trans 1 --pi_encoder 0 --mc_samples 1024 --exploration 1 --coeff_EXPLO 1e1
