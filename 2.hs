-- Função que calcula a soma de todos os elementos da lista
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

-- Função auxiliar para converter uma string de números em uma lista de inteiros
stringParaListaInt :: String -> [Int]
stringParaListaInt str = map read (words str)

-- Função principal para interagir com o usuário e calcular a soma da lista
main :: IO ()
main = do
    putStrLn "Digite uma lista de números inteiros separados por espaço:"
    input <- getLine
    let listaInteiros = stringParaListaInt input
    let resultado = somaLista listaInteiros
    putStrLn $ "A soma dos elementos da lista é: " ++ show resultado
