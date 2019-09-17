class School
  # Schoolクラスに以下のメソッドを定義
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :intoroduction_statement
  # ↓initializeメソッドを定義、「School.new」によるインスタンス生成時に渡された引数をa_schoolへ代入
  def initialize(name,address,number_of_students,founding_years,introduction_video_url,intoroduction_statement)
    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @intoroduction_statement = intoroduction_statement
  end

  def sample_instance_method
    require "launchy"
    Launchy.open( "https://www.youtube.com/channel/UC3YZBzqHfVCtwj2-IAXFj-w" )

  end
end

a_school = School.new("A学校", "東京都渋谷区", 300, 100, "https://hoge.com", "A学校は自然豊かな")

b_school = School.new("B学校", "東京都渋谷区", 500, 30, "https://hogefuga.com", "B学校は自然豊かな")


a_school.sample_instance_method()
b_school.sample_instance_method()
