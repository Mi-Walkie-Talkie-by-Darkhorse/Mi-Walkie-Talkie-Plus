.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;
.super Ljava/lang/Enum;
.source "SocksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocksRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

.field public static final enum AUTH:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

.field public static final enum CMD:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

.field public static final enum INIT:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->INIT:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    const-string v1, "AUTH"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    const-string v1, "CMD"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->CMD:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->INIT:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->CMD:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    return-object v0
.end method
