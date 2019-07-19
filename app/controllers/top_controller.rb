class TopController < ApplicationController
  def index
    @bl_im1 = Blog.all.order(impressions_count: :DESC).first
    @bl_im2 = Blog.all.order(impressions_count: :DESC).second
    @bl_im3 = Blog.all.order(impressions_count: :DESC).third
  end
end
