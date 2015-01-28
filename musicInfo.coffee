command: "/usr/local/bin/musicInfo -f \"%t|%a|%A\""

# the refresh frequency in milliseconds
refreshFrequency: 30

# render gets called after the shell command has executed. The command's output
# is passed in as a string. Whatever it returns will get rendered as HTML.
render: (output) ->
  [track, artist, album] = output.split '|'
  """
    <span class="track info">#{track}</span>
    <span class="extra">by</span>
    <span class="artist info">#{artist}</span>
    <span class="extra">from</span>
    <span class="album">#{album}</span>
  """

# the CSS style for this widget, written using Stylus
# (http://learnboost.github.io/stylus/)
style: """
  bottom: 3%;
  right: 2.5%;
  color: #f0f0f0;
  font-family: "Fira Sans";
  font-size: 2em;
  text-align: right;
  text-shadow: 0 2px 10px rgba(0, 0, 0, 0.8);

  span
    display: block;

  .extra
    font-size: 0.5em;
    opacity: 0.5;
    line-height: 0.8em;
"""

