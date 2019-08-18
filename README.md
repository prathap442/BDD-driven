# So this is for the sake of the BDD based driven development sake

## Application
  - the company needs  the documentation on saying the employees are paid or unpaid for the extra work being done each week

## Models
  -Post ---> date:date rationale:text
  x-User ---> Creation Using the Devise
  x-AdminUser --> STI
  STI(the concept of the single table inheritance)
     this states that the AdminUser and User are the two different models with AdminUser being the child of User and they both use the table users only 
     So if two or more models use the same table then the column 'type:string' needs to be added to the parent tables for the segregation of the records that belong to one family

## Features
-Approval Workflow
-SMS Sending --> link to approval or overtime input
-Administrate each admin dashboard
-Email summary to managers for the approval
-Needs to be documented if the employee did not log overtime

##UI
-Bootstrap ---> Formatting


# BDD based driven development we start from the front end

* features --> this folder is specially helpful when we need to do the feature tests like integration tests

#COMMANDS interesting
```
  bundle exec rake routes | grep post
```