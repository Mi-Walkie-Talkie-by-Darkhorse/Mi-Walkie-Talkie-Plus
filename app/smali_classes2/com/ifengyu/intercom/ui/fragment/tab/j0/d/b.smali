.class public abstract Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "GeneralDeviceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/models/DeviceModel;",
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
    check-cast p2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00df

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f09010e

    .line 1
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;->setEnabled(Z)V

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    const v0, 0x7f090152

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015a

    .line 6
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090144

    .line 7
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090145

    .line 8
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090278

    .line 9
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f0800e4

    const/4 v6, 0x0

    const v7, 0x7f060030

    if-eqz v4, :cond_1

    const v4, 0x7f060029

    .line 12
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f060036

    .line 14
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f110114

    .line 15
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e9

    .line 16
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7f080119

    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 19
    :cond_1
    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f06002f

    .line 20
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f110115

    .line 22
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e8

    .line 23
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_2
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/b;Lcom/ifengyu/intercom/models/DeviceModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
