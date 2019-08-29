################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./driverlib/adc.obj" \
"./driverlib/asysctl.obj" \
"./driverlib/can.obj" \
"./driverlib/cla.obj" \
"./driverlib/cmpss.obj" \
"./driverlib/cputimer.obj" \
"./driverlib/dac.obj" \
"./driverlib/dcsm.obj" \
"./driverlib/dma.obj" \
"./driverlib/ecap.obj" \
"./driverlib/emif.obj" \
"./driverlib/epwm.obj" \
"./driverlib/eqep.obj" \
"./driverlib/flash.obj" \
"./driverlib/gpio.obj" \
"./driverlib/hrpwm.obj" \
"./driverlib/i2c.obj" \
"./driverlib/interrupt.obj" \
"./driverlib/mcbsp.obj" \
"./driverlib/memcfg.obj" \
"./driverlib/sci.obj" \
"./driverlib/sdfm.obj" \
"./driverlib/spi.obj" \
"./driverlib/sysctl.obj" \
"./driverlib/upp.obj" \
"./driverlib/version.obj" \
"./driverlib/xbar.obj" \
"./sources/device.obj" \
"./sources/fcl_qep_f2837x_tmdxiddk.obj" \
"./sources/fcl_qep_f2837x_tmdxiddk_cla_tasks.obj" \
"../2837xD_RAM_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-l"/home/pslavkin/workspace_v9/servo_pmsm/lib/rts2800_fpu32.lib" \
-l"/home/pslavkin/workspace_v9/servo_pmsm/libraries/fcl/lib/fcl_cpu_cla.lib" \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include driverlib/subdir_vars.mk
-include sources/subdir_vars.mk
-include subdir_rules.mk
-include driverlib/subdir_rules.mk
-include sources/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
servo_pmsm.out \

EXE_OUTPUTS__QUOTED += \
"servo_pmsm.out" \

BIN_OUTPUTS += \
servo_pmsm.hex \

BIN_OUTPUTS__QUOTED += \
"servo_pmsm.hex" \


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(A_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "servo_pmsm.out"

# Tool invocations
servo_pmsm.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(A_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"/opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --advice:performance=all --define=CPU1 -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi -z -m"servo_pmsm.map" --stack_size=0x200 --warn_sections -i"/opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS/lib" -i"/opt/ti/C2000Ware_MotorControl_SDK_2_00_00_00/c2000ware/libraries/math/IQmath/c28/lib" -i"/opt/ti/C2000Ware_MotorControl_SDK_2_00_00_00/c2000ware/libraries/dsp/VCU/c28/lib" -i"/opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS/include" --reread_libs --diag_wrap=off --display_error_number --xml_link_info="servo_pmsm_linkInfo.xml" --rom_model -o "servo_pmsm.out" $(ORDERED_OBJS) $(A_SRCS)
	@echo 'Finished building target: "$@"'
	@echo ' '

servo_pmsm.hex: $(EXE_OUTPUTS)
	@echo 'Building files: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo 'Invoking: C2000 Hex Utility'
	"/opt/ti/ccs901/ccs/tools/compiler/ti-cgt-c2000_18.12.1.LTS/bin/hex2000"  -o "servo_pmsm.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "driverlib/adc.obj" "driverlib/asysctl.obj" "driverlib/can.obj" "driverlib/cla.obj" "driverlib/cmpss.obj" "driverlib/cputimer.obj" "driverlib/dac.obj" "driverlib/dcsm.obj" "driverlib/dma.obj" "driverlib/ecap.obj" "driverlib/emif.obj" "driverlib/epwm.obj" "driverlib/eqep.obj" "driverlib/flash.obj" "driverlib/gpio.obj" "driverlib/hrpwm.obj" "driverlib/i2c.obj" "driverlib/interrupt.obj" "driverlib/mcbsp.obj" "driverlib/memcfg.obj" "driverlib/sci.obj" "driverlib/sdfm.obj" "driverlib/spi.obj" "driverlib/sysctl.obj" "driverlib/upp.obj" "driverlib/version.obj" "driverlib/xbar.obj" "sources/device.obj" "sources/fcl_qep_f2837x_tmdxiddk.obj" "sources/fcl_qep_f2837x_tmdxiddk_cla_tasks.obj" 
	-$(RM) "driverlib/adc.d" "driverlib/asysctl.d" "driverlib/can.d" "driverlib/cla.d" "driverlib/cmpss.d" "driverlib/cputimer.d" "driverlib/dac.d" "driverlib/dcsm.d" "driverlib/dma.d" "driverlib/ecap.d" "driverlib/emif.d" "driverlib/epwm.d" "driverlib/eqep.d" "driverlib/flash.d" "driverlib/gpio.d" "driverlib/hrpwm.d" "driverlib/i2c.d" "driverlib/interrupt.d" "driverlib/mcbsp.d" "driverlib/memcfg.d" "driverlib/sci.d" "driverlib/sdfm.d" "driverlib/spi.d" "driverlib/sysctl.d" "driverlib/upp.d" "driverlib/version.d" "driverlib/xbar.d" "sources/device.d" "sources/fcl_qep_f2837x_tmdxiddk.d" 
	-$(RM) "sources/fcl_qep_f2837x_tmdxiddk_cla_tasks.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

