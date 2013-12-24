module Main where

import Codec.Encryption.Rot13 (encrypt)

main = do
       let plainText = "Hello World"
       let cipherText = encrypt "Hello World"
       let decipheredText = encrypt cipherText
       putStrLn plainText
       putStrLn cipherText
       putStrLn decipheredText
       putStrLn (if plainText == decipheredText then "success" else "failure")


	
