.class Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;
.super Lcom/ifengyu/library/utils/e;
.source "TalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/TalkFragment;->M3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/library/utils/e;-><init>(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->j3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->j3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->j3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->k3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    :cond_0
    return-void
.end method

.method public g(J)V
    .locals 4

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->i3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1103d8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
