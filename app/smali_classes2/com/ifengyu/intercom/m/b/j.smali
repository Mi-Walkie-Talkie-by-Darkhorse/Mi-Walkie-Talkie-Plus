.class public Lcom/ifengyu/intercom/m/b/j;
.super Lcom/ifengyu/intercom/m/a/a;
.source "SessionInviteDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/m/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field private u:Lcom/shanlitech/et/notice/event/GroupSessionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public E(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)Lcom/ifengyu/intercom/m/b/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/j;->u:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    return-object p0
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0076

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090269

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const p3, 0x7f090224

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/j;->u:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getInviter()Lcom/shanlitech/et/model/User;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/ifengyu/library/c/a;->e(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
