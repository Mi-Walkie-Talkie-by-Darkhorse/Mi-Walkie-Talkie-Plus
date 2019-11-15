.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentIdentityWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;
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
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->isEmpty()Z

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

    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeyIterator;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeyIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->size()I

    move-result v0

    return v0
.end method
