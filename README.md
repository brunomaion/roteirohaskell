# RoteiroLP-Haskell

Atividade prática para aplicação na turma de Linguagens de Programação/Ciência da Computação

## 1-Como compilar código em Haskell (.hs)?

- Instalando o compilador GHC

```bash
//Ubuntu
$ sudo apt install ghc

```

- Use o comando ghc seguido pelo nome do arquivo para compilá-lo. Por exemplo:

```
$ ghc -o nome nome.hs
```

- Você pode executar o programa digitando o nome do executável no terminal ou prompt de comando:

```bash
./nome
```

### Exercício

- Compile o código “1.hs”!

## 2-Listas

Em Haskell, não temos estruturas de dados tradicionais como arrays mutáveis como em algumas outras linguagens de programação. Em vez disso, usamos listas, que são estruturas de dados imutáveis. Listas em Haskell são bastante flexíveis e poderosas, e são usadas para representar sequências de elementos.

```bash
-- Criando uma lista usando a função range
listaNumeros :: [Int]
listaNumeros = [1..10] -- Lista com os números de 1 a 10

-- Criando uma lista usando o operador :
listaCombinada :: [Int]
listaCombinada = 1 : 2 : 3 : [] -- Lista com os elementos 1, 2 e 3

-- Criando uma lista de caracteres
listaCaracteres :: String
listaCaracteres = ['H', 'a', 's', 'k', 'e', 'l', 'l'] -- Lista de caracteres "Haskell"
```

```bash
ghc -o 2 2.hs 
./3
```

## 3-Condições e operadores

Em Haskell, a abordagem para controle de fluxo é um pouco diferente do que você pode estar acostumado em outras linguagens. Haskell é uma linguagem funcional e geralmente não utiliza estruturas de controle tradicionais como loops "for" e "if". Em vez disso, ela usa recursão e funções de ordem superior para manipular listas e estruturas de dados.

No entanto, podemos simular um loop "for" e um condicional "if" usando funções recursivas.

```bash
ghc -o 3 3.hs 
./3
```

## 4-Classe

Em Haskell, as classes são usadas para definir tipos polimórficos, permitindo que vários tipos diferentes implementem funções com a mesma assinatura. As classes são uma parte importante do sistema de tipos da linguagem e são usadas para definir tipos com comportamentos específicos.

As classes em Haskell são análogas às interfaces em algumas outras linguagens de programação, mas têm algumas diferenças importantes. Vou explicar como criar e usar classes em Haskell usando um exemplo simples.
