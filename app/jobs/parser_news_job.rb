class ParserNewsJob < ApplicationJob
  queue_as :default

  def perform
    ParserService.new.render_source
  end

end
