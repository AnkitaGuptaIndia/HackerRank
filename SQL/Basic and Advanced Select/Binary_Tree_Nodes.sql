/*

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| N           | INTEGER      |
| P           | INTEGER      |
+-------------+--------------+

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Sample Input - 
+-------------+--------------+
| N           | P            |
+-------------+--------------+
| 1           | 2            |
| 3           | 2            |
| 6           | 8            |
| 9           | 8            |
| 2           | 5            |
| 8           | 5            |
| 5           | NULL         |
+-------------+--------------+

*/

SELECT n, 
    case 
        when p is null then 'Root'
        when n in (Select distinct p from bst) then 'Inner'
        else 'Leaf'
    end as 'Node_place'
from bst
order by n;



