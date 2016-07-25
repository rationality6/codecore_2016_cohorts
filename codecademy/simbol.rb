patient1 = { ruby: 'red',
             node: 'blue' }
patient2 = { ruby: 'programming',
             node: 'engine' }

patient1.each_key { |key| puts key.object_id.to_s }
patient2.each_key { |key| puts key.object_id }
