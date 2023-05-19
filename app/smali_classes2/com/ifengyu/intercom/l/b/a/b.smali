.class public Lcom/ifengyu/intercom/l/b/a/b;
.super Lcom/chad/library/adapter/base/i;
.source "Mi3RemoteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final z:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/l/b/a/b;->z:I

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V
    .locals 6
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNamePrefix()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900e9

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900e7

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/l/b/a/b;->z:I

    const/4 v3, 0x2

    const v4, 0x7f0900e6

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getStatus()I

    move-result p2

    if-eqz p2, :cond_2

    const v0, 0x7f080074

    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f060107

    .line 5
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 7
    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_1
    const p2, 0x7f06010a

    .line 8
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 10
    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_2
    const p2, 0x7f060067

    .line 11
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 12
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const p2, 0x7f080075

    .line 13
    invoke-virtual {p1, v4, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_3
    const p2, 0x7f0903b6

    if-ne v0, v3, :cond_4

    .line 14
    invoke-virtual {p1, p2, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 15
    invoke-virtual {p1, p2, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 16
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/a/b;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V

    return-void
.end method
