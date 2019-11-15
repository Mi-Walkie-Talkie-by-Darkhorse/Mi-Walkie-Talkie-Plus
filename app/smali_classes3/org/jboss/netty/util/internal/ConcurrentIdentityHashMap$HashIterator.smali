.class abstract Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    return-void
.end method
