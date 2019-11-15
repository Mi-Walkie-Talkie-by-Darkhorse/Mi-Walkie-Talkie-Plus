.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/b/f;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    return-void
.end method

.method static get$Lambda(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;)Lio/reactivex/b/f;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method
