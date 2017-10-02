ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
   

  columns do
    column do
      panel "Usuarios recientes" do
        render 'hola'
      end
    end
  end
  #         ul do
  #           Publication.last
  #           # recent(5).map do |publication|
  #           #   li link_to(publication.titulo, admin_post_path(publication))
  #           # end
  #         end
  #       end
  #     end
  # end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
    # columns do
    #   column do
    #     panel "Usuarios Creados" do
    #       ul do
    #         line_chart User.group_by_day(:created_at).count 
            
    #          end
    #       end
    #     end
    #   end




  end # content
end


