module PbMetar.Model.Common
  where


data Imperial   -- Units like degrees Fahrenheit, miles per hour, for human-readability
data Metric     -- Units like degrees Celsius, kilometers per hour, for human-readability
data Nautical   -- For wind speed in knots, METAR wind data almost always comes in this form
data Meters     -- The odd case where units come in from METAR in meters per second

class Convert systemFrom systemTo where
  convert :: systemFrom -> systemTo
