.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;
.super Lcom/ifengyu/intercom/ui/adapter/i;
.source "DolphinCustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/adapter/i",
        "<",
        "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/ifengyu/intercom/ui/adapter/i;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V
    .locals 4

    const v3, 0x7f0f0095

    const v0, 0x7f1002b2

    invoke-virtual {p1, v0}, Lcom/zhy/a/a/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1002c3

    invoke-virtual {p1, v1}, Lcom/zhy/a/a/a/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zhy/a/a/a/c;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zhy/a/a/a/c;->itemView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_1
    const v2, 0x7f0f001d

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0f0012

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V

    return-void
.end method
