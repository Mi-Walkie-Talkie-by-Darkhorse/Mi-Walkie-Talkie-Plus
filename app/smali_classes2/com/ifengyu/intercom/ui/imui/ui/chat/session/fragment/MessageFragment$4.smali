.class synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$4;
.super Ljava/lang/Object;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$PriorityEvent$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$4;->$SwitchMap$com$ifengyu$im$imservice$event$PriorityEvent$Event:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$4;->$SwitchMap$com$ifengyu$im$imservice$event$PriorityEvent$Event:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->MSG_RECEIVED_MESSAGE:Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->ordinal()I

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
