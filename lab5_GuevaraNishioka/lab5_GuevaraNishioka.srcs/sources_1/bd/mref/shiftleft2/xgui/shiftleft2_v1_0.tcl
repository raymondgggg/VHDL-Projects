# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "shiftAmount" -parent ${Page_0}
  ipgui::add_param $IPINST -name "value1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "value2" -parent ${Page_0}


}

proc update_PARAM_VALUE.shiftAmount { PARAM_VALUE.shiftAmount } {
	# Procedure called to update shiftAmount when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.shiftAmount { PARAM_VALUE.shiftAmount } {
	# Procedure called to validate shiftAmount
	return true
}

proc update_PARAM_VALUE.value1 { PARAM_VALUE.value1 } {
	# Procedure called to update value1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.value1 { PARAM_VALUE.value1 } {
	# Procedure called to validate value1
	return true
}

proc update_PARAM_VALUE.value2 { PARAM_VALUE.value2 } {
	# Procedure called to update value2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.value2 { PARAM_VALUE.value2 } {
	# Procedure called to validate value2
	return true
}


proc update_MODELPARAM_VALUE.value1 { MODELPARAM_VALUE.value1 PARAM_VALUE.value1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.value1}] ${MODELPARAM_VALUE.value1}
}

proc update_MODELPARAM_VALUE.value2 { MODELPARAM_VALUE.value2 PARAM_VALUE.value2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.value2}] ${MODELPARAM_VALUE.value2}
}

proc update_MODELPARAM_VALUE.shiftAmount { MODELPARAM_VALUE.shiftAmount PARAM_VALUE.shiftAmount } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.shiftAmount}] ${MODELPARAM_VALUE.shiftAmount}
}

