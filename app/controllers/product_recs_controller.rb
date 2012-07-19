class ProductRecsController < ApplicationController
  before_filter :authenticate_user!
  # GET /product_recs
  # GET /product_recs.json
  def index
    @product_recs = ProductRec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_recs }
    end
  end

  # GET /product_recs/1
  # GET /product_recs/1.json
  def show
    @product_rec = ProductRec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_rec }
    end
  end

  # GET /product_recs/new
  # GET /product_recs/new.json
  def new
    @product_rec = ProductRec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_rec }
    end
  end

  # GET /product_recs/1/edit
  def edit
    @product_rec = ProductRec.find(params[:id])
  end

  # POST /product_recs
  # POST /product_recs.json
  def create
    @product_rec = ProductRec.new(params[:product_rec])

    respond_to do |format|
      if @product_rec.save
        format.html { redirect_to @product_rec, notice: 'Product rec was successfully created.' }
        format.json { render json: @product_rec, status: :created, location: @product_rec }
      else
        format.html { render action: "new" }
        format.json { render json: @product_rec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_recs/1
  # PUT /product_recs/1.json
  def update
    @product_rec = ProductRec.find(params[:id])

    respond_to do |format|
      if @product_rec.update_attributes(params[:product_rec])
        format.html { redirect_to @product_rec, notice: 'Product rec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_rec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_recs/1
  # DELETE /product_recs/1.json
  def destroy
    @product_rec = ProductRec.find(params[:id])
    @product_rec.destroy

    respond_to do |format|
      format.html { redirect_to product_recs_url }
      format.json { head :no_content }
    end
  end
end
