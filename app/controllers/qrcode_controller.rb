require 'rqrcode_png'

class QrcodeController < ApplicationController
  def index
  	@host = request.host_with_port
    @qr = RQRCode::QRCode.new(@host + '/player/login', :size => 14, :level => :h).to_img.resize(200, 200).to_data_url
  end

end
