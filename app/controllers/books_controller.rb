class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    #current_user.id
    @user_name= User.find(current_user.id).name
    #puts params[:id]
    sql = "select p.name as paper_name from users as u, papers as p, submissions as s where s.paper_id = p.id and  s.user_id = u.id and u.id = #{current_user.id};"
    @submitted = User.find(current_user.id).papers.select(:name).pluck(:name)
   # puts @records_array
    @submitted.each do |row|
      puts row
    end
    all = Paper.select(:name).pluck(:name)

    @not_submitted = all - @submitted
  end

end