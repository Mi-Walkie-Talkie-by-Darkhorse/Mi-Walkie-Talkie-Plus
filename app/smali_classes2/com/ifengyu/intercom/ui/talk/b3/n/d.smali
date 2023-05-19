.class public Lcom/ifengyu/intercom/ui/talk/b3/n/d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "CreateCodeMemberProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/b3/n/d;->d:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/d;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00d8

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->getMemberInfo()Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904e2

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090271

    const v3, 0x7f090274

    if-nez v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/b3/n/d;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {p2, v0, v3}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/b3/n/d;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_1
    return-void
.end method
