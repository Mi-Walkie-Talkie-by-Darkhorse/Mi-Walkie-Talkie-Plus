.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;
.super Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Enumeration",
        "<TV;>;",
        "Lorg/jboss/netty/util/internal/ReusableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
