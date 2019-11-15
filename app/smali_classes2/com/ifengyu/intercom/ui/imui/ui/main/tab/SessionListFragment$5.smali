.class Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;
.super Ljava/lang/Object;
.source "SessionListFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/TeamMessageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getLatestMsgType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->start(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRecentContactsLoaded()V
    .locals 0

    return-void
.end method

.method public onUnreadCountChange(I)V
    .locals 0

    return-void
.end method
