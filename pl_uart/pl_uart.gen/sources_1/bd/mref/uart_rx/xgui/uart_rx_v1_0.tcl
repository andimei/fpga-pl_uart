# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DBIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SB_TICK" -parent ${Page_0}


}

proc update_PARAM_VALUE.DBIT { PARAM_VALUE.DBIT } {
	# Procedure called to update DBIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DBIT { PARAM_VALUE.DBIT } {
	# Procedure called to validate DBIT
	return true
}

proc update_PARAM_VALUE.SB_TICK { PARAM_VALUE.SB_TICK } {
	# Procedure called to update SB_TICK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SB_TICK { PARAM_VALUE.SB_TICK } {
	# Procedure called to validate SB_TICK
	return true
}


proc update_MODELPARAM_VALUE.DBIT { MODELPARAM_VALUE.DBIT PARAM_VALUE.DBIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBIT}] ${MODELPARAM_VALUE.DBIT}
}

proc update_MODELPARAM_VALUE.SB_TICK { MODELPARAM_VALUE.SB_TICK PARAM_VALUE.SB_TICK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SB_TICK}] ${MODELPARAM_VALUE.SB_TICK}
}

