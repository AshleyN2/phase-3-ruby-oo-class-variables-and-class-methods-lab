class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @@count += 1
        @@name = name
        @@artist = artist
        @@genre = genre
        @@genres << genre
        @@artists << artist
    end
# INSTANCE 
    def name
        @@name
    end

    def artist
        @@artist
    end

    def genre
        @@genre
    end
# CLASS METHODS
    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq  
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #genre_count = {}
        genre_count = Hash.new(0)
        @@genres.each do |genre|
            genre_count[genre] += 1
        end
        genre_count
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each do |artist|
            artist_count[artist] += 1
        end
        artist_count
    end
end