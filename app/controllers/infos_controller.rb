class InfosController < ApplicationController
  def index
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(params_info)
    respond_to do |format|
      if @info.save
        format.html { redirect_to '/note', notice: "投稿が完了しました" }
        format.json { render :index, status: :created, location: @info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info = Info.find(params[:id])
    if @info.destroy
      respond_to do |format|
        format.html { redirect_to '/note', notice: '削除が完了しました'} 
      end
    else
      respond_to do |format|
        format.html { redirect_to '/note', notice: '削除ができませんでした'} 
      end 
    end
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])  
    respond_to do |format|
    if @info.update(params_info)
      format.html { redirect_to '/note', notice: '編集が完了しました'}  
      format.json { render :index, status: :created, location: @info }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @info.errors, status: :unprocessable_entity } 
      end
    end
  end

  private

    def params_info
        params.require(:info).permit(:category_id, :title, :content)
    end
end
