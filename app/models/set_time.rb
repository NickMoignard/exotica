class SetTime < ApplicationRecord
    belongs_to :dancer
    belongs_to :stage


    # GETTERS AND SETTERS

    # SET Dancer
    def fake_name=(name)
        self.dancer_id = Dancer.find_or_create_by(fake_name: name).id
    end
    # GET Dancer
    def fake_nameß
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

end
