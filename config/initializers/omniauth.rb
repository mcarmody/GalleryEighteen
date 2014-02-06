Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "S0vXM91dozbb7xHCrf1Cw", "RX1Lrp4bPg08HlFTYHPb9yVtherbEOXcgOU00glg"
  {
  	:secure_image_url => 'true',
    :image_size => 'normal',
  }
end