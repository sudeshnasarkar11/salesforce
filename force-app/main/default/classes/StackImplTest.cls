@isTest
public class StackImplTest {
    
    @isTest
    static void pushPositive(){
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        System.assertEquals(30, myStack.peek());
        //
        
    }
     
    @isTest
    static void pushNegative(){
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        System.assertNotEquals(10, myStack.peek());
        
    }
    
    @isTest
    static void pushException(){
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        myStack.push(40);
        myStack.push(50);
        try{
            myStack.push(60);
        }catch(Exception e){
            System.assertEquals('No elements can be pushed: Stack is Full', e.getMessage());
        }
    }
    
    @isTest
    static void popPositive(){
        
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        System.assertEquals(30, myStack.pop());
        
    }
    
    @isTest
    static void popNegative(){
        
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        myStack.push(20);
        myStack.push(30);
        System.assertNotEquals(10, myStack.pop());
        
    }
    @isTest
    static void popException(){
        StackImpl myStack = new StackImpl(5);
        try{
            myStack.pop();
        }catch(Exception e){
            System.assertEquals('No elements to pop: Stack is Empty', e.getMessage());
        }
    }
    
    @isTest
    static void isEmptyPositive(){
        StackImpl myStack = new StackImpl(5);
        System.assert(myStack.isEmpty());
    }
    
    @isTest
    static void isEmptyNegative(){
        StackImpl myStack = new StackImpl(5);
        myStack.push(10);
        System.assert(!myStack.isEmpty());
    }
}