= Introdução

TODO: Escrever sobre resultados

TODO: Incluir citações?

É comum, especialmente em programas de código aberto ou destinados a usuários avançados,
a existência de mecanismos que permitem a extensão de funcionalidades por meio de módulos
externos, chamados de plugins ou extensões. Esse tipo de arquitetura oferece aos desenvolvedores e à
comunidade um modelo alternativo para a evolução do sistema. O ciclo ideal geralmente envolve:
(1) a requisição de uma nova funcionalidade por parte do usuário; (2) a análise e implementação
por parte dos desenvolvedores; e (3) a disponibilização de uma nova versão do software.

Na prática, esse fluxo é mais lento e menos óbvio. Desenvolvedores precisam
balancear prioridades, definir demandas pertinentes e lidar com limitações de tempo e recursos.
Consequentemente, usuários podem esperar semanas ou até meses para que uma requisição seja atendida
— quando não é simplesmente descartada. Em projetos abertos, usuários com experiência em desenvolvimento
contam com outra alternativa: modificar diretamente o código-fonte. Entretanto, esse tipo de
alteração traz a tona novos desafios como compreender funcionamento interno, adaptar-se ao ciclo
de desenvolvimento e lidar com múltiplas iterações até a inclusão da nova funcionalidade.

Modelos baseados em extensões, no entanto, permitem que desenvolvedores se concentrem
no núcleo da aplicação. Seu papel se torna garantir mecanismos para integração de plugins
e manter um ecossistema que os suporte. Usuários, por sua vez, são livres para implementar
soluções específicas para seus próprios problemas, de modo independente e eficaz. Essa
distribuição de responsabilidades permite que funcionalidades surjam de modo ágil e descentralizado,
balanceando o foco da equipe de desenvolvimento e a flexibilidade exigida pela comunidade.

Esse tipo de arquitetura pode ser implementado de diferentes maneiras, como
linguagens embutidas e máquinas virtuais, protocolos de comunicação
remota (RPC), bibliotecas dinâmicas ou arquivos de configuração. O objetivo
deste artigo é analisar a eficácia de algumas dessas abordagens. Com base em
escolhas feitas por aplicações populares, foi criado um conjunto de 5 alternativas:
WebAssembly (WASM), Lua e LuaJIT, gRPC, Cap’n Proto RPC e ligação dinâmica.
