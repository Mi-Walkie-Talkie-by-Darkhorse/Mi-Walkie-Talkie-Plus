.class synthetic Lcom/ifengyu/im/imservice/services/MessageService$6;
.super Ljava/lang/Object;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->values()[Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/imservice/services/MessageService$6;->$SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService$6;->$SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService$6;->$SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
