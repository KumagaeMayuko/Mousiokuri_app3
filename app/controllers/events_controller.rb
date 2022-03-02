class EventsController < ApplicationController

  def index
   @events = Event.all 
   @tabs = Tab.all
   @todays_events = Event.where("start >= ? AND start < ?", Date.current, Date.current + 1)
   #変数名は絶対に「@events」にすること！！
  end

  def new
      @event = Event.new
      render plain: render_to_string(partial: 'form_new', layout: false, locals: { event: @event })
      #views/eventsディレクトリのなかに_form_new.html.erb というファイルを作り
      #そのファイルの中のhtmlコードを文字として返してくれます。
      #これはjsの時のコーディングで紐づいてくるのでいったん先に進みます。
  end

  def create
    @event = Event.new(params_event)
    if @event.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'イベントを作成しました' } 
        format.js {render partial: "create" }
        # format.json
      end
    else
      respond_to do |format|
        # format.html { redirect_to root_path, notice: 'イベントを作成できませんでした' } 
        #登録にエラーが起きたときはerror.js.erbを実行する
        format.js {render partial: "error" }
      end
    end
  end

  def pre_destroy
    event = Event.find(params[:id])
    render plain: render_to_string(partial: 'confirm_delete', layout: false, locals: { event: event })
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      respond_to do |format|
        format.html { redirect_to root_path } 
        format.js {render partial: "success_destroy" }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path } 
        format.js {render partial: "fail_destroy" }
      end
    end

  end

  private

    def params_event
        params.require(:event).permit(:title, :start, :end)
    end

end
