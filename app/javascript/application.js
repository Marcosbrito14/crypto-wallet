//Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import jquery from "jquery"
window.jQuery = jquery
window.$ = jquery

import * as notifyjs from "notifyjs"
window.$.notifyjs=notifyjs

import * as bootstrap from "bootstrap"


//window.$ = jQuery
