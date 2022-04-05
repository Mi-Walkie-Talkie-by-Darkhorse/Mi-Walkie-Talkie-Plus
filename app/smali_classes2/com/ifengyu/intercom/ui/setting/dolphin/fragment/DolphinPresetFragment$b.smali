.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;
.super Lb/d/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/d/a/a/a<",
        "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-direct {p0, p2, p3, p4}, Lb/d/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V
    .locals 2

    const v0, 0x7f09045e

    invoke-virtual {p1, v0}, Lb/d/a/a/c/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const p3, 0x7f060175

    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    const p3, 0x7f06002b

    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance p3, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic a(Lb/d/a/a/c/c;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V

    return-void
.end method
