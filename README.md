#Tweet Now! 1: Single User Challenge

This is the first challenge in a sequence of challenges, leading up to building an application to _schedule future_ tweets and _deploying it_ to _Heroku_.

To start, we'll create an application that _lets a single user tweet_. We'll _hard-code_ the user from which we'll be tweeting. Later we'll add support for _logging in via Twitter_ so that anyone can tweet. Finally, we'll add the ability to _schedule tweets_ into the future.

You'll learn about _background jobs_, _tasks queues_, and _scheduled tasks over these challenges_ — three fundamental components to building a usable, scalable web application. You'll also learn some _sysadmin voodoo_ to _manage development_ and _production credentials_, and a bit of the inner workings of _OAuth_.

All in a day's work, right?

##Objectives ###Tweet It!

Create a _single page_ with a _form_, a _text field_, and a _submit button_. When the user _posts_ this form it should _Tweet_ whatever text the user typed.
The account from which the application tweets should be hard-coded for now. You can make it your own personal tweet page if you'd like.

###Tweet It, Asynchronously!

_It takes time_ to _tweet_ something and that makes for a _subpar user experience_. _Bind_ to your form's submit event and instead _submit_ an _AJAX request_. As soon as the _form is submitted_, _disable the form elements_, _display a message_ letting the user know their _tweet_ is being _processed_, and display an _"all good"_ or _"error"_ _message_ via the _AJAX callback_ once the tweet has _actually been processed_.

- [jQuery .submit()](http://api.jquery.com/submit/)
- [How to disable/enable an element with jQuery](http://jquery-howto.blogspot.com/2008/12/how-to- disableenable-element-with.html)
￼￼￼￼￼￼￼￼￼