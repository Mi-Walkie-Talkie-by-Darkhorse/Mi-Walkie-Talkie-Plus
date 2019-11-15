.class public interface abstract Lorg/jboss/netty/channel/FileRegion;
.super Ljava/lang/Object;
.source "FileRegion.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# virtual methods
.method public abstract getCount()J
.end method

.method public abstract getPosition()J
.end method

.method public abstract transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
