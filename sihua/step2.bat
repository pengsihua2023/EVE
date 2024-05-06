@echo off
set MSA_data_folder=C:\Users\sp96859\test2\EVE\data\MSA
set MSA_list=C:\Users\sp96859\test2\EVE\data\mappings\example_mapping.csv
set MSA_weights_location=C:\Users\sp96859\test2\EVE\data\weights
set VAE_checkpoint_location=C:\Users\sp96859\test2\EVE\results\VAE_parameters
set model_name_suffix=Jan1_PTEN_example
set model_parameters_location=C:\Users\sp96859\test2\EVE\EVE\default_model_params.json
set training_logs_location=C:\Users\sp96859\test2\EVE\logs
set protein_index=0

set computation_mode=all_singles
set all_singles_mutations_folder=C:\Users\sp96859\test2\EVE\data\mutations
set output_evol_indices_location=C:\Users\sp96859\test2\EVE\results\evol_indices
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
