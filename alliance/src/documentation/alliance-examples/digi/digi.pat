--
-- Patterns for digicode
--

  in  ck    B;  
  in  jour  B;
  in  reset B; 
  in  i (3 downto 0) X;;
  out porte B;
  out alarm B;

begin


-- Pattern description :
 

--        c j r i  p  a 
--        k o e    o  l
--          u s    r  a  
--          r e    t  r
--            t    e  m

-- Reset

<   0ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?* ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press f

<+100ns>: 0 1 0 f ?0 ?0 ;
<+100ns>: 0 1 0 f ?0 ?0 ;
<+100ns>: 1 1 0 f ?* ?0 ;
<+100ns>: 1 1 0 f ?1 ?0 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?* ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 5

<+100ns>: 0 1 0 5 ?0 ?0 ;
<+100ns>: 0 1 0 5 ?0 ?0 ;
<+100ns>: 1 1 0 5 ?0 ?0 ;
<+100ns>: 1 1 0 5 ?0 ?0 ;

-- Press 3

<+100ns>: 0 1 0 3 ?0 ?0 ;
<+100ns>: 0 1 0 3 ?0 ?0 ;
<+100ns>: 1 1 0 3 ?0 ?0 ;
<+100ns>: 1 1 0 3 ?0 ?0 ;

-- Press c

<+100ns>: 0 1 0 c ?0 ?0 ;
<+100ns>: 0 1 0 c ?0 ?0 ;
<+100ns>: 1 1 0 c ?0 ?0 ;
<+100ns>: 1 1 0 c ?0 ?0 ;

-- Press 1

<+100ns>: 0 1 0 1 ?0 ?0 ;
<+100ns>: 0 1 0 1 ?0 ?0 ;
<+100ns>: 1 1 0 1 ?0 ?0 ;
<+100ns>: 1 1 0 1 ?0 ?0 ;

-- Press 7

<+100ns>: 0 1 0 7 ?0 ?0 ;
<+100ns>: 0 1 0 7 ?0 ?0 ;
<+100ns>: 1 1 0 7 ?* ?0 ;
<+100ns>: 1 1 0 7 ?1 ?0 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 2

<+100ns>: 0 1 0 2 ?0 ?0 ;
<+100ns>: 0 1 0 2 ?0 ?0 ;
<+100ns>: 1 1 0 2 ?0 ?0 ;
<+100ns>: 1 1 0 2 ?0 ?0 ;

-- Press 5

<+100ns>: 0 1 0 5 ?0 ?0 ;
<+100ns>: 0 1 0 5 ?0 ?0 ;
<+100ns>: 1 1 0 5 ?0 ?0 ;
<+100ns>: 1 1 0 5 ?0 ?0 ;

-- Press 4

<+100ns>: 0 1 0 4 ?0 ?0 ;
<+100ns>: 0 1 0 4 ?0 ?0 ;
<+100ns>: 1 1 0 4 ?0 ?0 ;
<+100ns>: 1 1 0 4 ?0 ?0 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press F

<+100ns>: 0 0 0 f ?0 ?0 ;
<+100ns>: 0 0 0 f ?0 ?0 ;
<+100ns>: 1 0 0 f ?0 ?* ;
<+100ns>: 1 0 0 f ?0 ?1 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 5

<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;

-- Press 3

<+100ns>: 0 0 0 3 ?0 ?0 ;
<+100ns>: 0 0 0 3 ?0 ?0 ;
<+100ns>: 1 0 0 3 ?0 ?0 ;
<+100ns>: 1 0 0 3 ?0 ?0 ;

-- Press C

<+100ns>: 0 0 0 c ?0 ?0 ;
<+100ns>: 0 0 0 c ?0 ?0 ;
<+100ns>: 1 0 0 c ?0 ?0 ;
<+100ns>: 1 0 0 c ?0 ?0 ;

-- Press 1

<+100ns>: 0 0 0 1 ?0 ?0 ;
<+100ns>: 0 0 0 1 ?0 ?0 ;
<+100ns>: 1 0 0 1 ?0 ?0 ;
<+100ns>: 1 0 0 1 ?0 ?0 ;

-- Press 7

<+100ns>: 0 0 0 7 ?0 ?0 ;
<+100ns>: 0 0 0 7 ?0 ?0 ;
<+100ns>: 1 0 0 7 ?* ?0 ;
<+100ns>: 1 0 0 7 ?1 ?0 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 2

<+100ns>: 0 0 0 2 ?0 ?0 ;
<+100ns>: 0 0 0 2 ?0 ?0 ;
<+100ns>: 1 0 0 2 ?0 ?* ;
<+100ns>: 1 0 0 2 ?0 ?1 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 5

<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;

-- Reset

<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 0 1 1 0 ?* ?* ;
<+100ns>: 1 1 1 0 ?0 ?0 ;
<+100ns>: 1 1 1 0 ?0 ?0 ;

-- Press 5

<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 0 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;
<+100ns>: 1 0 0 5 ?0 ?0 ;
 
end;
