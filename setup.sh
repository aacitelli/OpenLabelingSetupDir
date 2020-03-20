# This file goes from a freshly cloned OpenLabelingn repo (please use --recurse-submodules when you clone)

# Freshly cloned requirements.txt file doesn't include pytorch but we need it
if ! grep "torch" requirements.txt > /dev/null; then 
    echo "torch" >> requirements.txt 
fi 

if ! grep "torchvision" requirements.txt > /dev/null; then 
    echo "torchvision" >> requirements.txt 
fi 

# Actually install everything 
python -mpip install -U pip
python -mpip install -U -r requirements.txt