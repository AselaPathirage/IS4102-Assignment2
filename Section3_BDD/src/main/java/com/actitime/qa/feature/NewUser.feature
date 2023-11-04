Feature: As the admin I should be able to create a new user in Actitime

  @TC_002
  Scenario Outline: Successfully creating a new user
    Given User logged in as an admin
    And User is in the Actitime Users Page
    When User clicks new user button
    Then User input FirstName as "<firstName>"
    Then User input LastName as "<lastName>"
    Then User input Email as  "<email>"
    Then User clicks the Save and Send Invitation button
    Then User see the success message
    And User find the new user "<firstName> <lastName>" in the user list
    And User verify the email "<email>" for the new user
    Examples:
      | firstName | lastName | email |
      | Renuka | Adassuriya | renuka@gmail.com |