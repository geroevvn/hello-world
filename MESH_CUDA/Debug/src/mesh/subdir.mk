################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mesh/Mesh.cpp 

OBJS += \
./src/mesh/Mesh.o 

CPP_DEPS += \
./src/mesh/Mesh.d 


# Each subdirectory must supply rules for building sources it contributes
src/mesh/%.o: ../src/mesh/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 -std=c++11 -gencode arch=compute_30,code=sm_30  -odir "src/mesh" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -G -g -O0 -std=c++11 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


