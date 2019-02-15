class CsvsController < ApplicationController
  def index
  end

  def create
    @group = Csv.group_per_length(params[:input], params[:col_count].to_i)
  end

  private

  def csv_attributes
    params.permit(:input, :col_count)
  end
end