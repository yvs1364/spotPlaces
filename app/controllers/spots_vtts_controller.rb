class SpotsVttsController < ApplicationController
  def index
    @spotsVtt = SpotsVtt.all
  end
end
