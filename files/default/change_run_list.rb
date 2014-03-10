class ChangeRunList < ::Chef::Handler
  def initialize
  end

  def report
    ### If Chef ran successfully.
    if run_status.success?
        ### AND node has the change_run_list flag.
        if node.run_state['change_run_list']
          ### THEN reset run_list if necessary.
          unless node['run_list_handler']['post_boot_runlist'].empty?
            node.run_list.reset! node['run_list_handler']['post_boot_runlist']
            node.save
          end
        end
      end
    end
  end
end
