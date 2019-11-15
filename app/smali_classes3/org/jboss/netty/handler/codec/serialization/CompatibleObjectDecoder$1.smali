.class synthetic Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;
.super Ljava/lang/Object;
.source "CompatibleObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->values()[Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState:[I

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_HEADER:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState:[I

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_OBJECT:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
