FROM addaniel/webots-with-opendr-object-detection-2d:latest
ARG PROJECT_PATH
RUN mkdir -p $PROJECT_PATH
COPY . $PROJECT_PATH
RUN cd $PROJECT_PATH/libraries/bvh_util && make clean && make
RUN cd $PROJECT_PATH/controllers/bvh_animation && make clean && make
RUN cd $PROJECT_PATH/plugins/robot_windows/robotti_window && make clean && make
