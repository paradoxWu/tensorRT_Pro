docker run --gpus '"device=0"' -it --rm --net=host --ipc=host \
                    --name trt_test \
                    -e DISPLAY=$DISPLAY \
                    --privileged \
                    -e XAUTHORITY=$XAUTH \
                    -u root \
                    --entrypoint=bash \
                    --ulimit core=-1 \
                    --security-opt seccomp=unconfined \
                    -v ${PWD}:/tensorRT_Pro \
                    -w /tensorRT_Pro \
                    f8d60acf560a