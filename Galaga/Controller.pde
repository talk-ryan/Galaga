class Controller
{
  private HashMap<String, GameObject> objects;
  private View view;
  private Shooter shooter;
  private int[] bounds;
  public static final int WIDTH = 0;
  public static final int HEIGHT = 1;
  public int objectCounter;

  public static final String ENEMY = "enemy";
  public static final String BULLET = "bullet";
  public static final String TARGET = "target";
  public static final String SHOOTER = "shooter";
  public static final String EXPLOSION = "explosion";

  public Controller()
  {
    objectCounter = 0;
    view = new View(this);
    objects = new HashMap<String, GameObject>();
    bounds = new int[2];

    shooter = new Shooter();
    addGameObject(SHOOTER, shooter);
    addEnemy();
    

  }

  public void addEnemy()
  {

    
  }

  public void updateView()
  {
    view.drawScene();
  }
  
  public void updateMousePos(int posX, int posY)
  {
    //shooter.updateRotationByMouse(posX, posY);
  }

  public void setBounds(int screenWidth, int screenHeight)
  {
    bounds[WIDTH] = screenWidth;
    bounds[HEIGHT] = screenHeight;
  }
// TODO: May Remove this.  Will rely on GameObjects to get to their original position after they are done moving.
// They could fly up from the top after they get to the bottom though. so these may be necessary
  public int[] getBounds()
  {
    return bounds;
  }

//TODO: Update with appropriate logic - Mainly shoots and creates bullet
  public void updateClicked(int posX, int posY)
  {
    //Target t = new Target();
    //t.setPosition(new PVector(posX, posY));

    //Bullet b = new Bullet();
    //b.setPosition(new PVector(shooter.getPosition().x, shooter.getPosition().y));
    //b.setVelocity(3);
    //b.setAngle(shooter.getAngle());

    //addBullet(b, t);
  }
  
//TODO: Update wihth appropriate logic
// Perhaps refactor to the shooter class
  public void addBullet(GameObject bullet, GameObject target)
  {
    //addGameObject(BULLET, bullet);
    //addGameObject(TARGET, target);
  }
//TODO: Update wihth appropriate logic
  public void addGameObject(String type, GameObject newObject)
  {
    //objectCounter++;
    //String id = type + "_" + objectCounter;
    //newObject.setId(id);
    //objects.put(id, newObject);
    //update();
  }
  public void update()
  {
    view.updateObjects(objects);
  }

//TODO: Update wihth appropriate logic
  public void removeObject(GameObject go)
  {
    //String object_id = go.getID();
    //String[] objName = object_id.split("_");
    //objects.remove(object_id);
    //if (objName[0].equals(BULLET))
    //{
    //  String targetName = TARGET + "_" + (Integer.parseInt(objName[1]) + 1);
    //  //println("remove : " + targetName);
    //  objects.remove(targetName);
    //} else if (objName[0].equals(ENEMY))
    //{
    //  addEnemy();
    //}


    //update();
  }

//TODO: Update wihth appropriate logic
  public void checkCollisions(ArrayList<GameObject> colliders)
  {
    //ArrayList<GameObject> toRemove = new ArrayList<GameObject>();
    //for (int i = 0; i < colliders.size() - 1; i++)
    //{
    //  Collider collider_i = colliders.get(i).getCollider();
    //  for (int j = i + 1; j < colliders.size(); j++)
    //  {
    //    Collider collider_j = colliders.get(j).getCollider();
    //    boolean collision = collider_i.checkCollision(collider_j);
    //    //println("Checking: " + i + " - " + j );
    //    if (collision)
    //    {
    //      //removeObject(colliders.get(i));
    //      //removeObject(colliders.get(j))
          
    //      toRemove.add(colliders.get(i));
    //      toRemove.add(colliders.get(j));
    //    }
    //  }
    //}
    
    //for (GameObject go : toRemove)
    //{
    //  removeObject(go);
    //}
    
  }

  public void checkBounds()
  {
    //ArrayList<GameObject> toRemove = new ArrayList<GameObject>();  
    //for (HashMap.Entry<String, GameObject> entry : objects.entrySet())
    //{
    //  GameObject go = entry.getValue();
    //  PVector globalPosition = go.getGlobalPosition();
    //  if (globalPosition.x > bounds[Controller.WIDTH] || 
    //    globalPosition.x < 0 || 
    //    globalPosition.y > bounds[Controller.HEIGHT] || 
    //    globalPosition.y < 0)
    //  {
    //    toRemove.add(go);
    //  }
    //}
    //for (GameObject go : toRemove)
    //{
    //  removeObject(go);
    //}
  }
}
