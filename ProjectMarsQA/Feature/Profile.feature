Feature: Profile
	
	
 Scenario: Add Description to the profile
  Given I am on the Profile page
  When I write information about myself in "Description" box
  And I press "Save" button
  Then There should be a message on the screen "Description has been saved successfully".
  And  I should see description about myself under "Description" section
   
  Scenario: Edit Description to the profile
  Given I am on the Profile page
  When I press pencil image adjacent to "Description" Tag.
  And I Add or change more data about myself
  And I press "Save" button
  Then There should be a message on the screen "Description has been saved successfully".
  And  I should see the changed description about myself under "Description" section

   @AutomationTest2
  Scenario: Add New Languages to the profile
  Given Select Langauge and Click Add new
 When Seller have entered Language and level
 Then Pop up will show Language has been added


  Scenario: Modify Language in the profile
  Given I am on the Profile page
  When I Press on "Languages" Tag 
  And I press on Modify image
  And I write "French" in Add Language box
  And I select "Fluent" in Choose Language Level
  And click on "Update" button
  Then There should be a message on the screen "French has been Updated to your languages"
  And  I should see "French" and "Fluent" under "Languages" section

  Scenario: Delete Language from the profile
  Given I am on the Profile page
  When I Press on "Languages" Tag 
  And I press on Delete image
  Then There should be a message on the screen "French has been deleted from your languages"
  And  I shouldnot see deleted Language under "Languages" section
   
    
   Scenario: Add New Skills to the profile
  Given I am on the Profile page
  When I Press on "Skills" Tag 
  And I press on "Add New" button
  And I write "C#" in Add Skill box
  And I select "Expert" in Choose Skill Level
  And click on "Add" button
  Then There should be a message on the screen "C# has been added to your Skills"
  And  I should see "C#" and "Expert" under Skills section

  Scenario: Modify Skills in the profile
  Given I am on the Profile page
  When I Press on "Skills" Tag 
  And I press on Modify image
  And I write "VB" in Add Skill box
  And I select "Beginner" in Choose Skill Level
  And click on "Update" button
  Then There should be a message on the screen "VB has been Updated to your Skills"
  And  I should see "VB" and "Beginner" under Skills section

  Scenario: Delete Skills from the profile
  Given I am on the Profile page
  When I Press on "Skills" Tag 
  And I press on Delete image
  Then There should be a message on the screen "VB has been deleted"
  And  I should not see deleted Skill
   
   @AutomationTest3
  Scenario: Add New Education to the profile
  Given Clicked Education in Profile page and pressed add new
  When Entered education details and pressed add
  Then Pop will show Education has been added

   

  Scenario: Modify Education in the profile
  Given I am on the Profile page
  When I Press on "Education" Tag 
  And I press on Modify image
  And I write "MAM" in College/University Name  box
  And I select "India" in Country of College/University dropdown box
  And I select "Bsc" in Title dropdown box
  And I write "Computer Science" in Degree input box
  And I select "2006" in Year of graduation dropdown box
  And click on "Update" button
  Then There should be a message on the screen "Education has been Updated"
  And  I should see Education that has been updated

  Scenario: Delete Education from the profile
  Given I am on the Profile page
  When I Press on "Education" Tag 
  And I press on Delete image
  Then There should be a message on the screen "Education entry successfully removed"
  And  I should not see deleted Education details
  

  Scenario: Add New Certifications to the profile
  Given I am on the Profile page
  When I Press on "Certifications" Tag 
  And I press on "Add New" button
  And I write "CCNA" in Certificate or Award  box  
  And I write "Cisco" in Certified From input box
  And I select "2006" in Year dropdown box
  And click on "Add" button
  Then There should be a message on the screen "CCNA has been added to your certification"
  And  I should see Certification detail that has been added
   

  Scenario: Modify Certifications in the profile
  Given I am on the Profile page
  When I Press on "Certifications" Tag 
  And I press on Modify image
  And I write "CCNP" in Certificate or Award  box  
  And I write "Cisco" in Certified From input box
  And I select "2008" in Year dropdown box
  And click on "Update" button
  Then There should be a message on the screen "CCNP has been updated to your certification"
  And  I should see Certification detail that has been updated

  Scenario: Delete Certifications from the profile
  Given I am on the Profile page
  When I Press on "Certifications" Tag 
  And I press on Delete image
  Then There should be a message on the screen "CCNP has been deleted from your certification"
  And  I should not see deleted Certification details
  