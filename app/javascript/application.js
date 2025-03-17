// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Raty from "./raty";
window.Raty = Raty
//= require jquery
//= require jquery_ujs
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;