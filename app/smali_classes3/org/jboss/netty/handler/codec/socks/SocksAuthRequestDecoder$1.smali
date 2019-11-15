.class synthetic Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;
.super Ljava/lang/Object;
.source "SocksAuthRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->values()[Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_USERNAME:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_PASSWORD:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
