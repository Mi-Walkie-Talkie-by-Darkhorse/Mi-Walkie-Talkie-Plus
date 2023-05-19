.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;
.super Lcom/ifengyu/intercom/device/oldDevice/w/a/a;
.source "DolphinCustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/oldDevice/w/a/a<",
        "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/ifengyu/intercom/device/oldDevice/w/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic m(Lb/f/a/a/c/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->r(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;I)V

    return-void
.end method

.method protected r(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;I)V
    .locals 3

    const p3, 0x7f0904c8

    .line 1
    invoke-virtual {p1, p3}, Lb/f/a/a/c/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0904c6

    .line 2
    invoke-virtual {p1, v0}, Lb/f/a/a/c/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06018b

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f060036

    .line 7
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f060029

    .line 8
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result p3

    invoke-static {p3}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
