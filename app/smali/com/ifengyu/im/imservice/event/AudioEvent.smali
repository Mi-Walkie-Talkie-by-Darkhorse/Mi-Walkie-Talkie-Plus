.class public final enum Lcom/ifengyu/im/imservice/event/AudioEvent;
.super Ljava/lang/Enum;
.source "AudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/AudioEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/AudioEvent;

.field public static final enum AUDIO_STOP_PLAY:Lcom/ifengyu/im/imservice/event/AudioEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/AudioEvent;

    const-string v1, "AUDIO_STOP_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/AudioEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/AudioEvent;->AUDIO_STOP_PLAY:Lcom/ifengyu/im/imservice/event/AudioEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/AudioEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/AudioEvent;->AUDIO_STOP_PLAY:Lcom/ifengyu/im/imservice/event/AudioEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/im/imservice/event/AudioEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/AudioEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/AudioEvent;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/AudioEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/AudioEvent;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/AudioEvent;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/AudioEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/AudioEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/AudioEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/AudioEvent;

    return-object v0
.end method
