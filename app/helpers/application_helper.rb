module ApplicationHelper
  def load_ng_template(partial)  
    content_tag :script,
      type: 'text/ng-template',
      id: "#{partial}.html" do 
        render partial 
      end
  end
end
