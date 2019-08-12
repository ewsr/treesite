class Species < ApplicationRecord
    has_many :trees

    def get_latin_name
        name_array = []
        name_array += genus.present? ? [genus] : []
        name_array += species.present? ? [species] : []
        name_array += cultivar.present? ? ["'"+cultivar+"'"] : []
        string = name_array.reject(&:empty?).join(" ")
        return string.present? ? string : "Tree #{id}"
    end 

    def get_common_name
        common_name
    end 

    def get_description
        description
    end 
end 

    


