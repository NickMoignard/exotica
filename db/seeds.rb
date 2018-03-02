# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@poles = ["Upstairs Main", "Upstairs Secondary", "Downstairs Main", "Downstairs Booth", "Downstairs Bar"]
@fake_names = ["Alexa", "Siri", "Sarah", "Lauren", "Tilly", "Cleo", "Arial", "Lexi", "Tonya", "Natasha", "Susie", "Philipa"]
@full_name = "Jane Doe"
@account = 50.0
@datetime = DateTime.new(2018,3,7,20,0,0)
@fifteens = []
@timeSlots = []
@days = { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }
@num_min_in_day_float = 1440.0
@num_time_slots = 36
@set_length = 15
# UNCOMMENT TO POPULATE DANCERS
# @fake_names.each do |name|
#     Dancer.create(fake_name: name, full_name: @full_name, account: @account)
# end

# HELPERS
def open(day: string)
    return { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }.key?(day)
end

def rand_fake_name
    return @fake_names[rand(@fake_names.count)]
end


def populate


    

    30.times do |i|
        @fifteens << i * @set_length
    end
    (0..30).each do |day_int|
        @_day = @datetime + day_int
        
        @fifteens.each do |x|
            @timeSlots << @_day + x/@num_min_in_day_float
        end
    end
    @timeSlots.each do |t|
        if open(day: t.strftime('%A').downcase )
            @poles.each do |pole|
                SetTime.create(fake_name: rand_fake_name, stage_name: pole, time: t)
            end
        end    
    end
end    


# UNCOMMENT TO POPULATE SET TIMES DB
populate





# @poles.each do |pole|
# @timeSlots.each do |timeSlot|


    # puts open(day: DateTime.new(2018,3,7).strftime('%A').downcase)
        # if open(timeSlot.strf('%A').downcase)
        #     SetTime.create(fake_name:  rand_fake_name, stage_name: pole, time: timeSlot)
        # end
# end
# end
