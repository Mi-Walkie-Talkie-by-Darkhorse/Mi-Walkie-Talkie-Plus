.class public Lcom/ifengyu/intercom/ui/talk/b3/m;
.super Lcom/chad/library/adapter/base/i;
.source "TalkTopOnlineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/shanlitech/et/model/Member;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final z:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/b3/m;->z:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/shanlitech/et/model/Member;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/b3/m;->z:Landroidx/fragment/app/Fragment;

    const v1, 0x7f09026d

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090271

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f0904e5

    .line 3
    invoke-static {p2}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/shanlitech/et/model/Member;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/m;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/shanlitech/et/model/Member;)V

    return-void
.end method
