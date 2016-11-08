Setup a simple ruby project:

1. Add a Gemfile and add rspec as a dependency

```ruby
source "https://rubygems.org"
gem "rspec"
```

Install your dependencies:

```
bundle install --path .bundle --binstubs
bin/rspec --init
```

This installs your dependencies into `.bundle`, adds `bin` for binaries, rspec binary is added here. We scaffold the `rspec` with the `init` args.
This adds a `.rspec` and a `spec/spec_helper.rb`, configure `rspec` in the latter file.

---

The objective of the project is unit testing the Wycash application  When starting off with Rspec, you need to nest your tests a lot deeper than the XUnit structure 
suggested by the book.


Avoid getting into circumstances where you have circular requires, this means that you project is broken. In such cases, if you still want to keep using the same code, move the require a few lines down until after the class is defined.

> Ruby would expect that the class you are attempting to inject can respond_to the message you are sending it, but Ruby is dynamic and you can out anything in there, leading to obvious bugs.

> Also, note that Ruby does not attempt to lookup `Franc` from `Money` until the `franc` method has been invoked. That is the sole reason that code with circular dependencies works.

---

Key points:

1. TDD helps manage fear and provides reassurance as well as rapid feedback.

2. As problems get more complex, the tests should cover a lot less distance.

Methodology:

1. Add a new test and watch it fail

2. Make a small change and run all tests

3. Once all tests pass and refactor to remove duplication

This is also known as `red-green-refactor`.

---

Strategies to make the test pass:

1. Fake it:

return a constant, keep replacing them with variables until we have no more duplication between test and code.

2. Original implementation:

when you know how to implement something, just do it.

3. Triangulation

generalize code only when you have two or more tests.

the author uses the third technique when he is not sure how to refactor the code

---

> Unit testing can be used to translate `best practices` into actionable tasks.

When the success of a test depends on the success/failure of another test, there is a risk of the former test reporting a bad value due to the latter.

When refactoring, there might be situations where the tests will be inadequate for the code. Stop and write the tests for those cases immediately.

---
