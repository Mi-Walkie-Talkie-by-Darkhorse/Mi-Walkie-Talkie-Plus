.class synthetic Lcom/ifengyu/im/imservice/services/IMSessionManager$1;
.super Ljava/lang/Object;
.source "IMSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/IMSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$SessionEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/SessionEvent;->values()[Lcom/ifengyu/im/imservice/event/SessionEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$SessionEvent:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$SessionEvent:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_SUCCESS:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
