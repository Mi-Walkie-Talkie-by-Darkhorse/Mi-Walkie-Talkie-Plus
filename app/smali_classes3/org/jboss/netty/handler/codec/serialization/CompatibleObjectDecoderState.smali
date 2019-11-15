.class final enum Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;
.super Ljava/lang/Enum;
.source "CompatibleObjectDecoderState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

.field public static final enum READ_HEADER:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

.field public static final enum READ_OBJECT:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_HEADER:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    const-string v1, "READ_OBJECT"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_OBJECT:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_HEADER:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_OBJECT:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->$VALUES:[Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->$VALUES:[Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    return-object v0
.end method
