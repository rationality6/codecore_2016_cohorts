crew = {
    captain: 'Picard',
    first_officer: 'Riker',
    lt_cdr: 'Data',
    lt: 'Worf',
    ensign: 'Ro',
    counselor: 'Troi',
    chief_engineer: 'LaForge',
    doctor: 'Crusher'
}
# Add your code below!

first_half = ->(_k, v) { v < 'M' }
# print crew.select(&first_half)
crew.each { |k, v| print "#{k}=>#{v}" }
a_to_m = crew.select(&first_half)
