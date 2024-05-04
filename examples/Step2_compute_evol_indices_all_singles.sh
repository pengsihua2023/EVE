export MSA_data_folder='./data/MSA' # 比对蛋白质家族文件
export MSA_list='./data/mappings/example_mapping.csv' # 参数theta参数设置
export MSA_weights_location='./data/weights' # 计算前空置的
export VAE_checkpoint_location='./results/VAE_parameters' # 计算前空置的 
export model_name_suffix='Jan1_PTEN_example'
export model_parameters_location='./EVE/default_model_params.json' # 模型配置文件
export training_logs_location='./logs/' # 计算前空置的 
export protein_index=0

export computation_mode='all_singles'
export all_singles_mutations_folder='./data/mutations' # 计算前空置的
export output_evol_indices_location='./results/evol_indices' # 计算前空置的
export num_samples_compute_evol_indices=20000
export batch_size=2048

python compute_evol_indices.py \
    --MSA_data_folder ${MSA_data_folder} \
    --MSA_list ${MSA_list} \
    --protein_index ${protein_index} \
    --MSA_weights_location ${MSA_weights_location} \
    --VAE_checkpoint_location ${VAE_checkpoint_location} \
    --model_name_suffix ${model_name_suffix} \
    --model_parameters_location ${model_parameters_location} \
    --computation_mode ${computation_mode} \
    --all_singles_mutations_folder ${all_singles_mutations_folder} \
    --output_evol_indices_location ${output_evol_indices_location} \
    --num_samples_compute_evol_indices ${num_samples_compute_evol_indices} \
    --batch_size ${batch_size}
