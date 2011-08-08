Feature: Easily update version number
  In order to manage version numbers from shell
  As a lazy gem developer
  I want to have convenience methods to update version numbers
  
  Scenario Outline: Incrementing numbers
    Given the version number <input>
    When I increment <which> by <quant>
    Then I should get <out>
    
  Scenarios: Regular incrementations
    | input | which   | quant | out   |
    | 0.0.4 | major   | 1     | 1.0.4 |
    | 0.2.5 | regular | 4     | 0.6.5 |
    | 1.5.3 | minor   | 3     | 1.5.6 |
    
  Scenario Outline: Reseting minor and regular
    Given the version number <input>
    When I increment <which> by <quant> and reset everything under
    Then I should get <out>
  
  Scenarios: Incrementations with reset
    | input | which   | quant | out    |
    | 0.0.5 | regular | 1     | 0.1.0  |
    | 0.3.9 | major   | 2     | 2.0.0  |
    | 4.5.2 | regular | 5     | 4.10.0 |
    | 3.7.1 | major   | 1     | 4.0.0  |