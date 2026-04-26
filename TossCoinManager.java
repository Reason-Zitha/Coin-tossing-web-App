/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model.bl;

/**
 *
 * @author REASON
 */
public class TossCoinManager implements TossCoinManagerInt{

    @Override
    public String tossCoin() {

      String[] coin ={"Heads","Tails"};
      int index =(int)Math.floor(Math.random()*2);
      return coin[index];
    }

    @Override
    public String determineOutcome(String guess, String toss) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
