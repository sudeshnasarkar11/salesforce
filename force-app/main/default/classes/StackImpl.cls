/*
This is the class signature
*/
public without sharing class StackImpl {
    List<Object> stack;
    Integer top;
    Integer size;
    //default 1
 

/*
This is the constructor signature
*/
    
    public StackImpl(Integer size){
        this.size = size;
        stack = new List<Object>(size);
        top = -1;
    }
    /*
      This is the class signature
     */
    
    public void push(Object element){
        if(top == size -1){
            throw new FullStackException('No elements can be pushed: Stack is Full');
        }
        
        top++;
        stack.add(top, element);
      /*  if(true){

            if(true){
                if(true){
                    if(true){

                    }
                }
            }
        }  */
    }
     /*
      This is the method signature
     */
    
    public Object pop(){
        
        if(isEmpty()){
            throw new EmptyStackException('No elements to pop: Stack is Empty');
        }
        Object result = stack.get(top);
        top--;
        return result;  
    }
    /*
      This is the method signature
     */
    
    public Object peek(){
        if(isEmpty()){
            throw new EmptyStackException('No elements to pop: Stack is Empty');
        }
        return stack.get(top);
    }
    /*
      This is the method signature
     */
    
    public boolean isEmpty(){
        return top == -1;
    }   
    /*
    This is the class signature
    */ 
    
    public class EmptyStackException extends Exception {
    }
    /*
    This is the class signature
    */
    
    public class FullStackException extends Exception {
    }
    
}
