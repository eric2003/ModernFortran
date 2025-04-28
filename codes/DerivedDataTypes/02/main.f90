!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Derived Data Types
!Array of Structures
!You can also create arrays of a derived type −
!type(Books), dimension(2) :: list
!Individual elements of the array could be accessed as −
!list(1)%title = "C Programming"
!list(1)%author = "Nuha Ali"
!list(1)%subject = "C Programming Tutorial"
!list(1)%book_id = 6495407
!The following program illustrates the concept −

program deriveDataType

   !type declaration
   type Books
      character(len = 50) :: title
      character(len = 50) :: author
      character(len = 150) :: subject
      integer :: book_id
   end type Books
   
   !declaring array of books
   type(Books), dimension(2) :: list 
    
   !accessing the components of the structure
   
   list(1)%title = "C Programming"
   list(1)%author = "Nuha Ali"
   list(1)%subject = "C Programming Tutorial"
   list(1)%book_id = 6495407 
   
   list(2)%title = "Telecom Billing"
   list(2)%author = "Zara Ali"
   list(2)%subject = "Telecom Billing Tutorial"
   list(2)%book_id = 6495700
  
   !display book info
   
   Print *, list(1)%title 
   Print *, list(1)%author 
   Print *, list(1)%subject 
   Print *, list(1)%book_id  
   
   Print *, list(1)%title 
   Print *, list(2)%author 
   Print *, list(2)%subject 
   Print *, list(2)%book_id  

end program deriveDataType