// TODO Set up Stimulus here
// eslint-disable-next-line import/no-extraneous-dependencies
import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "@hotwired/stimulus-webpack-helpers"

window.Stimulus = Application.start();
const context = require.context("./controllers", true, /\.js$/)
Stimulus.load(definitionsFromContext(context))
