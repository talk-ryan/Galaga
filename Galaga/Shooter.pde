// This is just an example of how to use the abstract class for reference
class Shooter extends GameObject
{
  void buildObject()
  {
    ellipse(0, 0, 50, 50);
  }
  
  
  protected void collisionAnimation() {
    ellipse(0,0, 100, 100);
  }
  
  // This method should call updatePosition to update the position of the piece;
  // This exists as an extra layer of abstraction to define complex movement sequences
  // This is the method that will be called nearly every iteration to move the Piece
  public void movePiece(){
     position.y +=1;
     
     // Potentially can store an array of movement sequences or define a function of move sequences using a counter to determine where it is in the sequence
     // All sequences should eventually go downward and have a reset sequence where it goes to 
  }
}
