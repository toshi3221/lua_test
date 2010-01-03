/* 
 * File:   main.cpp
 * Author: toshi
 *
 * Created on 2010/01/01, 22:00
 */

#include <stdlib.h>
#include <stdio.h>
#include <lua.hpp>
#include <tolua++.h>
#include "tolua_glue/shop_glue.h"

#include "main.h"

/*
 * 
 */
int main(int argc, char** argv) {

    printf("luaのバインドテストをします。\n");

    while (true) {

        printf("[スクリプト実行: ANY KEY, 終了: q] ? ");
        char command = getchar();
        if (command == 'q') {
            printf("スクリプト終了します。\n");
            break;
        }
        lua_State *L = lua_open();

        // cpp関数の登録
        tolua_shop_open(L);

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
    }

    return (EXIT_SUCCESS);
}

char* callCfunction(int intValue) {
    printf("callCfunctionGlue() 呼ばれた。値: %d\n", intValue);

    return "return string";
}
