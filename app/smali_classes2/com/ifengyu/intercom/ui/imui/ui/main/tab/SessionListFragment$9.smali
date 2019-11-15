.class synthetic Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;
.super Ljava/lang/Object;
.source "SessionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I

.field static final synthetic g:[I

.field static final synthetic h:[I

.field static final synthetic i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->i:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->i:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->START_CHAT:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_22

    :goto_0
    invoke-static {}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->values()[Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->h:[I

    :try_start_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->h:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_OK:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_21

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->h:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_UPDATE:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_20

    :goto_2
    invoke-static {}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->g:[I

    :try_start_3
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->g:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->UNREAD_MSG_RECEIVED:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->g:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->UNREAD_MSG_LIST_OK:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->g:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->SESSION_READED_UNREAD_MSG:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1d

    :goto_5
    invoke-static {}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    :try_start_6
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_19

    :goto_9
    :try_start_a
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_18

    :goto_a
    :try_start_b
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_17

    :goto_b
    :try_start_c
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_16

    :goto_c
    :try_start_d
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_15

    :goto_d
    invoke-static {}, Lcom/ifengyu/im/imservice/event/SessionEvent;->values()[Lcom/ifengyu/im/imservice/event/SessionEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    :try_start_e
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_UPDATE:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_14

    :goto_e
    :try_start_f
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_SUCCESS:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_13

    :goto_f
    :try_start_10
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->SET_SESSION_TOP:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_12

    :goto_10
    :try_start_11
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SessionEvent;->SET_SESSION_TALK:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    invoke-static {}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->values()[Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    :try_start_12
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->INVITED_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_10

    :goto_12
    :try_start_13
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->APPLY_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_f

    :goto_13
    :try_start_14
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_e

    :goto_14
    :try_start_15
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_d

    :goto_15
    :try_start_16
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_c

    :goto_16
    :try_start_17
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_b

    :goto_17
    invoke-static {}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->values()[Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->c:[I

    :try_start_18
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->c:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_a

    :goto_18
    invoke-static {}, Lcom/ifengyu/im/imservice/event/SocketEvent;->values()[Lcom/ifengyu/im/imservice/event/SocketEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->b:[I

    :try_start_19
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->b:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->MSG_SERVER_DISCONNECTED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_9

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->b:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->b:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_1b
    invoke-static {}, Lcom/ifengyu/im/imservice/event/LoginEvent;->values()[Lcom/ifengyu/im/imservice/event/LoginEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    :try_start_1c
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_6

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_5

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_MSG_SERVICE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_4

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OK:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_2

    :goto_20
    :try_start_21
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1

    :goto_21
    :try_start_22
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_0

    :goto_22
    return-void

    :catch_0
    move-exception v0

    goto :goto_22

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    goto :goto_20

    :catch_3
    move-exception v0

    goto :goto_1f

    :catch_4
    move-exception v0

    goto :goto_1e

    :catch_5
    move-exception v0

    goto :goto_1d

    :catch_6
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1b

    :catch_8
    move-exception v0

    goto :goto_1a

    :catch_9
    move-exception v0

    goto :goto_19

    :catch_a
    move-exception v0

    goto/16 :goto_18

    :catch_b
    move-exception v0

    goto/16 :goto_17

    :catch_c
    move-exception v0

    goto/16 :goto_16

    :catch_d
    move-exception v0

    goto/16 :goto_15

    :catch_e
    move-exception v0

    goto/16 :goto_14

    :catch_f
    move-exception v0

    goto/16 :goto_13

    :catch_10
    move-exception v0

    goto/16 :goto_12

    :catch_11
    move-exception v0

    goto/16 :goto_11

    :catch_12
    move-exception v0

    goto/16 :goto_10

    :catch_13
    move-exception v0

    goto/16 :goto_f

    :catch_14
    move-exception v0

    goto/16 :goto_e

    :catch_15
    move-exception v0

    goto/16 :goto_d

    :catch_16
    move-exception v0

    goto/16 :goto_c

    :catch_17
    move-exception v0

    goto/16 :goto_b

    :catch_18
    move-exception v0

    goto/16 :goto_a

    :catch_19
    move-exception v0

    goto/16 :goto_9

    :catch_1a
    move-exception v0

    goto/16 :goto_8

    :catch_1b
    move-exception v0

    goto/16 :goto_7

    :catch_1c
    move-exception v0

    goto/16 :goto_6

    :catch_1d
    move-exception v0

    goto/16 :goto_5

    :catch_1e
    move-exception v0

    goto/16 :goto_4

    :catch_1f
    move-exception v0

    goto/16 :goto_3

    :catch_20
    move-exception v0

    goto/16 :goto_2

    :catch_21
    move-exception v0

    goto/16 :goto_1

    :catch_22
    move-exception v0

    goto/16 :goto_0
.end method
