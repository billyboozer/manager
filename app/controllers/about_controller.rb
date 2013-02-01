class AboutController < ApplicationController
  def company
    @name = params[:name]
    @year = params[:year]
  end

  def contact
    @user_agent = request.env["HTTP_USER_AGENT"]
  end

  def future
    @year = 2020
    render template: "about/company"
  end

  def supervisors
    @supervisors = ["Bob Jones", "Jodi Bell", "Benjamin Krause", "Mark Fritz"]
  end

  def managers
    @managers = ["Wilbur Blixby", "Horatio Jebediah", "Antoine Fisher", "Julio Gallows"]
  end

  def monthly_special
    @widget = Widget.order("RANDOM()").last
  end

  def companie
    flash[:notice] = "You do not know how to spel!"
    redirect_to params.merge(action: "company")
  end

  def more_info
  end

  def thank_you
    @user = User.create(name: params[:full_name], color: params[:color])
  end
end
