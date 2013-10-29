class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, only: [:registered_users, :update, :edit]

  def registered_users
    @users = User.all
  end

  def about
    @static_page = StaticPage.first
  end

  def home
    @static_page = StaticPage.all
  end

  def update
    @static_page = StaticPage.first
    if @static_page.update(params[:static_page].permit(:mission, :history, :partners, :staff_name1, :staff_name2,
                                               :staff_name3, :staff_name4, :staff_name5, :staff_name6, :staff_position1,
                                               :staff_position2, :staff_position3, :staff_position4, :staff_position5,
                                               :staff_position6, :staff_description1, :staff_description2, :staff_description3, :staff_description4,
                                               :staff_description5, :staff_description6, :staff_image1, :staff_image2, :staff_image3,
                                               :staff_image4, :staff_image5, :staff_image6, :address_line1, :address_line2,
                                               :phone_number1, :phone_number2, :email1, :email2, :question1, :question2, :question3,
                                                :question4, :question5, :question6, :answer1, :answer2, :answer3, :answer4, :answer5, :answer6,
                                               :footer_title, :footer_information, :facebook_link, :twitter_link, :gplus_link, :terms_of_use, :privacy_policy,
                                                :newsletter_subject, :newsletter_body, :newsletter_footer))
      redirect_to root_path
    else
      render 'edit'
    end
  end


  def contact
    @static_page = StaticPage.first
  end

  def privacy_policy
    @static_page = StaticPage.first
  end

  def terms_of_use
    @static_page = StaticPage.first
  end

  def edit
    @static_page = StaticPage.first
  end

end
end
