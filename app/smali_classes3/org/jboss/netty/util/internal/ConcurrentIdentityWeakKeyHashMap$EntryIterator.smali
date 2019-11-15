.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;
.source "ConcurrentIdentityWeakKeyHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap",
        "<TK;TV;>.HashIterator;",
        "Lorg/jboss/netty/util/internal/ReusableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WriteThroughEntry;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WriteThroughEntry;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
