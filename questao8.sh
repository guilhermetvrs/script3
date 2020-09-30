 o codigo de retorno fica na variavel $(pipestatus[x]) onde x é o indice de comando  que voce queira ver

se a saida for 0, siginifica que o comando foi executado com sucesso.
se a saida for 1, significa que o comando não foi executado com exito.

o echo $(pipestatus[x] tem que ser usado logo apos executar o comando, a não ser que salvemos o  pipestatus em outra variavel

"aux=$(pipestatus)"
