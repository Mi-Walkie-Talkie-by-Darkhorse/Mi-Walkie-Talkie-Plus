.class Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;
.super Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.source "DefaultHttpChunkTrailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;->this$0:Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;-><init>()V

    return-void
.end method


# virtual methods
.method validateHeaderName(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prohibited trailing header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
