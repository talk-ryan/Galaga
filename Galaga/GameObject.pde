abstract class GameObject
{
  protected PVector position;
  
  // This is the direction that the game piece will face
  protected float direction;
  
  // This is the GameObject's unique ID
  protected String id;
  
  // This is the Size of the Piece
  private float[] size;
  
  public GameObject()
  {
    position = new PVector(0,0);
  }
  
  // Constructor
  // initialPosition - where to place the object
  // sizeOfPiece - these are the dimensions that will help determine collisions
  // ID - This is the unique id of the object
  public GameObject(PVector initialPosition, float[] sizeOfPiece, String ID)
  {
    position = initialPosition;
    
    // Initialize the Size of the piece
    size = sizeOfPiece;
    
    // Face everything upwards
    direction = PI+HALF_PI;
    
    id = ID;
  }
  
  // This method should be called in order to move the GameObject
  private void updatePosition(PVector newPosition)
  {
    position = newPosition;
  }
  
  public void updateDirection(float newDirection)
  {
    direction = newDirection;
  }
  
  public String getID(){
     return id; 
  }
  
  public PVector getCurrentPosition()
  {
    return position;
  }
  
  // This will be called every iteration to display the object
  public void drawObject()
  {
    pushMatrix();
      translate(position.x, position.y);
      rotate(direction);
      buildObject();
    popMatrix();
  }
  
  // This will be called during collisions and display the Collision Animation
  public void drawCollision(){
    pushMatrix();
      translate(position.x, position.y);
      rotate(direction);
      collisionAnimation();
    popMatrix();
  }
  
  // Abstract layer to define what happens when an object collides with something
  // This method will only be called by drawCollision
  protected abstract void collisionAnimation();
  
  // This draws the object centered around 0,0
  // The draw Object function is the only function that should use this method
  protected abstract void buildObject();
  
  // This method should call updatePosition to update the position of the piece;
  // This exists as an extra layer of abstraction to define complex movement sequences
  // This is the method that will be called nearly every iteration to move the Piece
  public abstract void movePiece();
}
