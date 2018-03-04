class SetTime < ApplicationRecord
    belongs_to :dancer
    belongs_to :stage
<<<<<<< HEAD
=======


    # GETTERS AND SETTERS

    # SET Dancer
    def fake_name=(name)
        self.dancer_id = Dancer.find_or_create_by(fake_name: name).id
    end
    # GET Dancer
    def fake_name
        self.dancer_id
    end
    # SET Stage
    def stage_name=(name)
        self.stage_id = Stage.find_or_create_by(name: name).id
    end
    # GET Stage
    def stage_name
        self.stage_id
    end

>>>>>>> 6ccd12dee487bbd0f1a6d5ac2171c66784ff9c66
end
