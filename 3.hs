main :: IO ()
main = printEvenNumbers 10


-- Função recursiva que simula um "for"
forLoop :: Int -> Int -> (Int -> IO ()) -> IO ()
forLoop start end bodyFn = loop start
  where
    loop i
      | i <= end  = do
          bodyFn i
          loop (i + 1)
      | otherwise = return ()

-- Função para verificar se um número é par
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

-- Função para imprimir um número
printNumber :: Int -> IO ()
printNumber n = putStrLn (show n)

-- Função principal para imprimir números pares de 1 a N usando "for" e "if"
printEvenNumbers :: Int -> IO ()
printEvenNumbers n = forLoop 1 n (\x -> if isEven x then printNumber x else return ())
