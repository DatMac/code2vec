type=model_apk_java
dataset_name=detect_malware_dataset
data_dir=data/${dataset_name}
data=${data_dir}/${dataset_name}
test_data=${data_dir}/${dataset_name}.val.c2v
model_dir=models/${type}

mkdir -p ${model_dir}
set -e
python3 -u code2vec.py --data ${data} --test ${test_data} --save ${model_dir}/saved_model 