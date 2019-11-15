.class public final Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;
.super Ljava/lang/Object;
.source "RtspVersions.java"


# static fields
.field public static final RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpVersion;

    const-string v1, "RTSP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v0, "RTSP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method
