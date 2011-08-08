Given /the version number (.+?)$/ do |full_version|
  @original_version = Versionifier::Version.new full_version
end

When /I increment (.+?) by (\d+?)$/ do |which, quant|
  @final_version  = @original_version.increment which.to_sym, quant.to_i
end

When /I increment (.+?) by (\d+?) and reset everything under/ do |which, quant|
  @final_version = @original_version.increment which.to_sym, quant.to_i, :reset
end

Then /I should get (.+?)$/ do |final_version|
  @final_version.should == final_version
end