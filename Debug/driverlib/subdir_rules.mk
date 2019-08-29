################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
driverlib/%.obj: ../driverlib/%.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"/opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="/home/pslavkin/workspace_v9/servo_pmsm/driverlib/" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/headers/include" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/common/include" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries/utilities/math_blocks/include/CLA_v1.0" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries/utilities/math_blocks/include/math_blocks" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries/position_sensing/qep/include" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries/fcl/include" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries/control/pi/include" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/libraries" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/src/" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/utils/" --include_path="/home/pslavkin/workspace_v9/servo_pmsm/include/" --advice:performance=all --define=CPU1 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="driverlib/$(basename $(<F)).d_raw" --obj_directory="driverlib" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


