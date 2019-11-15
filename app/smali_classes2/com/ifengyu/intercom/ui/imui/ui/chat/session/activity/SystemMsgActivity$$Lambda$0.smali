.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$0;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$0;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->bridge$lambda$0$SystemMsgActivity()Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
