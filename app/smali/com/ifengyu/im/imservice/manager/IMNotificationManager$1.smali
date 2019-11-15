.class synthetic Lcom/ifengyu/im/imservice/manager/IMNotificationManager$1;
.super Ljava/lang/Object;
.source "IMNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$UnreadEvent$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$UnreadEvent$Event:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$UnreadEvent$Event:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->UNREAD_MSG_RECEIVED:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

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
