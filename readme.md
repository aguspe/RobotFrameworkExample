# Robot Framework Project: Page Object Model (POM) Learning Tool

## Introduction

Welcome to this Robot Framework project, designed as a learning tool to better understand and practice the Page Object Model (POM) design pattern in test automation. This project showcases a typical implementation of POM using the Robot Framework and Selenium.

The Robot Framework is a generic test automation framework designed for acceptance testing and acceptance test-driven development (ATDD). 
It has easy-to-use tabular test data syntax and utilizes the keyword-driven testing approach. This makes it highly readable and easy to create both simple and complex tests.

The Page Object Model (POM) is a design pattern that enables you to write more maintainable and reusable tests. In POM, each page of your application is modeled as a Python class. These classes expose the services that the page offers, rather than exposing the details and mechanics of the page.

## Installation

This project requires Python 3.7 or later. If you don't have Python installed, you can download it from https://www.python.org/.

After cloning the repository, navigate to the root directory of the project in your terminal and install the required dependencies by running:

```pip install -r requirements.txt```

This command installs all the necessary dependencies, including the Robot Framework and Selenium WebDriver.

**Running the Tests**

Once you've installed the required dependencies, you can run the tests by executing the following command in the root directory of the project:

```robot --pythonpath . tests```

This will execute all the test cases present in the 'tests' directory.

## Learning Objectives

By exploring this project, you will:

Understand the Robot Framework and its capabilities.
Learn how to write test cases using the Robot Framework.
Understand the Page Object Model (POM) and how it improves the maintainability and reusability of test automation.
Learn how to implement the Page Object Model in test automation using the Robot Framework and Selenium.
Happy learning!
