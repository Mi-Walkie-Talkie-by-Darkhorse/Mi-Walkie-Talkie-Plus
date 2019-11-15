.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1bc7a7ae5c5faaabL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field modCount:I

.field volatile transient table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->setTable([Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)V

    return-void
.end method

.method private static keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    iget-object v0, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->rehash()I

    move-result v1

    if-lez v1, :cond_0

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    :cond_0
    move v3, v0

    iget-object v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    aget-object v2, v4, v5

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_3

    invoke-virtual {v1, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    invoke-virtual {p0, p1, p2, v2, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v1

    aput-object v1, v4, v5

    iput v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()I
    .locals 13

    const/4 v4, 0x0

    iget-object v7, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v8

    array-length v0, v8

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    array-length v0, v8

    add-int/lit8 v9, v0, -0x1

    array-length v10, v7

    move v6, v4

    :goto_1
    if-ge v6, v10, :cond_5

    aget-object v5, v7, v6

    if-eqz v5, :cond_7

    iget-object v2, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget v0, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    and-int v1, v0, v9

    if-nez v2, :cond_2

    aput-object v5, v8, v1

    move v0, v4

    :cond_1
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v0

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_3
    if-eqz v2, :cond_3

    iget v0, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    and-int/2addr v0, v9

    if-eq v0, v1, :cond_6

    move-object v1, v2

    :goto_4
    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v3, v1

    move v1, v0

    goto :goto_3

    :cond_3
    aput-object v3, v8, v1

    move-object v1, v5

    move v0, v4

    :goto_5
    if-eq v1, v3, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_6
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_5

    :cond_4
    iget v4, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    and-int/2addr v4, v9

    aget-object v5, v8, v4

    iget v11, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v2, v11, v5, v12}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v2

    aput-object v2, v8, v4

    goto :goto_6

    :cond_5
    iput-object v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_4

    :cond_7
    move v0, v4

    goto :goto_2
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v3, v0, -0x1

    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    aget-object v2, v5, v6

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    iget-object v0, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    if-nez p4, :cond_0

    iget v0, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne p2, v0, :cond_0

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v4, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    iget-object v0, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v10, v2

    move v2, v3

    move-object v3, v10

    :goto_1
    if-eq v3, v4, :cond_4

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    add-int/lit8 v2, v2, -0x1

    :goto_2
    iget-object v3, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_1

    :cond_3
    iget v8, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v0, v9}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    goto :goto_2

    :cond_4
    aput-object v0, v5, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v0, p2, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method setTable([Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-void
.end method
