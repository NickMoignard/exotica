module ApplicationHelper
    def get_data

        # trying not to repeat myself
        @set_times = SetTime.all
        @dancers = Dancer.all
        @stages = Stage.all
      end
end
