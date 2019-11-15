.class public final enum Lorg/jboss/netty/channel/socket/InternetProtocolFamily;
.super Ljava/lang/Enum;
.source "InternetProtocolFamily.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/channel/socket/InternetProtocolFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

.field public static final enum IPv4:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

.field public static final enum IPv6:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    const-string v1, "IPv4"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv4:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    new-instance v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    const-string v1, "IPv6"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv6:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    sget-object v1, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv4:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->IPv6:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->$VALUES:[Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    sget-object v0, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->$VALUES:[Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    invoke-virtual {v0}, [Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    return-object v0
.end method
