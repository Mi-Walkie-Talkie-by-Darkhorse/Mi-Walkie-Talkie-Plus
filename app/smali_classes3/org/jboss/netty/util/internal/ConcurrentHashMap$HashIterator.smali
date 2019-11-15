.class abstract Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
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

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    return-void
.end method
