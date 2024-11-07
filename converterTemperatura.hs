module ConverterTemperatura where

data Temperatura = Celsius | Fahrenheit | Kelvin deriving Show

converterCelsius :: Double -> Temperatura -> Double
converterCelsius x Kelvin = x - 273.15
converterCelsius x Fahrenheit = ( 5 / 9 ) * ( x - 32 )
converterCelsius x _ = x

converterKelvin :: Double -> Temperatura -> Double
converterKelvin x Celsius = x + 273.15
converterKelvin x Fahrenheit = (( x - 32 ) * ( 5 / 9 )) + 273.15
converterKelvin x _ = x

converterFahrenheit :: Double -> Temperatura -> Double
converterFahrenheit x Celsius = ( 1.8 * x ) + 32
converterFahrenheit x Kelvin = ( 1.8 * ( x - 273 )) + 32
converterFahrenheit x _ = x 
