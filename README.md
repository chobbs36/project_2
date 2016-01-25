# project_2

Top 5 is a social networking web app that allows user to share and rank their "best of the best". 
Below is an example of the concept used on Instagram.

![picture](http://i.imgur.com/bmnBZtj.png)

Ruby Gems Added:
-Bootstrap-SASS (styling)
-Simple Form (forms)
-Devise (users)
-PaperClip (images)
-Masonry (styling)
-Better errors (errors)

Technologies used:
-Ruby on Rails
-jQuery
-Javascript
-SASS

-Models
  -Users
  -Lists
  
Problems:
  When using devise, I ran into an issue because it doesn't create an users_controller, which threw me off. Therefore, I created one myself. However, when trying to add parameters to the user it wasn't saving to the database. It wasn't until I added the parameters to the application controller that the problem was resolved.
  
  An issue I have yet to resolve is when going back to the home page, the layout doesn't display right until the page is refreshed. This may be due to the masonry gem that I used.
  
  Another issue that I must look into is the pictures uploading on to the page. All of the pictures do not consistently load as they should. This may have something to do with the paperclip gem that was used.

Future Direction:
I would like to connect users to other users, allowing them to view and comment their connections' new and updated lists. 

I also plan on improving the look and functionality of the site, eventually making the app live to the public.
