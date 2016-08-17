class Dog
    # attr_accessor :bones

    def initialize
        @bones = []
    end

    def give_bone(bone_size)
        @bones << bone_size if @bones.size < 3
        @bones.size
    end

    def eat_bone
        @bones.last
    end

    def bone_count
        @bones.length
    end
end
