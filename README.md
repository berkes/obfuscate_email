# Obfuscate Email #

A simple commandline emailadress obfuscator

## Install ##

`gem install obfuscate_email`

## Use ##

`$ obfuscate me@example.com`
`=> <script type="text/javascript"> document.write('<a style="unicode-bidi: bidi-override; direction: rtl;" href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;me&#64;example&#46;com">moc.elpmaxe@em</a>');</script>`

## Thanks ##

Idea and concepts from
 https://github.com/craigerm/email-obfuscate-octopress/blob/master/email.rb
