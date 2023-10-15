Feature: Login to SauceDemo

  Scenario: Successful login
    Given User is on the SauceDemo login page
    When User enters valid username and password
    And User clicks the login button
    Then User should be on the Products page

  Scenario: Unsuccessful login (negative case)
    Given User is on the SauceDemo login page
    When User enters invalid username or password
    And User clicks the login button
    Then User should see an error message

  Scenario: Add product to cart
    Given User is logged in
    When User adds a product to the cart
    Then User should see the product in the cart

  Scenario: Remove product from cart
    Given User has a product in the cart
    When User removes the product from the cart
    Then User should see the cart empty
