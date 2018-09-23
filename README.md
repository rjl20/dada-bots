# dada-bots
A repository for some bots and other toys written using the [Dada Engine](http://dev.null.org/dadaengine/)

## Using the Dada Engine on modern systems

The official distribution of the Dada Engine compiles with warnings, but
segfaults when run on 64-bit systems. To fix it, add:

```c
#include "resolve.h"
```

to the includes section of src/pb.c.

## Contents

### Warehouse-Bot

The script which powers [@WarehouseWorker@botsin.space](https://botsin.space/@WarehouseWorker).
A collection of artifacts you might find in a secret government warehouse, inspired by
[Warehouse 23](http://basement.warehouse23.com/).
