.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "RecentNormalTalkProvider.java"


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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;->d:Lcom/ifengyu/library/widget/groupAdatar/a;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/models/RecentTalkModel;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00f3

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904e5

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgModel()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    const v1, 0x7f0904de

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgModel()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getToWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_0
    const v0, 0x7f0904df

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ifengyu/intercom/p/i0;->f(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090333

    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;->d:Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5206\u9694"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/ifengyu/library/c/a;->a:Ljava/lang/String;

    aput-object v0, p2, v3

    invoke-virtual {p1, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    :goto_1
    return-void
.end method
