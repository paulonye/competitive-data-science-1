ROOT_DIR="$(git rev-parse --show-toplevel)"

if [[ $(uname) == 'Darwin' ]]; then
    brew install gcc5
fi

pip install -U bokeh
pip install -U catboost
pip install python-dateutil==2.6.1
pip install -U ggplot
pip install html5lib==0.9999999
pip install -U ipython
pip install -U jupyter
pip install -U kaggle
pip install -U keras
pip install -U lightgbm
pip install -U matplotlib
pip install -U networkx
pip install -U nltk
pip install -U numpy
pip install -U pandas
pip install -U pip
pip install -U plotly
pip install -U seaborn
pip install -U sklearn
pip install -U tensorflow
pip install -U tqdm
pip install -U xgboost==0.6a2

if [[ $(uname) == 'Darwin' ]]; then
    pip install http://download.pytorch.org/whl/torch-0.3.1-cp36-cp36m-macosx_10_7_x86_64.whl 
    pip install torchvision 
    # macOS Binaries dont support CUDA, install from source if CUDA is needed
fi

python -c "import nltk; nltk.download('all')"

kaggle competitions download -c competitive-data-science-predict-future-sales
