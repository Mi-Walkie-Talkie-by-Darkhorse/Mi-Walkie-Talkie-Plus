.class public Lcom/ifengyu/intercom/ui/talk/b3/n/j;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "TalkMessageEventProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

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
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/j;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00e6

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x7f0904e3

    .line 3
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->c()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/p/i0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/p/i0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getToWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0904d3

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getToWord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_3
    return-void
.end method
