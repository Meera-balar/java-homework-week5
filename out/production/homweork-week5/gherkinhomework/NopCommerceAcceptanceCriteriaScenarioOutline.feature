Feature: Book category
  As a user, I would like to check acceptance criteria of Nopcommerce top menu
  Background: I should be able to see homepage
    Given     I enter URL"https://demo.nopcommerce.com/" in browser
    And       I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When            I am on home page
    Then            I should be able to see top menu tabs with "<categories>"
    Examples:
    |categories          |
    |computer            |
    |Electronic          |
    |Apparel             |
    |Digital downloads   |
    |Books               |
    |jewellery           |
    |Gift card           |

  Scenario Outline: I should be able to see book page with filters
    When            I select book category from top menu tabs on home page
    Then            I should be navigated to book category
    And             I should be able to see "<filters>"
    Examples:
    | filters   |
    | Short by  |
    | Display   |
    | the Grid  |
    | List Tab  |

  Scenario Outline: I should be able to see list of term of each filter
    Given           I am on book page
    When            I click on "<filter>"
    Then            I should be able to see "<list>" in dropdown menu
    Examples:
    | filter     | list                                                                             |
    | Sort by    | Name: A to Z, Name: A to Z, Price : Low to High, Price : High to Low, Created on |
    | Display    |  3, 6, 9                                                                         |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given           I am on book page
    When            I click on any "<filter>"
    And             I click on any "<option>"
    Then            I should be able to choose any filter option from the list
    And             I should be able to see "<result>"
    Examples:
    | filter      | option                | result                                                            |
    | Sort by     | Name: A to Z          | sorted product with the product name in alphabetical order A to Z |
    | Sort by     | Name: Z to A          | sorted product with the product name in alphabetical order Z to A |
    | Sort by     | Price : Low to High   | sorted product with the price in ascending order                  |
    | Sort by     | Price : High to Low   | sorted product with the price in descending order                 |
    | Sort by     | Created on            | Recently added product should be show first                       |
    | Display     | 3                     | 3 products in a page                                              |
    | Display     | 6                     | 6 products in a page                                              |
    | Display     | 9                     | 9 products in a page                                              |

    Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
      Given           I am on book page
      When            I click on "<display format icon>"
      Then            I should be able to see product display format according display format type as per given picture in SRS document
      Examples:
      | display format icon |
      |        Grid         |
      |        List         |


