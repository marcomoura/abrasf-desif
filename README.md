# DES-IF ABRASF

Here are the tables of the conceptual model 2.3 of DES-IF from ABRASF

It contains the following models:

* Service Item - list of services from Complementary law 116/2003


## Getting started

```ruby
gem 'desif_abrasf'
```

Run the bundle command to install it.

After you install add it to your Gemfile, you need to run the migration:

```console
rake db:migrate
```

After the migration, you need to run the taks to load the seeds:

```console
rake desif_abrasf:db:seed
```
