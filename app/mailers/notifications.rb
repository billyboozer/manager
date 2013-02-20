class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.widget-creation.subject
  #
  def widget_creation(widget)
    @widget = widget
    # attachments.inline["cogs_email.png"]=File.read(Rails.root.join("app/assets/images/cogs_email.png"))

    # attachments.inline['cogs_email.png'] = {
    #                             :data => File.read(Rails.root.join("app/assets/images/cogs_email.png")),
    #                             :mime_type => "image/png",
    #                             :encoding => "base64"
    #                           }

    mail to: "boozerbilly@gmail.com"
  end
end
