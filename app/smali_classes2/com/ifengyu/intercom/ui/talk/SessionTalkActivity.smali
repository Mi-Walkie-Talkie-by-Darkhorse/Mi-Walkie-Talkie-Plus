.class public Lcom/ifengyu/intercom/ui/talk/SessionTalkActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "SessionTalkActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static N(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_session_event"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    const-class p1, Lcom/ifengyu/intercom/ui/talk/SessionTalkActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;

    invoke-static {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->u(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
