//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
// gestion d es messages
z_smsg = {
  	[playerSide,"HQ"] sideChat _this;
};

z_stock_info_object = {
    format["_this %1 ", _this] call z_smsg;
    _object = _this select 0;
    _pos = getpos _object;
        
    _textC = " _object " + _object + " _pos " + _pos;
    
    copyToClipboard _textC;
};