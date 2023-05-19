.class public Lcom/ifengyu/intercom/l/b/a/a;
.super Lcom/chad/library/adapter/base/i;
.source "Mi3CustomListAdapter.java"


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
.field private final A:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

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
    iput p1, p0, Lcom/ifengyu/intercom/l/b/a/a;->z:I

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object p2, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const-string p3, "Kmedium"

    invoke-direct {p1, p3, p2}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/a/a;->A:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    return-void
.end method

.method private s0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/a/a;->A:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0900e8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/a/a;->s0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0903d4

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/a/a;->s0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x7f09050e

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    iget v0, p0, Lcom/ifengyu/intercom/l/b/a/a;->z:I

    const/4 v4, 0x2

    const v5, 0x7f0900e6

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getStatus()I

    move-result p2

    const v0, 0x7f09050f

    const v7, 0x7f0903d5

    if-eqz p2, :cond_3

    const v8, 0x7f080074

    if-eq p2, v6, :cond_2

    if-eq p2, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const p2, 0x7f060107

    .line 8
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 10
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 12
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 13
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    :cond_2
    const p2, 0x7f06010a

    .line 14
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 15
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 16
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 17
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 18
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 19
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    :cond_3
    const p2, 0x7f060067

    .line 20
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 21
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 22
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 23
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 24
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const p2, 0x7f080075

    .line 25
    invoke-virtual {p1, v5, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    :cond_4
    const p2, 0x7f0903b6

    if-ne v0, v4, :cond_5

    .line 26
    invoke-virtual {p1, p2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 27
    invoke-virtual {p1, p2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 28
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/a/a;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V

    return-void
.end method
