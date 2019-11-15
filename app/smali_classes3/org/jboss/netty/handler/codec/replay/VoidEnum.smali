.class public final enum Lorg/jboss/netty/handler/codec/replay/VoidEnum;
.super Ljava/lang/Enum;
.source "VoidEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/replay/VoidEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    sput-object v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;->$VALUES:[Lorg/jboss/netty/handler/codec/replay/VoidEnum;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;->$VALUES:[Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/replay/VoidEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    return-object v0
.end method
