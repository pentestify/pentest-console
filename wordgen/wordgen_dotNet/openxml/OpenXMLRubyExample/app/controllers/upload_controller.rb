require 'data_file'
class UploadController < ApplicationController
  def initialize
    
  end

  def index
    render :file=> 'app\\views\\uploadfile.rhtml'
  end

  def uploadfile
    DataFile.save(params[:upload],params[:upload1],params[:upload2])
    #send the new file with the docx content type
    send_file("#{RAILS_ROOT}/public/resources/newdoc.docx", :filename=> "newdoc.docx", :type=>"application/vnd.openxmlformats-officedocument.wordprocessingml.document")
  end
end
