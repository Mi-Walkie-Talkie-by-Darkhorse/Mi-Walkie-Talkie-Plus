.class public abstract Lcom/ifengyu/intercom/l/b/c/x1/j;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3BaseListFragment.java"


# instance fields
.field protected A:Lcom/ifengyu/intercom/l/b/e/u;

.field protected final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic j3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "ACTION_ADD_CH_TO_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "ACTION_UPDATE_CH_TO_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const p1, 0x7f110344

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110343

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const p1, 0x7f110205

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f110204

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "KEY_ACTION"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    :cond_0
    return-void
.end method

.method public E2()V
    .locals 0

    return-void
.end method

.method protected abstract g3()Lcom/chad/library/adapter/base/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/i<",
            "Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation
.end method

.method protected h3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x1/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x1/a;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/j;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x1/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x1/b;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/j;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method protected i3()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic k3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->j3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method

.method protected l3(Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->g0(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/m1;->D3()Lcom/ifengyu/intercom/l/b/c/m1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->n(Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/l/b/e/u;->a0(Lcom/ifengyu/intercom/models/ChannelModel;I)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/l/b/e/u;->a0(Lcom/ifengyu/intercom/models/ChannelModel;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected m3(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    invoke-direct {v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;-><init>()V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setChannel(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 5
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/j;->i3()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->n3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/j;->g3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method protected n3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 7
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 10
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_0

    .line 12
    :pswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 14
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 15
    invoke-virtual {v5, v4}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 17
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 18
    invoke-virtual {v5, v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v5, v3}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_1

    .line 20
    :pswitch_2
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 22
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 23
    invoke-virtual {v5, v2}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 25
    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->getChannel()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 26
    invoke-virtual {v5, v4}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_2

    .line 27
    :cond_7
    invoke-virtual {v5, v3}, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->setStatus(I)V

    goto :goto_2

    .line 28
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/j;->g3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->d0()V

    return-void
.end method
