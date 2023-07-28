-- Definindo a classe Livro
class Livro a where
    titulo :: a -> String

-- Definindo o tipo de dado LivroFiccao
data LivroFiccao = LivroFiccao String

-- Instância da classe Livro para o tipo LivroFiccao
instance Livro LivroFiccao where
    titulo (LivroFiccao t) = t

-- Definindo o tipo de dado LivroNaoFiccao
data LivroNaoFiccao = LivroNaoFiccao String

-- Instância da classe Livro para o tipo LivroNaoFiccao
instance Livro LivroNaoFiccao where
    titulo (LivroNaoFiccao t) = t


-- Função que imprime o título de um livro
imprimirTituloLivro :: (Livro a) => a -> IO ()
imprimirTituloLivro livro = putStrLn $ "Título do livro: " ++ titulo livro

main :: IO ()
main = do
    let livroFiccao = LivroFiccao "Aventuras de Paulo"
    let livroNaoFiccao = LivroNaoFiccao "Introdução a LP"

    imprimirTituloLivro livroFiccao
    imprimirTituloLivro livroNaoFiccao
