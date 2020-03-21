// This program is copyright VUW.
// You are granted permission to use it to construct your answer to a COMP102 assignment.
// You may not distribute it in any other way without permission.

/* Code for COMP102 - 2019T1, Assignment 9
 * Name:
 * Username:
 * ID:
 */

import ecs100.*;
import java.util.*;
import java.awt.Color;


/**
 *  Lets a player play a simple Solitaire dominoes game.
 *  Dominoes are rectangular tiles with two numbers from 0 to 6 on
 *  them (shown with dots).
 *  The player has a "hand" which can contain up to six dominoes.
 *  They can reorder the dominoes in their hand, they can place dominoes
 *  from their hand onto the table, and they can pick up more dominoes from
 *  a bag to fill the gaps in their "hand".
 *  The core and completion do not involve any of the matching and scoring
 *  of real dominoes games. 
 *
 *  PROGRAM DESIGN
 *  The dominoes are represented by objects of the Domino class.
 *  The Domino constructor will construct a new, random domino.
 *  Dominos have a draw(double x, double y) method that will draw the
 *  Domino on the graphics pane at the specified position.
 *  
 *  The program has two key fields:
 *    hand:  an array that can hold 6 Dominos. 
 *    table: an ArrayList of the Dominos that have been placed on the table.
 *    
 *  The hand should be displayed near the top of the Graphics pane with a
 *   rectangular border and each domino drawn at its place in the hand.
 *  Empty spaces in the hand should be represented by nulls and displayed as empty.
 *
 *  The user can select a position on the hand using the mouse.
 *  The selected domino (or empty space) should be highlighted with
 *  a border around it.
 *  
 *  The user can use the "Left" or "Right" button to move the selected domino
 *  (or the space) to the left or the right, in which case the domino is
 *  swapped with the contents of the adjacent position in the hand.
 *  If the selected position contains a domino, the user
 *  can use the "Place" button to move the selected domino to the table.
 *  
 *  If there are any empty positions on the hand, the user can use the
 *  "Pickup" button to get a new (random) domino which will be added to
 *  the hand at the leftmost empty position.
 *
 *  The table is represented by an ArrayList of dominos.
 *  At the beginning of the game the table should be empty.
 *  Dominos should be added to the end of the table.
 *  The table should be displayed in rows at the top of the graphics pane.
 */

public class DominoGame{
    public static final int NUM_HAND = 6;    // Number of dominos in hand
    
    private ArrayList<Domino> table;
    private Domino[] hand = new Domino[NUM_HAND];
        
    private int selectedPos = 0;      //  selected position in the hand.
    private boolean dragDomino = false;
    private int dragPos;

    // (You shouldn't add any more fields for core or completion)

    // constants for the layout
    public static final int HAND_LEFT = 60; // x-position of the leftmost Domino in the hand
    public static final int HAND_TOP = 5;   // y-Position of all the Dominos in the hand 
    public static final int DOMINO_SPACING = 104; 
    //spacing is the distance from left side of Domino to left side of next domino
    public static final int DOMINO_HEIGHT = 50; 

    public static final int TABLE_LEFT = 10;                
    public static final int TABLE_TOP = 120;   

    /**
     * Restart the game:
     *  set the table to be empty,
     *  set the hand to have no dominos
     */
    public void restart(){
        table = new ArrayList<Domino>();
        hand = new Domino[NUM_HAND];
        UI.clearText();
        redraw();
    }

    /**
     * If there is at least one empty position on the hand, then
     * create a new random domino and put it into the first empty
     * position on the hand.
     * (needs to search along the array for an empty position.)
     */
    public void pickup(){
        for(int i = 0; i<NUM_HAND; i++) {
        	try{
        		Domino d = hand[i];
        		if (d==null) {
            		hand[i] = new Domino();
            		break;
            	}
        	}catch(IndexOutOfBoundsException e) {
        		break;
        	}
        }
        this.drawHand();
        
    }

    /**
     * Draws the outline of the hand,
     * draws all the Dominos in the hand,
     * highlights the selected position in some way
     * This needs to use the constants:
     *   DOMINO_SPACING, DOMINO_HEIGHT, HAND_LEFT, HAND_TOP
     */
    public void drawHand(){
    	for(int i = 0; i<NUM_HAND; i++) {
        	Domino d = hand[i];
        	if (d!=null) {
        		double left = 2+HAND_LEFT+i*DOMINO_SPACING;
        		double top = HAND_TOP+3;
        		d.draw(left, top);
        		if (i==selectedPos) {
        			UI.setColor(Color.GREEN);
        			UI.setLineWidth(4);
        			UI.drawRect(left, top, DOMINO_SPACING-4, DOMINO_HEIGHT);
        			UI.setLineWidth(1);
        		}
        	}
        }
    	UI.setColor(Color.BLACK);
    	UI.drawRect(HAND_LEFT, HAND_TOP, NUM_HAND*(DOMINO_SPACING), DOMINO_HEIGHT+6);
    }

    /**
     * Move domino from selected position on hand (if there is domino there) to the table
     * The selectedPos field contains the index of the selected domino.
     */
    public void placeDomino(){
        Domino selected = hand[selectedPos];
        if (selected!=null) {
        	if (table.size()==0) {
        		if (selected.getLeftNum()==selected.getRightNum()) {
        			table.add(selected);
        			hand[selectedPos]=null;
        		}else {
        			UI.println("Can't place that domino here, must start with a double");
        		}
        	}else if (table.get(table.size()-1).getRightNum()==selected.getLeftNum()) {
        		table.add(selected);
        		hand[selectedPos]=null;
        	}else {
        		UI.println("Can't place that domino here");
        	}
        }else {
        	return;
        }
        this.redraw();
    }

    /**
     * Draws the list of Dominos on the table, 7 to a row
     * Note, has to wrap around to a new row when it gets to the
     * edge of the table
     * This needs to use the constants:
     *   DOMINO_SPACING, DOMINO_HEIGHT, TABLE_LEFT, TABLE_TOP
     */
    public void drawTable(){
        for (int i = 0; i<table.size(); i++) {
        	Domino d = table.get(i);
        	double left = TABLE_LEFT+(i%7*DOMINO_SPACING);
    		double top = TABLE_TOP+((int)i/7*(DOMINO_HEIGHT+5));
    		d.draw(left, top);
        }
    }

    /**
     * If there is a domino at the selected position in the hand, 
     * flip it over.
     */
    public void flipDomino(){
    	Domino flip = hand[selectedPos];
    	if (flip!=null) {
    		flip.flipNums();
    	}

        this.redraw();
    }

    /**
     * Swap the contents of the selected position on hand with the
     * position on its left (if there is such a position)
     * and also decrement the selected position to follow the domino 
     */
    public void moveLeft(){
        if(selectedPos>0) {
        	Domino swap = hand[selectedPos];
        	hand[selectedPos] = hand[selectedPos-1];
        	hand[selectedPos-1] = swap;
        	selectedPos--;
        }

        this.redraw();
    }

    /**
     * Swap the contents of the selected position on hand with the
     *  position on its right (if there is such a position)
     *  and also increment the selected position to follow the domino 
     */
    public void moveRight(){
    	if(selectedPos<NUM_HAND-1) {
        	Domino swap = hand[selectedPos];
        	hand[selectedPos] = hand[selectedPos+1];
        	hand[selectedPos+1] = swap;
        	selectedPos++;
        }

        this.redraw();
    }

    /**
     * If the table is empty, only a double (left and right the same) can be suggested.
     * If the table is not empty, see if one domino has a number that matches the right 
     *    number of the last domino on the table.
     */
    public void suggestDomino(){
    	String suggest = "Can't suggest any domino";
    	if (table.size()==0) {
    		for (int i=0;i<NUM_HAND; i++) {
    			Domino d = hand[i];
    			if (d!=null&&d.getLeftNum()==d.getRightNum()) {
    				suggest = String.format("Suggestion: Domino %s - [%s|%s]", i+1, 
    						d.getLeftNum(),d.getRightNum());
    			}
    		}
    	}else {
    		int last = table.get(table.size()-1).getRightNum();
    		for (int i=0;i<NUM_HAND; i++) {
    			Domino d = hand[i];
    			if (d!=null) {
	    			if (d.getLeftNum()==last) {
	    				suggest = String.format("Suggestion: Domino %s - [%s|%s]", i+1, 
	    						d.getLeftNum(),d.getRightNum());
	    			}else if (d.getRightNum()==last) {
	    				suggest = String.format("Suggestion: FLIP Domino %s - [%s|%s]", i+1, 
	    						d.getLeftNum(),d.getRightNum());
	    				
	    			}
    			}
    		}
    	}
    	UI.println(suggest);
    }

    /** Allows the user to select a position in the hand using the mouse.
     * If the mouse is released over the hand, then sets  selectedPos
     * to be the index into the hand array.
     * Redraws the hand and table */
    public void doMouse(String action, double x, double y){
    	if (y >= HAND_TOP && y <= HAND_TOP+DOMINO_HEIGHT && 
                x >= HAND_LEFT && x <= HAND_LEFT + NUM_HAND*DOMINO_SPACING) {
    		this.selectedPos = (int) ((x-HAND_LEFT)/DOMINO_SPACING);
    		if (action.equals("pressed")) {
    			this.dragPos = selectedPos;
    			if (hand[dragPos]!=null) {
    				this.dragDomino = true;
    				//UI.println("DRAGGING DOMINO "+dragPos);
    			}
    		}else if (action.equals("released")){
    			Domino sel = hand[selectedPos];
    			//UI.println(dragDomino);
                if (dragDomino && dragPos!=selectedPos) {
                	//UI.println("DRAGGED "+dragPos+" to "+selectedPos);
                	if (sel==null) { // dragged to empty spot
                		
                		hand[selectedPos] = hand[dragPos];
                		hand[dragPos] = null;
                		sel = hand[selectedPos];
                	}else {
                		if (dragPos<selectedPos) { // moved to ->
                			Domino drag = hand[dragPos];
                			for (int i = dragPos+1; i<=selectedPos; i++) {
                				//UI.println("moving "+i+" to "+(i-1));
                				hand[i-1] = hand[i]; // move backwards
                			}
                			hand[selectedPos]=drag;
                		}else { // moved to <-
                			Domino drag = hand[dragPos];
                			for (int i = dragPos-1; i>=selectedPos; i--) {
                				//UI.println("moving "+i+" to "+(i+1));
                				hand[i+1] = hand[i]; // move forwards
                			}
                			hand[selectedPos]=drag;
                		}
                	}
                }
                if (sel!=null) {
	                //UI.clearText();
	                UI.printf("Selected: Domino %s - [%s|%s]\n",this.selectedPos+1,
	                		sel.getLeftNum(), sel.getRightNum());
	                this.redraw();
    			}
            }
        }
    }

    /**
     *  Redraw the table and the hand.
     */
    public void redraw(){
        UI.clearGraphics();
        this.drawHand();
        this.drawTable();
    }

    public static void main(String[] args){
        DominoGame obj = new DominoGame();
        /*# YOUR CODE HERE */
        UI.addButton("Pickup", obj::pickup);
        UI.addButton("Place", obj::placeDomino);
        UI.addButton("Flip", obj::flipDomino);
        UI.addButton("Left", obj::moveLeft);
        UI.addButton("Right", obj::moveRight);
        UI.addButton("Suggest", obj::suggestDomino);
        UI.addButton("Restart", obj::restart);
        UI.addButton("Quit", UI::quit);
        UI.setMouseListener(obj::doMouse);
        UI.setDivider(0.3);
        obj.restart();
        obj.redraw();
    }   
    
}
