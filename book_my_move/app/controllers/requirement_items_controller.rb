class RequirementItemsController < ApplicationController
  before_action :set_requirement_item, only: [:show, :edit, :update, :destroy]
protect_from_forgery# unless: -> { request.format.json? }
  # GET /requirement_items
  # GET /requirement_items.json
  def index
    @requirement_items = RequirementItem.all
  end

  # GET /requirement_items/1
  # GET /requirement_items/1.json
  def show
  end

  # GET /requirement_items/new
  def new
    @requirement_item = RequirementItem.new
  end

  # GET /requirement_items/1/edit
  def edit
  end


def catchit   #with save it...


 $selGlob.each do |itemid, issel| 
  if issel=="1" and $selQty[itemid].to_i >0 then
   @requirement_item = RequirementItem.create(:requirement_id => 4, :item_id => itemid.to_i , :item_qty  => $selQty[itemid].to_i)
  #  @requirement_item.save
  end

end


end
  # POST /requirement_items
  # POST /requirement_items.json



  def create
    @requirement_item = RequirementItem.new(requirement_item_params)

    respond_to do |format|
      if @requirement_item.save
        format.html { redirect_to @requirement_item, notice: 'Requirement item was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_item }
      else
        format.html { render :new }
        format.json { render json: @requirement_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_items/1
  # PATCH/PUT /requirement_items/1.json
  def update
    respond_to do |format|
      if @requirement_item.update(requirement_item_params)
        format.html { redirect_to @requirement_item, notice: 'Requirement item was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_item }
      else
        format.html { render :edit }
        format.json { render json: @requirement_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_items/1
  # DELETE /requirement_items/1.json
  def destroy
    @requirement_item.destroy
    respond_to do |format|
      format.html { redirect_to requirement_items_url, notice: 'Requirement item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_item
      @requirement_item = RequirementItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requirement_item_params
      params.require(:requirement_item).permit(:requirement_id, :item_id, :item_qty)
    end
end
