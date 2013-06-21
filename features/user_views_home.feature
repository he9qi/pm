Feature: User views home
  As a user
  I want to view home page
  So I know what I can do with this app

Scenario: User views home
  Given I am on the Welcome Screen
  Then I should see "社区公告"
  Then I should see "便民支付"
  Then I should see "房屋租售"
  Then I should see "家政服务"
  Then I should see "业主反馈"
  Then I should see "周边服务"
  
Scenario: User goes to announcement page
  Given I am on the Welcome Screen
  Then I touch the "社区公告" button
  Then I should see "社区公告"
  


