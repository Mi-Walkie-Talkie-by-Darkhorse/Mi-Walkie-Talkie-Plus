.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;
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
        "Lcom/ifengyu/intercom/ui/adapter/i<",
        "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/ifengyu/intercom/ui/adapter/i;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V
    .locals 3

    const p3, 0x7f090463

    .line 2
    invoke-virtual {p1, p3}, Lb/d/a/a/c/c;->a(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090461

    .line 3
    invoke-virtual {p1, v0}, Lb/d/a/a/c/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060175

    .line 6
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060036

    .line 8
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f06002b

    .line 9
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result p3

    invoke-static {p3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h$b;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected bridge synthetic a(Lb/d/a/a/c/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$h;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V

    return-void
.end method
