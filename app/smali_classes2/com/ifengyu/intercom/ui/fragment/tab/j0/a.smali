.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;
.super Lcom/chad/library/adapter/base/i;
.source "DeviceTitleSelectPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;)V
    .locals 2

    const v0, 0x7f090079

    .line 1
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801f7

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->getType()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09015a

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06019c

    goto :goto_0

    :cond_0
    const p2, 0x7f060029

    :goto_0
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;)V

    return-void
.end method
