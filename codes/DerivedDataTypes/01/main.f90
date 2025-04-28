!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Derived Data Types
!Defining a Derived data type
!To define a derived data type, the type and end type statements are used.
!The type statement defines a new data type, with more than one member for your program. 
!The format of the type statement is this −
!type type_name      
!   declarations
!end type 
!Example
!The following example demonstrates the concepts discussed above.

program deriveDataType

   !type declaration
   type Books
      character(len = 50) :: title
      character(len = 50) :: author
      character(len = 150) :: subject
      integer :: book_id
   end type Books
   
   !declaring type variables
   type(Books) :: book1 
   type(Books) :: book2 
   
   !accessing the components of the structure
   
   book1%title = "C Programming"
   book1%author = "Nuha Ali"
   book1%subject = "C Programming Tutorial"
   book1%book_id = 6495407 
   
   book2%title = "Telecom Billing"
   book2%author = "Zara Ali"
   book2%subject = "Telecom Billing Tutorial"
   book2%book_id = 6495700
  
   !display book info
   
   Print *, book1%title 
   Print *, book1%author 
   Print *, book1%subject 
   Print *, book1%book_id  
   
   Print *, book2%title 
   Print *, book2%author 
   Print *, book2%subject 
   Print *, book2%book_id  

end program deriveDataType