![DEV branch build action status](https://github.com/Oceaneering/schedulink_webapp/workflows/Node%20CI%20Pipeline/badge.svg?branch=dev)

# SchedulinkWebApp.

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.3.

### Quick start
**Make sure you have Node version >= 8.0 and (NPM >= 5 or [Yarn](https://yarnpkg.com) )**

## File Structure
We use the component approach in our project. This is the new standard for developing Angular apps and a great way to ensure maintainable code by encapsulation of our behavior logic. A component is basically a self contained app usually in a single file or a folder with each concern as a file: style, template, specs, e2e, and component class. Here's how it looks:
```
SchedulinkWebApp

├──config/                        * our configuration
 |   ├──build-utils.js             * common config and shared functions for prod and dev
 |   ├──config.common.json         * config for both environments prod and dev such title and description of index.html
 |   ├──config.dev.json            * config for development environment
 |   ├──config.prod.json           * config for production environment
 │   │                              (note: you can load your own config file, just set the evn ANGULAR_CONF_FILE with the path of your own file)
 |   ├──helpers.js                 * helper functions for our configuration files
 |   ├──karma.conf.js              * karma config for our unit tests
 |   ├──protractor.conf.js         * protractor config for our end-to-end tests
 │   ├──webpack.common.js          * common tasks for webpack build process shared for dev and prod
 │   ├──webpack.dev.js             * our development webpack config
 │   ├──webpack.prod.js            * our production webpack config
 │   └──webpack.test.js            * our testing webpack config
 │
 ├──src/                           * our source files that will be compiled to javascript
 |   ├──main.browser.ts            * our entry file for our browser environment
 │   │
 |   ├──index.html                 * Index.html: where we generate our index page
 │   │
 |   ├──polyfills.ts               * This file is divided into 2 sections:
 │   │                                   *   1. Browser polyfills. The code we write is mostly in ES6  is not compatible with IE or firefox and needs some environment │   │   │                                   *   setups before being able to be viewed or used in these browserslines of code which make your application compatible for │   │   │                                   *   different browsers.
 │   │                                   *   2. Application imports. Files imported that should be loaded before your main file.
 │   │
 │   ├──app/                       * WebApp: folder
 │   │   ├──app.component.spec.ts  * a simple test of components in app.component.ts
 │   │   ├──app.e2e.ts             * a simple end-to-end test for /
 │   │   └──app.component.ts       * a simple version of our App component components
 │   │   │
 │   │   ├──login/                       * login Component Folder
 │   │   │   ├──login.component.html     * login page html
 │   │   │   ├──login.component.scss     * style specific to login page if any
 │   │   │   ├──login.component.ts       * a simple version of our login component
 │   │   │   ├──login.component.spec.ts  * a simple test of component in login.component.ts
 │   │   │   ├──login.e2e.ts             * a simple end-to-end test for login
 │   │   │
 │   │   ├──services/                    * integration between Component and Node apis
 │   │   │
 │   │   ├──shared/                      * shared classes
 │   │   │
 │   │   ├──utils/                       * common utilities for app like constants list or helper class
 │   │
 │   └──assets/                    * static assets are served here
 │       ├──icon/                  * our list of icons
 │       ├──robots.txt             * for search engines to crawl your website
 │       └──humans.txt             * for humans to know who the developers are
 │
 │
 ├──tslint.json                    * typescript lint config
 ├──typedoc.json                   * typescript documentation generator
 ├──tsconfig.json                  * typescript config used outside webpack
 ├──tsconfig.webpack.json          * config that webpack uses for typescript
 ├──package.json                   * what npm uses to manage its dependencies
 └──webpack.config.js              * webpack main configuration file

 ```
 # Getting Started
 ## Dependencies
 What you need to run this app:
 * `node` and `npm` (`brew install node`)
 * Ensure you're running the latest versions Node `v8.x.x`+ (or `v9.x.x`) and NPM `5.x.x`+

 > If you have `nvm` installed, which is highly recommended (`brew install nvm`) you can do a `nvm install --lts && nvm use` in `$` to run with the latest Node LTS. You can also have this `zsh` done for you [automatically](https://github.com/creationix/nvm#calling-nvm-use-automatically-in-a-directory-with-a-nvmrc-file)

 Once you have those, you should install these globals with `npm install -g`:
 *  for example `karma` (`npm install -g karma-cli`)
 *  for example `protractor` (`npm install -g protractor`)
 *  for example `typescript` (`npm install -g typescript`)
 *  for example `tslint` (`npm install -g tslint@4.5.1`)

 ## Installing
* `npm install` to install all dependencies
* `ng serve` to start the dev server in another tab

### Server
```bash
# development only
ng serve
```

### Run unit tests
```bash
npm run test
```

### Run end-to-end tests
```bash
# this will start a test server and launch Protractor
npm run e2e
```

# Configuration
Configuration files live in `config/` we are currently using webpack, karma, and protractor for different stages of your application

# AoT Don'ts
The following are some things that will make AoT compile fail.

- Don’t use require statements for your templates or styles, use styleUrls and templateUrls, the angular2-template-loader plugin will change it to require at build time.
- Don’t use default exports.
- Don’t use `form.controls.controlName`, use `form.get(‘controlName’)`
- Don’t use `control.errors?.someError`, use `control.hasError(‘someError’)`
- Don’t use functions in your providers, routes or declarations, export a function and then reference that function name
- @Inputs, @Outputs, View or Content Child(ren), Hostbindings, and any field you use from the template or annotate for Angular should be public

For more detailed guide on AoT's Do's and Don'ts refer to https://github.com/rangle/angular-2-aot-sandbox

# External Stylesheets
Any stylesheets (Sass or CSS) placed in the `src/styles` directory and imported into your project will automatically be compiled into an external `.css` and embedded in your production builds.

For example to use Bootstrap as an external stylesheet:
1) Create a `styles.scss` file (name doesn't matter) in the `src/styles` directory.
2) `npm install` the version of Boostrap you want.
3) In `styles.scss` add `@import '~bootstrap/scss/bootstrap.scss';`
4) In `src/app/app.module.ts` add underneath the other import statements: `import '../styles/styles.scss';`

# TypeScript
> To take full advantage of TypeScript with autocomplete you would have to install it globally and use an editor with the correct TypeScript plugins.

## Use latest TypeScript compiler
TypeScript 2.7.x includes everything you need. Make sure to upgrade, even if you installed TypeScript previously.

```
npm install --global typescript
```

## Use a TypeScript-aware editor
We have good experience using these editors:

* [Visual Studio Code](https://code.visualstudio.com/)
* [Webstorm 2018.1](https://www.jetbrains.com/webstorm/download/)
* [Atom](https://atom.io/) with [TypeScript plugin](https://atom.io/packages/atom-typescript)
* [Sublime Text](http://www.sublimetext.com/3) with [Typescript-Sublime-Plugin](https://github.com/Microsoft/Typescript-Sublime-plugin#installation)




