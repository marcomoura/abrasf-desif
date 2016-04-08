[![wercker status](https://app.wercker.com/status/ebd567df675e3729babbdbafc4651e3e/s/master "wercker status")](https://app.wercker.com/project/bykey/ebd567df675e3729babbdbafc4651e3e)
[![Dependency Status](https://gemnasium.com/badges/github.com/marcomoura/desif_abrasf.svg)](https://gemnasium.com/github.com/marcomoura/desif_abrasf)
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
