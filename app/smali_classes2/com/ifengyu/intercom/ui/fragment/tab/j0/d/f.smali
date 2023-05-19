.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "RecentCurrentTalkProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/talk/models/RecentTalkModel;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/ifengyu/library/widget/groupAdatar/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/groupAdatar/a<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    new-instance v0, Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-direct {v0, p1}, Lcom/ifengyu/library/widget/groupAdatar/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;->d:Lcom/ifengyu/library/widget/groupAdatar/a;

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
    check-cast p2, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/models/RecentTalkModel;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00f2

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const v3, 0x7f090088

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f0904e5

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgModel()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    const v3, 0x7f0904de

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgModel()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getToWord()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f11028d

    .line 5
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f060038

    .line 6
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    :cond_2
    const v4, 0x7f0600bf

    .line 7
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    :goto_2
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_3
    const v0, 0x7f0904df

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Lcom/ifengyu/intercom/p/i0;->f(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090333

    .line 11
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;->d:Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5206\u9694"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-array p2, v2, [Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/ifengyu/library/c/a;->c:Ljava/lang/String;

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    :goto_4
    return-void
.end method
