.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/b/g;


# static fields
.field static final $instance:Lio/reactivex/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$1;->$instance:Lio/reactivex/b/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    return-object v0
.end method
