class GossipsController < ApplicationController
  
  def index
    puts "coucou #index"
    @gossip = Gossip.all
  end
  
  def new
    @gossip = Gossip.new
    puts "Hello gossip#New"
    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @gossip }
    end
  end

  def create
    puts "Coucou #Create" 
    gossip = Gossip.create(gossip_params)
    redirect_to gossip_path(gossip.id)
  end

  def gossip_params
    params.require(:gossip).permit(:anonymous_gossiper , :content)
  end

  def show
    puts "Hello #show!"
    @id = params[:id]
    @gossip = Gossip.find(params[:id])
 
    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @gossip }
    end
  end

  def edit
    puts "Hello #edit"
    @gossip = Gossip.find(params[:id])
  end

  def update
    puts "Hello #update"
    @gossip = Gossip.find(params[:id])
 
    respond_to do |format|
      if @gossip.update_attributes(gossip_params)
        format.html  { redirect_to(@gossip,
                      :notice => 'Post was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @gossip.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    puts "Hello #destroy #{params[:id]}"
    @gossip = Gossip.find(params[:id])
    
    respond_to do |format|
      if @gossip.delete
        format.html  { redirect_to(@gossip,
                      :notice => 'Post was successfully deleted.') }
        format.json  { head :no_content }
      else
        redirect_to gossips_path
      end
    
    end
  end

end
