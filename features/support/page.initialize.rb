Dir[File.join(File.dirname(__FILE__), '~/../cucumber-ruby')].each { |file| require file }

module Page

    def login
        @login ||= LoginPage.new
    end

    def home
        @home ||= HomePage.new
    end
end