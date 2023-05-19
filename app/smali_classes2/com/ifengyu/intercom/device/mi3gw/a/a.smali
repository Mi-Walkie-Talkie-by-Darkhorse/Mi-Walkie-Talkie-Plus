.class public Lcom/ifengyu/intercom/device/mi3gw/a/a;
.super Lcom/chad/library/adapter/base/i;
.source "DeviceCurGroupSwitchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
        "Lcom/ifengyu/talk/http/entity/TempGroup;",
        ">;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904e5

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result v0

    const v1, 0x7f09026a

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/a/a;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    return-void
.end method
