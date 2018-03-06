module ApplicationHelper
    def get_data

        # trying not to repeat myself
        @set_times = SetTime.all
        @dancers = Dancer.all
        @stages = Stage.all
    end

    def get_todays_data

        @all_set_times = SetTime.all.order(:time)

        @until_date = DateTime.now
        until { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }.key?(@until_date.strftime('%A').downcase)
          @until_date + 1
        end

        @set_times = @all_set_times.first(180)

        @dancers = Dancer.all
        @stages = Stage.all
    end

    def dancer_fake_name(id)
        @dancer = Dancer.find(id)
        return @dancer.fake_name
    end

    def stage_name(id)
        @stage = Stage.find(id)
        return @stage.name
    end

end
