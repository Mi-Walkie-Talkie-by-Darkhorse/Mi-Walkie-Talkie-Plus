.class public Lcom/ifengyu/intercom/ui/talk/b3/k;
.super Lcom/chad/library/adapter/base/i;
.source "NewApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/talk/http/entity/SystemMsgEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private z:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/http/entity/SystemMsgEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/b3/k;->z:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const p3, 0x7f09009d

    aput p3, p1, p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->g([I)V

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/http/entity/SystemMsgEntity;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    const v1, 0x7f090271

    const v2, 0x7f0904e5

    const v3, 0x7f090269

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/talk/b3/k;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/b3/k;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 7
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v0

    const v1, 0x7f09050d

    const/4 v2, 0x2

    if-ne v0, v5, :cond_2

    const v0, 0x7f1103b6

    .line 9
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f11031f

    new-array v3, v5, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v6

    invoke-static {v6}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result v0

    const v1, 0x7f09009d

    const v3, 0x7f090372

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p1, v3, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 15
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 16
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 17
    invoke-virtual {p1, v5}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 19
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 20
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const p2, 0x7f1101eb

    .line 21
    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 23
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 24
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const p2, 0x7f1102d8

    .line 25
    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 27
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 28
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const p2, 0x7f1102d7

    .line 29
    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_7
    :goto_3
    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/k;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/http/entity/SystemMsgEntity;)V

    return-void
.end method
