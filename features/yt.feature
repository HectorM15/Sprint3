Feature: Buscar Videos on YouTube

  Scenario: Buscar videos
    Given Pagina yt
    When Busco por : "URJC"
    Then devuelvo videos

  Scenario: Buscar videos
    Given Pagina yt
    When Busco por : "Master"
    Then devuelvo videos master
