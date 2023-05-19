.class public Lcom/ifengyu/intercom/ui/talk/b3/f;
.super Lcom/chad/library/adapter/base/i;
.source "DialogTalkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;",
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
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/b3/f;->z:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/b3/f;->z:Landroidx/fragment/app/Fragment;

    const v2, 0x7f09026d

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f090271

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v1, 0x7f0904e5

    .line 4
    invoke-static {v0}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f09007a

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090272

    .line 6
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->getState()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 11
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/f;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;)V

    return-void
.end method
