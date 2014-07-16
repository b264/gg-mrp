Feature: display the dashboard
  As a supply chain manager
  So that I can get all the relevant data in one place
  I want to get a dashboard

Background: user is logged in
  Given the following user exists
  | user               | password    |
  | test@the.system    | password    |
  And I have logged in

Scenario: Dashboard selected
  When I press "Home"
  Then I should see the dashboard
