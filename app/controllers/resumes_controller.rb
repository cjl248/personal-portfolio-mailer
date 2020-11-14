require_relative '../services/resume.rb'

class ResumesController < ApplicationController

  def download_resume
    send_file(
      Resume.get_resume,
      type: 'application/pdf',
      disposition: 'attachment',
      url_based_filename: false)
  end

end
