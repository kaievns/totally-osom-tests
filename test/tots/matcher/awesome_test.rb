require 'test_helper'

describe TOTS::Matcher do

  describe "awesome matchers" do
    describe "==" do
      it "must assert properly" do
        22.must == 22
      end

      it "must fail correctly" do
        assert_raises(TOTS::Fail){ 22.must == 33 }
      end
    end

    describe "!=" do
      it "must assert correctly" do
        22.must != 33
      end

      it "must fail correctly" do
        assert_raises(TOTS::Fail) { 22.must != 22 }
      end
    end

    describe "=~" do
      it "must assert correctly" do
        '22'.must =~ /2/
      end

      it "must fail correctly" do
        assert_raises(TOTS::Fail) { '22'.must =~ /3/ }
      end
    end
  end
end
