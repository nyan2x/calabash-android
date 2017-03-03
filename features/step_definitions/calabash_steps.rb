When( /^I press button (\d+|\*|=)$/ ) do | btn |
  touch( query( "AppCompatButton marked:'" + btn + "'" ) )
end

Then( /^I see the answer (\d+.\d+)$/) do | ans |
  check_element_exists( "AppCompatEditText marked:'" + ans + "'" )
end
