//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
// gestion d es messages
z_smsg = {
  	[playerSide,"HQ"] sideChat _this;
};

z_stock_info_object = {

    private ["_object","_pos","_dir","_str","_T","_textC"];
    
    format["_this %1 ", _this] call z_smsg;
    _object = _this select 0;
    _pos = getposASL _object;
    _dir = getdir _object;
    
    _str = "<type>"+typeOf _object+"</type>"+"<number>"+format["%1",z_nbobject]+"</number>";
    _str = _str + "<setPosASL>"+format["%1",_pos]+"</setPosASL>";
    _str = _str + "<setDir>"+format["%1",_dir]+"</setDir>";
    _T = ["<createVehicle >"+_str+"</createVehicle>"];
    
    z_nbobject = z_nbobject + 1;
    z_posarrayobject = z_posarrayobject  + _T; 
    hint format["_T %1",_T];
        
    _textC = "";
    {
    	_textC = _textC + _x;
    } forEach z_posarrayobject;
    copyToClipboard _textC;
    
};