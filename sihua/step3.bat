@echo off
set input_evol_indices_location=C:\Users\sp96859\test2\EVE\results\evol_indices
set input_evol_indices_filename_suffix=_20000_samples
set protein_list=C:\Users\sp96859\test2\EVE\data\mappings\example_mapping.csv
set output_eve_scores_location=C:\Users\sp96859\test2\EVE\results\EVE_scores
set output_eve_scores_filename_suffix=Jan1_PTEN_example

set GMM_parameter_location=C:\Users\sp96859\test2\EVE\results\GMM_parameters\Default_GMM_parameters
set GMM_parameter_filename_suffix=default
set protein_GMM_weight=0.3
set plot_location=C:\Users\sp96859\test2\EVE\results
set labels_file_location=C:\Users\sp96859\test2\EVE\data\labels\PTEN_ClinVar_labels.csv
set default_uncertainty_threshold_file_location=C:\Users\sp96859\test2\EVE\utils\default_uncertainty_threshold.json

python train_GMM_and_compute_EVE_scores.py ^
--input_evol_indices_location "%input_evol_indices_location%" ^
--input_evol_indices_filename_suffix "%input_evol_indices_filename_suffix%" ^
--protein_list "%protein_list%" ^
--output_eve_scores_location "%output_eve_scores_location%" ^
--output_eve_scores_filename_suffix "%output_eve_scores_filename_suffix%" ^
--load_GMM_models ^
--GMM_parameter_location "%GMM_parameter_location%" ^
--GMM_parameter_filename_suffix "%GMM_parameter_filename_suffix%" ^
--compute_EVE_scores ^
--protein_GMM_weight "%protein_GMM_weight%" ^
--plot_histograms ^
--plot_scores_vs_labels ^
--plot_location "%plot_location%" ^
--labels_file_location "%labels_file_location%" ^
--default_uncertainty_threshold_file_location "%default_uncertainty_threshold_file_location%" ^
--verbose  
        
