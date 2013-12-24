module Codec.Encryption.Rot13 (
  encrypt
 ,decrypt
) where

import qualified Data.Map as Map
import Data.Maybe

encrypt str = map rotateChar str
  where rotateChar c = fromMaybe c (Map.lookup c characterMap)
        characterMap = Map.fromList (zip rotateableCharacters rotatedCharacters)
        rotatedCharacters  = concatMap (rotateList 13) [lowerCaseAlphabet,upperCaseAlphabet]
        rotateableCharacters  = lowerCaseAlphabet ++ upperCaseAlphabet
	lowerCaseAlphabet = ['a'..'z']
	upperCaseAlphabet = ['A'..'Z']

decrypt = encrypt

rotateList _ [] = []
rotateList 0 xs = xs
rotateList n (x:xs) = rotateList (n-1) (xs++[x])
