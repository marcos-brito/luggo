= Fundamentação teórica

== Linguagens embutidas

Uma linguagem embutida (embedded language) é uma linguagem de programação cujo propósito é ser integrada
e distribuída como parte de outro programa. Seu uso permite que o programa principal, chamado de "host",
execute um segundo programa, chamado de "guest", escrito na linguagem embutida. O host é capaz de manipular
o contexto de execução criando valores globais e funções que podem ser utilizadas pelo guest.

Essa manipulação permite uma execução programável capaz de isolar o mundo do host, que oferece acesso
às funcionalidades do sistema, e o mundo do guest, que agora pode acessar apenas o que foi explicitamente
exposto.

=== WASM

WebAssembly (WASM) é um formato de instruções binário criado para ser usado
como alvo de compilação para linguagens de programação @wasm-spec. O formato
foi criado com o objetivo de permitir aplicações mais eficientes para web, no entanto, 
não implementa e não assume nada sobre o ambiente de execução que limite sua aplicação
para a web.

WASI é um conjunto de especificações criado para garantir APIs padronizadas para
aplicações compiladas para WASM e que podem ser executadas em qualquer lugar - browsers, dispositivos
embarcados ou na nuvem @wasi-docs. Essa especificação permite que programas em WASM possam
acessar funcionalidade do sistema, como relógio, sistema de arquivos e sockets. Runtimes
como Wasmtime

=== Lua

Lua é uma linguagem de programação implementada como uma biblioteca escrita em C feita
para ser usada como linguagem de scripts para qualquer programe que precise de uma @lua-reference 

== RPC

@modern-OSs


== Dynamic linking
