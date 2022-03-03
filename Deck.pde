public class Deck {
  public PVector pos;
  public Card[] cards = new Card[40];
  
  public Deck() {
    float x = 21;
    float y = 100;
    pos = new PVector(x,y);
    spawnCards();
  }
  
  public void show() {
    for(int i = 0; i < cards.length; i++){
      for(int n = 0; n < 10; n++){
    rect(pos.x,pos.y,200,300);
      }
    }
  }
  
  public void deal(Hand hand) {
    
  }
  
  private int biggestAttack() {
    
    return cards[0].attack; 
  }
  
  private void spawnCards() {
    color[] colors = {
      #FF0000,
      #00FF00,
      #0000FF,
      #FFFF00
    };
    int cardInd = 0;
    for (int i = 0; i < colors.length; i++) {
      for (int n = 0; n < 10; n++) {
        cards[cardInd] = new Card(colors[i],n);
        cardInd++;
      }
    }
  }
}
