.class synthetic Lcom/ifengyu/im/imservice/manager/IMContactManager$7;
.super Ljava/lang/Object;
.source "IMContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMContactManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$UserInfoEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->values()[Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMContactManager$7;->$SwitchMap$com$ifengyu$im$imservice$event$UserInfoEvent:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMContactManager$7;->$SwitchMap$com$ifengyu$im$imservice$event$UserInfoEvent:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_OK:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->ordinal()I

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
