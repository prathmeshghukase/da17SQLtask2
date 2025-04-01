# da17SQLtask2

Foreign key

foreign key is a column or a set of columns in a table that is used to establish a link between the data in two different tables.
The foreign key in one table references the primary key in another table, creating a relationship between the two tables.
 This relationship is used to maintain referential integrity, which ensures that the data in related tables remains consistent and accurate.

Key points about foreign keys:
Relationships: A foreign key represents a relationship between two tables, where the values in the foreign key column(s) of one table correspond to the values in the primary key column(s) of another table.

Referential Integrity: The use of foreign keys helps maintain referential integrity by preventing actions that would leave the database in an inconsistent state.
 For example, you cannot delete a record from a table if it is referenced by a foreign key in another table.

Parent and Child Tables: In a relationship, the table containing the primary key is often referred to as the "parent" table,
 and the table containing the foreign key that references the primary key is referred to as the "child" table.

 CASCADE: If a referenced row is updated or deleted, the changes are propagated to the child table.
SET NULL: The foreign key values in the child table are set to NULL if the referenced row is updated or deleted.
SET DEFAULT: The foreign key values in the child table are set to their default values if the referenced row is updated or deleted.
NO ACTION or RESTRICT: Prevents the update or delete operation if it would violate referential integrity.
