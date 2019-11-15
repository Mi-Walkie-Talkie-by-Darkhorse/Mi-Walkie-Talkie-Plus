.class public final enum Lorg/jboss/netty/logging/InternalLogLevel;
.super Ljava/lang/Enum;
.source "InternalLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/logging/InternalLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/logging/InternalLogLevel;

.field public static final enum DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

.field public static final enum ERROR:Lorg/jboss/netty/logging/InternalLogLevel;

.field public static final enum INFO:Lorg/jboss/netty/logging/InternalLogLevel;

.field public static final enum WARN:Lorg/jboss/netty/logging/InternalLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/logging/InternalLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

    new-instance v0, Lorg/jboss/netty/logging/InternalLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->INFO:Lorg/jboss/netty/logging/InternalLogLevel;

    new-instance v0, Lorg/jboss/netty/logging/InternalLogLevel;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->WARN:Lorg/jboss/netty/logging/InternalLogLevel;

    new-instance v0, Lorg/jboss/netty/logging/InternalLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->ERROR:Lorg/jboss/netty/logging/InternalLogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/logging/InternalLogLevel;

    sget-object v1, Lorg/jboss/netty/logging/InternalLogLevel;->DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/logging/InternalLogLevel;->INFO:Lorg/jboss/netty/logging/InternalLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/logging/InternalLogLevel;->WARN:Lorg/jboss/netty/logging/InternalLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/logging/InternalLogLevel;->ERROR:Lorg/jboss/netty/logging/InternalLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->$VALUES:[Lorg/jboss/netty/logging/InternalLogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogLevel;
    .locals 1

    const-class v0, Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/logging/InternalLogLevel;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/logging/InternalLogLevel;
    .locals 1

    sget-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->$VALUES:[Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-virtual {v0}, [Lorg/jboss/netty/logging/InternalLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/logging/InternalLogLevel;

    return-object v0
.end method
