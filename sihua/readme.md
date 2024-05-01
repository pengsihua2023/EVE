# 我的修改
## 在windows下运行代码
第一步：把下列代码保存为bat文件：step1.bat直接在conda环境下运行step1.bat
```
@echo off
set MSA_data_folder=C:\Users\sp96859\test\EVE\data\MSA
set MSA_list=C:\Users\sp96859\test\EVE\data\mappings\example_mapping.csv
set MSA_weights_location=C:\Users\sp96859\test\EVE\data\weights
set VAE_checkpoint_location=C:\Users\sp96859\test\EVE\results\VAE_parameters
set model_name_suffix=Jan1_PTEN_example
set model_parameters_location=C:\Users\sp96859\test\EVE\EVE\default_model_params.json
set training_logs_location=C:\Users\sp96859\test\EVE\logs
set protein_index=0

python train_VAE.py ^
  --MSA_data_folder "%MSA_data_folder%" ^
  --MSA_list "%MSA_list%" ^
  --protein_index %protein_index% ^
  --MSA_weights_location "%MSA_weights_location%" ^
  --VAE_checkpoint_location "%VAE_checkpoint_location%" ^
  --model_name_suffix "%model_name_suffix%" ^
  --model_parameters_location "%model_parameters_location%" ^
  --training_logs_location "%training_logs_location%"

```
第二步：

```
@echo off
set MSA_data_folder=C:\Users\sp96859\test\EVE\data\MSA
set MSA_list=C:\Users\sp96859\test\EVE\data\mappings\example_mapping.csv
set MSA_weights_location=C:\Users\sp96859\test\EVE\data\weights
set VAE_checkpoint_location=C:\Users\sp96859\test\EVE\results\VAE_parameters
set model_name_suffix=Jan1_PTEN_example
set model_parameters_location=C:\Users\sp96859\test\EVE\EVE\default_model_params.json
set training_logs_location=C:\Users\sp96859\test\EVE\logs
set protein_index=0

set computation_mode=all_singles
set all_singles_mutations_folder=C:\Users\sp96859\test\EVE\data\mutations
set output_evol_indices_location=C:\Users\sp96859\test\EVE\results\evol_indices
set num_samples_compute_evol_indices=20000
set batch_size=2048


python compute_evol_indices.py ^
--MSA_data_folder "%MSA_data_folder%" ^
--MSA_list "%MSA_list%" ^
--protein_index %protein_index% ^
--MSA_weights_location "%MSA_weights_location%" ^
--VAE_checkpoint_location "%VAE_checkpoint_location%" ^
--model_name_suffix "%model_name_suffix%" ^
--model_parameters_location "%model_parameters_location%" ^
--computation_mode "%computation_mode%" ^
--all_singles_mutations_folder "%all_singles_mutations_folder%" ^
--output_evol_indices_location "%output_evol_indices_location%" ^
--num_samples_compute_evol_indices %num_samples_compute_evol_indices% ^
--batch_size %batch_size%
```
第三步：
```
export input_evol_indices_location='./results/evol_indices'
export input_evol_indices_filename_suffix='_20000_samples'
export protein_list='./data/mappings/example_mapping.csv'
export output_eve_scores_location='./results/EVE_scores'
export output_eve_scores_filename_suffix='Jan1_PTEN_example'

export GMM_parameter_location='./results/GMM_parameters/Default_GMM_parameters'
export GMM_parameter_filename_suffix='default'
export protein_GMM_weight=0.3
export plot_location='./results'
export labels_file_location='./data/labels/PTEN_ClinVar_labels.csv'
export default_uncertainty_threshold_file_location='./utils/default_uncertainty_threshold.json'

python train_GMM_and_compute_EVE_scores.py \
    --input_evol_indices_location ${input_evol_indices_location} \
    --input_evol_indices_filename_suffix ${input_evol_indices_filename_suffix} \
    --protein_list ${protein_list} \
    --output_eve_scores_location ${output_eve_scores_location} \
    --output_eve_scores_filename_suffix ${output_eve_scores_filename_suffix} \
    --load_GMM_models \
    --GMM_parameter_location ${GMM_parameter_location} \
    --GMM_parameter_filename_suffix ${GMM_parameter_filename_suffix} \
    --compute_EVE_scores \
    --protein_GMM_weight ${protein_GMM_weight} \
    --plot_histograms \
    --plot_scores_vs_labels \
    --plot_location ${plot_location} \
    --labels_file_location ${labels_file_location} \
    --default_uncertainty_threshold_file_location ${default_uncertainty_threshold_file_location} \
    --verbose  
        

```
