.class public Lcom/ifengyu/intercom/l/a/b/a/a;
.super Lcom/chad/library/adapter/base/i;
.source "ConfigFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private z:Z


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
            "Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->getConfigFile()Lcom/ifengyu/intercom/models/ConfigFileModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090505

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f1100db

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904cb

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/a/b/a/a;->u0()Z

    move-result v0

    const v1, 0x7f090267

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0e0009

    .line 6
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    const p2, 0x7f0e000a

    .line 7
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_1
    const p2, 0x7f0e0007

    .line 8
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_0
    return-void
.end method

.method public s0()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    .line 3
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->getConfigFile()Lcom/ifengyu/intercom/models/ConfigFileModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public t0()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    .line 2
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public u0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/l/a/b/a/a;->z:Z

    return v0
.end method

.method public v0(ZI)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/l/a/b/a/a;->z:Z

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    if-ne p2, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->setSelect(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/a/a;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;)V

    return-void
.end method

.method public w0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    .line 3
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->setSelect(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public x0(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->setSelect(Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
