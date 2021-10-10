class Wall extends PVector{
 public final static int MAXWIDTH =30;
 public final static int MAXHEIGHT =100; 
 public int width;
 public int height;
 
 public Wall(int x ,int y,int width, int height) {
    super(x,y);
    
   if(width<=MAXWIDTH && height<=MAXHEIGHT){
     
        int rotateChance =(int)random(1,10) ;
        if(rotateChance<5){
          this.width =width;
          this.height=height;
        }else{
          this.height =width;
          this.width=height;
        }
    }else{
       
           this.height =MAXHEIGHT;
           this.width=MAXWIDTH;
    }
 }
}
