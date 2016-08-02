string0 = "i like running and coding"

print string0.gsub(/\b(?!and)[a-z]/){$&.capitalize}
