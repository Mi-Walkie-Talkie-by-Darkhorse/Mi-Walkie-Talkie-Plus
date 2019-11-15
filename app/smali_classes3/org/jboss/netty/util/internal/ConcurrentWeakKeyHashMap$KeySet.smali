.class final Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeyIterator;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeyIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->size()I

    move-result v0

    return v0
.end method
