.class public final enum Lorg/jboss/netty/handler/timeout/IdleState;
.super Ljava/lang/Enum;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/timeout/IdleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/timeout/IdleState;

.field public static final enum ALL_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

.field public static final enum READER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

.field public static final enum WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/timeout/IdleState;

    const-string v1, "READER_IDLE"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/timeout/IdleState;->READER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    new-instance v0, Lorg/jboss/netty/handler/timeout/IdleState;

    const-string v1, "WRITER_IDLE"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/timeout/IdleState;->WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    new-instance v0, Lorg/jboss/netty/handler/timeout/IdleState;

    const-string v1, "ALL_IDLE"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/timeout/IdleState;->ALL_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jboss/netty/handler/timeout/IdleState;

    sget-object v1, Lorg/jboss/netty/handler/timeout/IdleState;->READER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/timeout/IdleState;->WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/timeout/IdleState;->ALL_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jboss/netty/handler/timeout/IdleState;->$VALUES:[Lorg/jboss/netty/handler/timeout/IdleState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/timeout/IdleState;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleState;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/timeout/IdleState;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/timeout/IdleState;->$VALUES:[Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/timeout/IdleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/timeout/IdleState;

    return-object v0
.end method
