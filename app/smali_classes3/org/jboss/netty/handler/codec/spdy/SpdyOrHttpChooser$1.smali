.class synthetic Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;
.super Ljava/lang/Object;
.source "SpdyOrHttpChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->values()[Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->None:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion2:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion3:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_0:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_1:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
