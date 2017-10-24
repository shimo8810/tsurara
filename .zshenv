#Rust env config
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:$HOME/usr/bin

#CUDA env config
export CUDA_PATH=/usr/local/cuda-8.0
export CUDA_HOME=/usr/local/cuda-8.0
export PATH=$CUDA_HOME/bin:$PATH
# export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
# export CFLAGS=-I$CUDA_HOME/include
# export LDFLAGS=-L$CUDA_HOME/lib64

#local env config
export PATH=$HOME/usr/bin:$PATH
