# 8.5 More Schemas

## Release 2: one-to-one schema

A book is published by one publishing house. Details about the book and the publisher are not repeated in either table.

![one-to-one schema](../imgs/one-to-one-schema.png "Book and Publisher - One to One relationship")


## Release 4: many-to-many schema

![many-to-many schema](../imgs/many-to-many-schema.png "Grocery List and Items - Many to Many relationship")

## Release 6: Reflect

### What is a one-to-one database?

A one to one database is used to model relationships where you have very little (like one field) data to repeat but want to indicate a relationship. It's also not used to model a parent-child relationship where there are many instances of one (that's one to many).

### When would you use a one-to-one database? (Think generally, not in terms of the example you created).

When you want to model something simple! So far I've seen examples of one-to-one relationships that are so simple you don't really need to model them. An example is a bee lives in a beehive. One table would be for details on bees and the other for data on hives.

### What is a many-to-many database?

A many-to-many database is used to model relationships that are separate on their own and maybe don't have a single field or piece of data that would appear in both tables, however, their relationship is easily understood when adding a third table to connect the two and model instances of the overlap.

### When would you use a many-to-many database? (Think generally, not in terms of the example you created).

These seem much more useful. We need these whenever we want to extrapolate details or analysis based on the instances of the overlaps themselves.

### What is confusing about database schemas? What makes sense?

I kind of love database schemas. They make intuitive sense to me and I am not confused so far. I'm sure there might be some bumps down the road! I enjoy the visual aspect of it as it helps me break down relationships and problems into small steps. Loving it.