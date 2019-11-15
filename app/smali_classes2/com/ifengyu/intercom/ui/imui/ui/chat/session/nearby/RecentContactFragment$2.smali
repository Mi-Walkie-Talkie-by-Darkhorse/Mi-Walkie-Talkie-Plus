.class synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$2;
.super Ljava/lang/Object;
.source "RecentContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/RefreshEvent;->values()[Lcom/ifengyu/im/imservice/event/RefreshEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$2;->$SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$2;->$SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/RefreshEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$2;->$SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_RECENT_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/RefreshEvent;->ordinal()I

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
