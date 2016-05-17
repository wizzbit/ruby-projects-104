
class Records
    def set_title=(title)
        @title = title
    end
    
    def get_title
        return @title
    end
    
    def set_producer=(producer)
        @producer = producer
    end
    
    def get_producer
        return @producer
    end
end

class Song < Records
    def set_produced_date=(produced_date)
        @produced_date = produced_date
    end
    
    def get_produced_date
        return @produced_date
    end
    
    def set_artist=(artist)
        @artist = artist
    end
    
    def get_artist
        return @artist
    end
    
    def set_forward_artist=(forward_artist)
        @forward_artist = forward_artist
    end
    
    def get_forward_artist
        return @forward_artist
    end
    
    def about_song
        return "#{@title} is written by #{@artist} and published by #{@producer}."
    end
end

class Number1 < Records
    def set_producer=(producer)
        @producer = producer
    end
    
    def get_producer
        return @producer
    end
end


my_song = Song.new
my_song.set_title = 'Bohemian Rhapsody'
my_song.set_artist = 'Freddy Mercury'
my_song.set_producer = 'Queen'
puts my_song.get_title
puts my_song.get_artist
puts my_song.about_song


