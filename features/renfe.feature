Feature: Buscar trenes en Renfe

  Scenario: Buscar trenes
    Given Estoy en la pagina de renfe
    When Busco "Trenes Madrid-Barcelona" el dia 29
    Then devuelvo trenes
