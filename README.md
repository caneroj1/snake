<h1>Snake</h1>
<a href="https://rubygems.org/gems/snake">Ruby Gems Page</a>
<p>Snake is a Rails plugin that parses custom downloads of Twitter Bootstrap v3. When you customize your own version of Twitter Bootstrap <a href="http://getbootstrap.com/customize/">here</a>, one of the files you receive is a config.json file that specifies all of the customization you just made.</p>

If you are using `gem "bootstrap-sass"`, I've found it slightly difficult to load up all of this customization without having to write it yourself. Using Snake, you can just customize your download of Bootstrap and get it loaded in right away.
<h2>Usage</h2>
Create a new directory under `app/assets/stylesheets` called json and put your config.json file there.<br/>
Add `gem "snake"` to your Gemfile.<br/>
Update and run tests: `bundle update && rake`.<br/>
Parse config.json by running `rails g snake:parse`.<br/>


<h2>Contributing</h2>
<p>If there are any bugs, make an issue.</p>
<p>If there are any desired features, either let me know or send me a pull request. Be sure to write tests and have them pass!</p>
<h2>Licensing</h2>
<p>This project uses the MIT-LICENSE.</p>
