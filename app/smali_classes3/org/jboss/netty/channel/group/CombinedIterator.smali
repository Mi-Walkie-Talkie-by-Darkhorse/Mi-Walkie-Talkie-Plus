.class final Lorg/jboss/netty/channel/group/CombinedIterator;
.super Ljava/lang/Object;
.source "CombinedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final i1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final i2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    throw v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
