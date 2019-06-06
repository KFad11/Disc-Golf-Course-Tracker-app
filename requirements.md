Add notes below each checkbox with how your application has met the requirement

Requirements:

[X] Uses Ruby on Rails

[X] Includes at least one has_many relationship (e.g. User has_many Recipes)
  - Course has_many baskets

[X] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
  - Baskets belong_to a Course

[X] Includes at least one has_many through relationship (e.g. Recipe has_many Items through Ingredients)
  - Disc_Golfer has_many Courses through Visits

[X] The "through" part of the has_many through includes at least one user submittable attribute (e.g. ingredient#quantity)
  - Visits has a day_visited attribute to log when you visited the course.

[X] Includes reasonable validations for simple model objects
  [X] - baskets numbers be a drop down and range between 3-5
  [ ] - protecting against basket number uniqueness

[ ] Includes a class level ActiveRecord scope method

[X] Includes signup (e.g. Devise)

[X] Includes login (e.g. Devise)

[X] Includes logout (e.g. Devise)

[ ] Includes nested resource show or index (e.g. users/2/recipes)
  - Visits index page, showing each course thats been visited

[ ] Includes nested resource "new" form (recipes/1/ingredients/new)
  - new Visits page to log the visit to the course

[X] Includes form display of validation errors
  - Devises' login validations, also a course throws errors if you leave out the name and/or location. The new basket fields require uniqueness of basket #.

[ ] Includes Unit tests for at least 2 of your models

[ ] Conforms to Nitro Ruby linting rules (running rubocop returns 0 offenses)

[ ] Includes a README.md with an application description and installation guide


Confirm:

[ ] The application is pretty DRY
[ ] Limited logic in controllers
[ ] Views use helper methods if appropriate
[ ] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:

