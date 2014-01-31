require 'minitest/autorun'
require 'uri'
require_relative '../lib/obfuscate_email.rb'

describe ObfuscateEmail do
  let(:command) { "ruby -Ilib #{File.expand_path(File.join('bin', 'obfuscate'))}" }
  let(:email)   { "an.email@example.com" }

  it "runs successfully" do
    system("#{command} #{email}").must_equal true
  end
  describe "output" do
    before do
      @out = %x[ #{command} #{email} ]
    end

    it "encapsulates a script tag" do
      @out.must_match /\<script type=\"text\/javascript\"\>/
      @out.must_match /document\.write\(/
      @out.must_match /\<\/script\>/
    end

    it "encodes the mailto tag" do
      @out.must_match /&#109;&#97;&#105;&#108;&#116;&#111;&#58;/
    end

    it "reverses the visible emailadress" do
      @out.must_match /style=\"unicode-bidi: bidi-override; direction: rtl;\"/
      @out.must_match /moc\.elpmaxe@liame\.na/
    end

    it "encodes the anchor mailadress" do
      @out.must_match /an&#46;email&#64;example&#46;com/
    end
  end
end
