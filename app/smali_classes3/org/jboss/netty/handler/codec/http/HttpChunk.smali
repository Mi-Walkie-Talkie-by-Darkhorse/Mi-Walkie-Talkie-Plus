.class public interface abstract Lorg/jboss/netty/handler/codec/http/HttpChunk;
.super Ljava/lang/Object;
.source "HttpChunk.java"


# static fields
.field public static final LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpChunk$1;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    return-void
.end method


# virtual methods
.method public abstract getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract isLast()Z
.end method

.method public abstract setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method
