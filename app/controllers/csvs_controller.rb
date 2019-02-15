class CsvsController < ApplicationController
  def show
    input = 'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s'
    col_count = 8

    # @group = Csv.group_per_length(params[:input], params[:col_count])
    @group = Csv.group_per_length(input, col_count)
    true
  end

  private

  def csv_attributes
    params.permit(:input, :col_count)
  end
end