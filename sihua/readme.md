# 我的修改
## 在windows下运行代码
把下列代码保存为bat文件：step1.bat直接在conda环境下运行step1.bat
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
