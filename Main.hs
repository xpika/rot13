module Main where

import System.IO
import Codec.Encryption.Rot13 (encrypt)

main = interact encrypt
