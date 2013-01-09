ActiveAdmin.register_page "Dashboard" do


  content :title => proc{ I18n.t("active_admin.dashboard") } do
   panel "Buildings" do
    table_for Building.order("created_at desc").limit(5) do
      column :name do |building|
        link_to building.name, [:admin, building]
      end
      column "Created On", :created_at
      column "Number of Votes" do |building|
        building.votes.length
      end
      column "Last Vote" do |building|
        time_ago_in_words(building.votes.last.created_at) + " ago" if building.votes.last!=nil
      end
    end
    strong { link_to "View All Buildings", admin_buildings_path }
  end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
