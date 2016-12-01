                                                                                                                                                                                                           
 # Author: Daniel Thompson                                                                                                                                                                                  
 # Course: CS 315                                                                                                                                                                                           
 # Assignment: Lab 4 Part C                                                                                                                                                                                 
                                                                                                                                                                                                            
                                                                                                                                                                                                            
all: binTree.x                                                                                                                                                                                              
                                                                                                                                                                                                            
CFLAGS= -ggdb  -std=c++11 -Wall -Wextra                                                                                                                                                                     
                                                                                                                                                                                                            
                                                                                                                                                                                                            
BinSearchTree.o: BinSearchTree.hpp BinSearchTree.cpp TreeNode.hpp                                                                                                                                           
        g++ $(CFLAGS) -c BinSearchTree.cpp -o BinSearchTree.o                                                                                                                                               
                                                                                                                                                                                                            
main.o: main.cpp BinSearchTree.hpp TreeNode.hpp                                                                                                                                                             
        g++ $(CFLAGS) -c main.cpp -o main.o                                                                                                                                                                 
                                                                                                                                                                                                            
binTree.x: BinSearchTree.o main.o TreeNode.hpp                                                                                                                                                              
        g++ $(CFLAGS) BinSearchTree.o main.o -o binTree.x                                                                                                                                                   
                                                                                                                                                                                                            
clean:                                                                                                                                                                                                      
        rm -f *.o *.x *~                                                                                                                                                                                    
                                                                                                                                                                                                            
run:                                                                                                                                                                                                        
        ./binTree.x < testValue.input                                                                                                                                                                       
                                         
