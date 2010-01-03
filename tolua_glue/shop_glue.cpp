/*
** Lua binding: shop
** Generated automatically by tolua++-1.0.92 on Sun Jan  3 16:54:38 2010.
*/

#ifndef __cplusplus
#include "stdlib.h"
#endif
#include "string.h"

#include "tolua++.h"

/* Exported function */
TOLUA_API int  tolua_shop_open (lua_State* tolua_S);

#include "../main.h"

/* function to register type */
static void tolua_reg_types (lua_State* tolua_S)
{
}

/* function: callCfunction */
#ifndef TOLUA_DISABLE_tolua_shop_callCfunction00
static int tolua_shop_callCfunction00(lua_State* tolua_S)
{
#ifndef TOLUA_RELEASE
 tolua_Error tolua_err;
 if (
     !tolua_isnumber(tolua_S,1,0,&tolua_err) ||
     !tolua_isnoobj(tolua_S,2,&tolua_err)
 )
  goto tolua_lerror;
 else
#endif
 {
  int intValue = ((int)  tolua_tonumber(tolua_S,1,0));
  {
   char* tolua_ret = (char*)  callCfunction(intValue);
   tolua_pushstring(tolua_S,(const char*)tolua_ret);
  }
 }
 return 1;
#ifndef TOLUA_RELEASE
 tolua_lerror:
 tolua_error(tolua_S,"#ferror in function 'callCfunction'.",&tolua_err);
 return 0;
#endif
}
#endif //#ifndef TOLUA_DISABLE

/* Open function */
TOLUA_API int tolua_shop_open (lua_State* tolua_S)
{
 tolua_open(tolua_S);
 tolua_reg_types(tolua_S);
 tolua_module(tolua_S,NULL,0);
 tolua_beginmodule(tolua_S,NULL);
  tolua_function(tolua_S,"callCfunction",tolua_shop_callCfunction00);
 tolua_endmodule(tolua_S);
 return 1;
}


#if defined(LUA_VERSION_NUM) && LUA_VERSION_NUM >= 501
 TOLUA_API int luaopen_shop (lua_State* tolua_S) {
 return tolua_shop_open(tolua_S);
};
#endif

