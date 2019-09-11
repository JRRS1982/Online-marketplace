# Vinterior Tech Test

This is the project file for a tech test that I was given by Vinterior, an online marketplace selling vintage furniture, during my application and interview process, please see [here](Instructions.pdf) for the instructions sheet.

## Description

The client is an online marketplace, with a number of products for sale, similar to the below:

Product code | Name | Price
:---: | :---: | :---:
001 | Very Cheap Chair | £9.25
002 | Little table | £45.00
003 | Funky light | £19.95

Our marketing team want to offer promotions as an incentive for our customers to purchase these items, user stories have been created for this.

## [User Stories](#user_story) | [Tech](#tech) | [Installation](#installation) | [Images](#images) | [Reflection](#reflection) | [Contact](#contact)

### Problem: Input / Outputs

The interface to our checkout looks like this (shown in Ruby):

```
co = Checkout.new​(promotional_rules)
co.scan​(item)
co.scan​(item)
price = co.total
```

The output from the checkout object is going to look something like:
```
Basket: 001,002,003
Total price expected: £66.78
```
```
Basket: 001,003,001
Total price expected: £36.95
```
```
Basket: 001,002,001,003
Total price expected: £73.76
```

INPUTS: a command line application with OOP rules being used, promotional rules is going to be an argument passed to the checkout class so presumably different rules can be applied at different times, promotional rules is going to be an open struct or class perhaps, probably a struck as don't expect many methods on it. Items are going to an inheritance type object probably, maybe creating a new instance when scanned. So there will be a lot of objects being passed around, and interacted with via the command line.

OUTPUTS: As shown above, the checkout object is probably going to print a string over two lines that shows the product code of the objects in the 'basket' variable, and following that an interpolated string with the calculated 'total' price of the basket after the associated promotional discounts.

### <a name="user_story">User Stories</a>

>As an online marketplace,<br>
>I want to offer 10% off to any customer that spends more than £60 in one basket,<br>
>so that customers feel good and we make more sales.

>An an online marketplace,<br>
>I want to only charge £8.50 per very cheap chair if the customer buys more than one at the same time,<br>
>so that the customer feels good and we make more sales.

> COMPLETE <br>
>As an online marketplace,<br>
>I want our checkout to scan items in any order,<br>
>so that we don't need to fuss with the order of items at the till.

>As an online marketplace,<br>
>I want out new promotions software to be flexible and accept new conditions,<br>
>so that I don't have to pay someone to update it each time an offer changes.

#### Acceptance Criteria

Please find the acceptance criteria [here](acceptance_criteria.md) i.e. some sudo tests.

### <a name="Tech">Tech Stack</a>

* Ruby version 2.6.2
* Test suite: RSpec
* Test coverage: Simplecov
* Code style: Rubocop 0.65.0

### <a name="installation">Installation: how it works</a>

Please find attached a gem file listing those gems for installation, use the
following to run the file and install the gems:

* git clone
* bundle install

### <a name="images">Images / UML / Diagrams / Notes</a>

I mulled over class structure in markdown format after scribbling out my thoughts [here](class_structure.md)

Should there be any images / hand drawn notes, please find them in the images folder of the project.

### <a name="reflection">Reflection and further development</a>

I approached the project with a TDD mindset, creating this readme to establish the inputs / outputs, break down the user stories into small incremental steps and follow the process of creating a new Ruby project. I then played on paper to brainstorm the class structure in a class diagram and commenced with a feature test. I am attempting a top down approach, as the feature test will continue to show errors as i build the classes until a point when the first feature test passes and the processes is repeated for the next feature test.

TBA: WHAT FURTHER FEATURES WOULD I ADD IF I HAD MORE TIME?

### Credits / team members

I am always happy to receive feedback on my code, please feel free to comment freely anywhere as I want to improve.

This was a solo project with no use of any framework / tutorial.
