.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;
.super Ljava/lang/Enum;
.source "SocksResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocksResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

.field public static final enum AUTH:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

.field public static final enum CMD:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

.field public static final enum INIT:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->INIT:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    const-string v1, "AUTH"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    const-string v1, "CMD"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->CMD:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->INIT:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->CMD:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    return-object v0
.end method
