export MSA_data_folder='./data/MSA' # 比对好的文件
export MSA_list='./data/mappings/example_mapping.csv' # 预先准备好的文件
export MSA_weights_location='./data/weights' # 计算第一步就有了结果
export VAE_checkpoint_location='./results/VAE_parameters' # 第一步计算完了就有了结果
export model_name_suffix='Jan1_PTEN_example'
export model_parameters_location='./EVE/default_model_params.json' # 预先设置的文件
export training_logs_location='./logs/' # 第一步计算完了就有了结果
export protein_index=0

python train_VAE.py \
    --MSA_data_folder ${MSA_data_folder} \
    --MSA_list ${MSA_list} \
    --protein_index ${protein_index} \
    --MSA_weights_location ${MSA_weights_location} \
    --VAE_checkpoint_location ${VAE_checkpoint_location} \
    --model_name_suffix ${model_name_suffix} \
    --model_parameters_location ${model_parameters_location} \
    --training_logs_location ${training_logs_location} 
