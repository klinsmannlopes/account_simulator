# Banco Lopes

## Requerimento

[Elixir](https://elixir-lang.org/install.html)

## Como Começar

Clone o projeto ou faça [download](https://github.com/klinsmannlopes/account_simulator.git) dele:

```git
$ git clone https://github.com/klinsmannlopes/account_simulator.git
```

Entre na pasta:

```sh
$ cd account_simulator
```

Execute o comando abaixo dentro da pasta:

```
$ mix start
```

## Como Usar

Entre em uma conta ou crie uma nova conta.
No caso de criar uma nova conta, a aplicação irá se logar automatimacamente.
Ao criar uma conta ou se logar em uma existente, ela inicia sem dinheiro, mas não se preocupe, para adicionar dinheiro realize um depósito, depois é possível realizar transferências e câmbio de moedas.

![Alt Text](https://media.giphy.com/media/lrDMG46JjKiovLbkn8/giphy.gif)

## Características

- O código da moeda está de acordo com ISO 4217, então deve ser sempre um código válido 
    - [ISO4217](https://www.iso.org/iso-4217-currency-codes.html).

- Os valores do dinheiro são representados como `Integer`. Ex: `R$ 1,00` equivale a `100`.

- Todas as functions que trabalham aritméticas utilizam `Integer`, em exceção o cálculo das taxas das moedas, onde trabalha com `Float`.

- As transações de dinheiro só podem ser executadas quando ambos os operandos são da mesma moeda.

- Por padrão a conta `bank_lopes` recebe a taxa de rateio.