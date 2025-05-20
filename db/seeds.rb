Resource.delete_all

resources = [
  {
    title: "docs.npmjs.com",
    description: "The npm documentation provides a comprehensive guide to the npm CLI and ecosystem. It covers how to install packages, manage dependencies, configure project settings, use workspaces, and publish packages. The documentation is aimed at developers working with Node.js-based applications.",
    url: "https://docs.npmjs.com/",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "npm-install",
    description: "This page explains the `npm install` command, which is used to install dependencies into a Node.js project. It covers installing all dependencies, installing a single package, using options like `--save`, `--global`, and more. It also explains behavior with package-locks and how peer dependencies are handled.",
    url: "https://docs.npmjs.com/cli/v10/commands/npm-install",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "npmrc",
    description: "Describes how to configure npm through `.npmrc` files or environment variables. It lists available configuration options for authentication, proxies, registry, and script behavior. Each option is documented with default values and possible overrides.",
    url: "https://docs.npmjs.com/cli/v10/configuring-npm/npmrc",
    categories: 'DevOps & Infrastructure, Software Development & Engineering'
  },
  {
    title: "documentation",
    description: "This page documents the `documentation` npm package, a tool for generating static HTML or Markdown documentation from annotated JavaScript source code using JSDoc. It describes usage, CLI options, examples, and configuration for customizing output.",
    url: "https://www.npmjs.com/package/documentation",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "documentation#usage",
    description: "The \"Usage\" section shows how to run the `documentation` CLI tool to parse JSDoc comments in source files and generate readable documentation in HTML or Markdown formats. It includes basic command examples and expected output structure.",
    url: "https://www.npmjs.com/package/documentation#usage",
    categories: 'Web Development, Core Programming Knowledge'
  },
  {
    title: "documentation#examples",
    description: "This section provides example commands and configurations for using the `documentation` tool. Examples demonstrate how to generate HTML output, use themes, output JSON, and include private methods.",
    url: "https://www.npmjs.com/package/documentation#examples",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "api.rubyonrails.org",
    description: "The Ruby on Rails API documentation offers in-depth reference for the entire Rails framework. It includes modules and classes such as ActiveRecord, ActionController, and ActionView, with method definitions and usage details.",
    url: "https://api.rubyonrails.org/",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "Base.html",
    description: "This page documents ActiveRecord::Base, the main class for ORM in Rails. It provides methods for querying, persisting, and associating models with the database.",
    url: "https://api.rubyonrails.org/classes/ActiveRecord/Base.html",
    categories: 'Databases & Data Management, Software Development & Engineering'
  },
  {
    title: "Base.html",
    description: "Describes ActionController::Base, the base class for handling web requests in Rails controllers. It includes methods for filters, parameters, rendering views, and session management.",
    url: "https://api.rubyonrails.org/classes/ActionController/Base.html",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "guides.rubyonrails.org",
    description: "The Ruby on Rails Guides are beginner-to-advanced tutorials on building applications using Rails. Topics include MVC, routing, ActiveRecord, testing, security, and performance.",
    url: "https://guides.rubyonrails.org/",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "getting_started.html",
    description: "This guide walks beginners through building a basic Rails application from scratch. It introduces MVC architecture, Rails generators, routing, models, controllers, and views.",
    url: "https://guides.rubyonrails.org/getting_started.html",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "routing.html",
    description: "Explains the Rails routing system, which maps incoming URLs to controller actions. Covers route syntax, named routes, and RESTful conventions.",
    url: "https://guides.rubyonrails.org/routing.html",
    categories: 'Web Development, Core Programming Knowledge'
  },
  {
    title: "active_record_basics.html",
    description: "Covers the basics of Active Record, Rails’ ORM system. Includes creating models, database migrations, validations, callbacks, and associations.",
    url: "https://guides.rubyonrails.org/active_record_basics.html",
    categories: 'Databases & Data Management, Web Development'
  },
  {
    title: "association_basics.html",
    description: "Explains how to use associations in Active Record, such as `belongs_to`, `has_many`, and `has_one`, including advanced options and dependent behavior.",
    url: "https://guides.rubyonrails.org/association_basics.html",
    categories: 'Databases & Data Management, Software Development & Engineering'
  },
  {
    title: "migrations.html",
    description: "Details how to manage database schema changes using migrations. Includes creating tables, modifying columns, and best practices for versioning.",
    url: "https://guides.rubyonrails.org/migrations.html",
    categories: 'Databases & Data Management, DevOps & Infrastructure'
  },
  {
    title: "api_documentation_guidelines.html",
    description: "Describes conventions and best practices for documenting Rails APIs. Topics include request/response formats, examples, and versioning.",
    url: "https://guides.rubyonrails.org/api_documentation_guidelines.html",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "testing.html",
    description: "Explains testing in Rails using Minitest. Covers unit, functional, integration, and system tests with fixtures and mocks.",
    url: "https://guides.rubyonrails.org/testing.html",
    categories: 'Software Development & Engineering'
  },
  {
    title: "active_model_basics.html",
    description: "Describes Active Model, which allows plain Ruby objects to be used with Action Pack. Covers validations, serialization, and callbacks.",
    url: "https://guides.rubyonrails.org/active_model_basics.html",
    categories: 'Software Development & Engineering'
  },
  {
    title: "rails_db#installation",
    description: "Instructions for installing `rails_db`, a Rails engine for visualizing and querying databases via the web interface.",
    url: "https://github.com/igorkasyanchuk/rails_db#installation",
    categories: 'Databases & Data Management, DevOps & Infrastructure'
  },
  {
    title: "rails_db#features",
    description: "Lists the features of `rails_db` including browsing tables, executing SQL, CSV export, and data previews.",
    url: "https://github.com/igorkasyanchuk/rails_db#features",
    categories: 'Databases & Data Management, Software Development & Engineering'
  },
  {
    title: "apipie-rails#installation",
    description: "Explains how to install Apipie-Rails, a gem for documenting RESTful APIs with a DSL integrated into Rails controllers.",
    url: "https://github.com/Apipie/apipie-rails#installation",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "apipie-rails#usage",
    description: "Shows how to document Rails APIs using Apipie by adding annotations and generating Swagger-like interactive docs.",
    url: "https://github.com/Apipie/apipie-rails#usage",
    categories: 'Web Development, Software Development & Engineering'
  },
  {
    title: "about",
    description: "Introduces the OpenAPI Specification (formerly Swagger). Describes its goals and uses for defining RESTful APIs in a standardized format.",
    url: "https://swagger.io/docs/specification/about/",
    categories: 'Web Development, DevOps & Infrastructure'
  },
  {
    title: "basic-structure",
    description: "Details the components of an OpenAPI definition file, including paths, operations, parameters, and responses.",
    url: "https://swagger.io/docs/specification/basic-structure/",
    categories: 'Web Development, DevOps & Infrastructure'
  },
  {
    title: "Base",
    description: "Provides detailed documentation for `ActiveRecord::Base`, including inherited methods and usage examples for database interaction.",
    url: "https://apidock.com/rails/ActiveRecord/Base",
    categories: 'Databases & Data Management, Software Development & Engineering'
  },
  {
    title: "FormHelper",
    description: "Documents the `FormHelper` module, which simplifies generating form tags and inputs in Rails views.",
    url: "https://apidock.com/rails/ActionView/Helpers/FormHelper",
    categories: 'Web Development'
  },
  {
    title: "awesome-docs#tools",
    description: "A list of tools for writing and generating documentation, including Sphinx, MkDocs, Docusaurus, and Slate.",
    url: "https://github.com/testthedocs/awesome-docs#tools",
    categories: 'Software Development & Engineering'
  },
  {
    title: "awesome-docs#guides--articles",
    description: "Curated guides and articles on best practices for writing technical documentation.",
    url: "https://github.com/testthedocs/awesome-docs#guides--articles",
    categories: 'Software Development & Engineering'
  },
  {
    title: "10-open-source-documentation-frameworks-to-check-out-331f#1-docusaurus",
    description: "Overview of Docusaurus, a documentation site generator built by Facebook. It supports Markdown and React components.",
    url: "https://dev.to/silviaodwyer/10-open-source-documentation-frameworks-to-check-out-331f#1-docusaurus",
    categories: 'Web Development'
  },
  {
    title: "10-open-source-documentation-frameworks-to-check-out-331f#2-vuepress",
    description: "Introduces VuePress, a Vue-powered static site generator for building beautiful documentation sites.",
    url: "https://dev.to/silviaodwyer/10-open-source-documentation-frameworks-to-check-out-331f#2-vuepress",
    categories: 'Web Development'
  }
]


Resource.create(resources)
