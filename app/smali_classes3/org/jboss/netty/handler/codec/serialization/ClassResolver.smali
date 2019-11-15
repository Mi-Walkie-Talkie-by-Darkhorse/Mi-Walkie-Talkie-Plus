.class public interface abstract Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
.super Ljava/lang/Object;
.source "ClassResolver.java"


# virtual methods
.method public abstract resolve(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
