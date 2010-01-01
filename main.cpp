/* 
 * File:   main.cpp
 * Author: toshi
 *
 * Created on 2010/01/01, 22:00
 */

#include <stdlib.h>
#include <stdio.h>
#include <lua.hpp>

int callCfunctionGlue(lua_State *L);

/*
 * 
 */
int main(int argc, char** argv) {

    printf("luaのバインドテストをします。\n");

    lua_State *L = lua_open();

    // cpp関数の登録
    lua_register(L, "callCFunction", callCfunctionGlue);

    luaL_openlibs(L);
    int ret = luaL_dofile(L, "test.lua");
    if(ret != 0) {
        printf("error: %s\n", lua_tostring(L, -1));
    }
    lua_getglobal(L, "luaTest");
    lua_call(L, 0, 1);
    printf("lua return: %s\n", lua_tostring(L, -1));

    lua_settop(L, 0);
    lua_getglobal(L, "luaCCall");
    lua_call(L, 0, 0);

    lua_close(L);

    return (EXIT_SUCCESS);
}

int callCfunctionGlue(lua_State *L) {
    int intValue = (int)lua_tonumber(L,1);
    printf("callCfunctionGlue() 呼ばれた。値: %d\n", intValue);
    lua_settop(L, 0);
    lua_pushnumber(L, 1);
    lua_pushstring(L, "return string");
    return 2;
}
