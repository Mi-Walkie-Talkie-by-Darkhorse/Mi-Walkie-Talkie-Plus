.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/d;
.super Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;
.source "Mi3DeviceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V

    const p2, 0x7f09026e

    .line 2
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f080104

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f11017d

    .line 3
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09015a

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
