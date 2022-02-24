.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;
.super Lb/d/a/a/a;
.source "SealPresetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/d/a/a/a<",
        "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-direct {p0, p2, p3, p4}, Lb/d/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
    .locals 2

    const v0, 0x7f09045e

    .line 2
    invoke-virtual {p1, v0}, Lb/d/a/a/c/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const p3, 0x7f060175

    .line 8
    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    const p3, 0x7f06002b

    .line 10
    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_1
    :goto_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance p3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$b;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected bridge synthetic a(Lb/d/a/a/c/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V

    return-void
.end method
