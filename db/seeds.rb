# coding: utf-8

User.create!( name: "Sample User",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)
              
User.create!( name: "Sample2 User",
              email: "sample2@email.com",
              password: "password",
              password_confirmation: "password")