[![wercker status](https://app.wercker.com/status/ebd567df675e3729babbdbafc4651e3e/s/master "wercker status")](https://app.wercker.com/project/bykey/ebd567df675e3729babbdbafc4651e3e)
[![Dependency Status](https://gemnasium.com/badges/github.com/marcomoura/desif_abrasf.svg)](https://gemnasium.com/github.com/marcomoura/desif_abrasf)
[![Code Climate](https://codeclimate.com/repos/570b9abdd165c835ca0053d5/badges/846b8f2a08ca8b537537/gpa.svg)](https://codeclimate.com/repos/570b9abdd165c835ca0053d5/feed)
# DES-IF ABRASF

Here are the tables of the conceptual DES-IF version 2.3 from ABRASF

It contains the following models:

* Service Item   - List of services from Complementary law 116/2003
* Tax Codes      - List of tax codes from DES-IF
* Cities         - List of Cities from IBGE
* City Tax Codes - Tax codes from City (without seed)


## Getting started

```ruby
gem 'abrasf-desif'
```

Run the bundle command to install it.

After you install add it to your Gemfile, you need to run the migration:

```console
rake db:migrate
```

After the migration, you need to run the following task to load the seeds:

```console
rake abrasf:desif:db:seed
```
