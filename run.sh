export PATH=$PATH:/opt/conda/bin

pip install --user --editable .

chmod 777 do_evaluation.sh
do_evaluation.sh
