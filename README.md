# Recap
* We should have a `lib` and `test` directory in our project
* `minitest` setup
  * Required in test file
    * `minitest`
    * `minitest/autorun`
    * `minitest/pride` (optional but nice)
  * Test class inherits from `Minitest::Test`
  * Syntax for a minitest is
  ```
    def test_my_test_name
      ...
    end
  ```
  * Best naming convention for a minitest is a human readable method name, that describes what the test is doing. For example `test_calculator_adds_negatives`
  * Tests *should* have unique names, but they do not need to be written in a specific order. They do not necessarily run in order so it is bad practice to have one test rely on another having completed

* Assertion methods
  * `assert_instance_of <Class>, <Object>` - Makes sure that `<Object>` is of type `<Class>`. For instance, is the calculator object we created actually from the Calculator Class
  * `assert_equal <Expected>, <Input>` - Makes sure that `<Input>` (from a method or expression) is identical to what you `<Expected>` it to be
  * `refute <Value>, <Input>` - Makes sure that `<Input>` is **not** identical to `<Value>`
