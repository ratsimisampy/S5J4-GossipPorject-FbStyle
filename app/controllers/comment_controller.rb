class CommentController < ApplicationController

    def new
        @comment = Comment.new
        puts "Hello comment#New"
        
        
    end
    
    def create
        puts "Coucou comment#Create" 
        @gossip = Gossip.find(params[:id])
        @comment = @gossip.comments.create(comment_params)
        redirect_to gossip_path(@gossip)
    end

    def comment_params
        params.require(:comment).permit(:anonymous_commentor , :content)
    end

end
