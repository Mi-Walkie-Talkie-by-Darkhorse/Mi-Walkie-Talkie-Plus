.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;
.super Lcom/zhy/a/a/a;
.source "SharkPresetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/a/a/a",
        "<",
        "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/zhy/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
    .locals 2

    const v0, 0x7f1002c4

    invoke-virtual {p1, v0}, Lcom/zhy/a/a/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f0f0095

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/zhy/a/a/a/c;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zhy/a/a/a/c;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$2;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f0f0012

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V

    return-void
.end method
