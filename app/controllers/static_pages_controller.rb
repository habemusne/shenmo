class StaticPagesController < ApplicationController
  def index
  end

  def shenmo_about
    @abacus_images = [
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/20131210105609883.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/20131210105721383.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/20131210105834267.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/20131210105956559.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7+2016-06-02+%E4%B8%8A%E5%8D%8811.56.26.png',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7+2016-06-02+%E4%B8%8A%E5%8D%8811.57.39.png',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E6%8A%98%E5%8F%A0%E7%AE%97%E7%9B%98.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E7%AE%97+%E7%9B%98.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E7%AE%97%E7%9B%98.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E7%AE%97%E7%9B%98%E5%B1%8F%E9%A3%8E.bmp',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E7%AE%97%E7%9B%98%E7%AA%97%E6%88%B7.jpg',
      'https://s3-us-west-2.amazonaws.com/shenmo/abacus/%E9%9D%92%E8%8A%B1%E7%93%B7%E7%93%B7%E7%AE%97%E7%9B%98.jpg',
    ]
  end
end
