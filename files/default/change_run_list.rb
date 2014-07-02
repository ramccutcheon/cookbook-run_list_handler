# encoding: UTF-8
# Class documentation needs to be updated here
#
#
#
class ChangeRunList < ::Chef::Handler
  def initialize
  end

  def report
    ### If Chef ran successfully
    ### AND node is in the specified role
    ### AND node has the change_run_list flag
    return unless run_status.success? && node.roles.include?(node['run_list_handler']['enabled_role']) && node.run_state['change_run_list']
    ### THEN reset run_list if necessary.
    return  if node['run_list_handler']['post_boot_runlist'].empty?
    node.run_list.reset! node['run_list_handler']['post_boot_runlist']
    node.save
  end
end
