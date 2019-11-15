.class public interface abstract Lorg/jboss/netty/handler/codec/embedder/CodecEmbedder;
.super Ljava/lang/Object;
.source "CodecEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract finish()Z
.end method

.method public abstract getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
.end method

.method public abstract offer(Ljava/lang/Object;)Z
.end method

.method public abstract peek()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract poll()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract pollAll()[Ljava/lang/Object;
.end method

.method public abstract pollAll([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method
