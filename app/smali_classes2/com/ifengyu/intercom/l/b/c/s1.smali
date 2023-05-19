.class public Lcom/ifengyu/intercom/l/b/c/s1;
.super Lcom/ifengyu/intercom/l/b/c/x1/j;
.source "Mi3RemoteListFragment.java"


# instance fields
.field private C:Lcom/ifengyu/intercom/k/o;

.field private D:Lcom/ifengyu/intercom/l/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/x1/j;-><init>()V

    return-void
.end method

.method public static synthetic p3(Lcom/ifengyu/intercom/l/b/c/s1;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->m3(Ljava/util/List;)V

    return-void
.end method

.method private synthetic q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->l3(Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;)V

    return-void
.end method

.method public static s3(I)Lcom/ifengyu/intercom/l/b/c/s1;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/s1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/s1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_ACTION"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private t3()Lcom/ifengyu/intercom/l/b/a/b;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    const v1, 0x7f0c00ef

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :pswitch_1
    new-instance v0, Lcom/ifengyu/intercom/l/b/a/b;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1, v3}, Lcom/ifengyu/intercom/l/b/a/b;-><init>(IILjava/util/List;)V

    goto :goto_0

    .line 3
    :pswitch_2
    new-instance v0, Lcom/ifengyu/intercom/l/b/a/b;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1, v3}, Lcom/ifengyu/intercom/l/b/a/b;-><init>(IILjava/util/List;)V

    goto :goto_0

    .line 4
    :pswitch_3
    new-instance v0, Lcom/ifengyu/intercom/l/b/a/b;

    const/4 v1, 0x1

    const v2, 0x7f0c00ed

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/l/b/a/b;-><init>(IILjava/util/List;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ae

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/o;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->C:Lcom/ifengyu/intercom/k/o;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/s1;->h3()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/s1;->o3()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->C:Lcom/ifengyu/intercom/k/o;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected g3()Lcom/chad/library/adapter/base/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/i<",
            "Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->D:Lcom/ifengyu/intercom/l/b/a/b;

    return-object v0
.end method

.method protected h3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/l/b/c/x1/j;->h3()V

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->z:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->z()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/n;-><init>(Lcom/ifengyu/intercom/l/b/c/s1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/j;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->S()V

    :cond_0
    return-void
.end method

.method public o3()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/s1;->t3()Lcom/ifengyu/intercom/l/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->D:Lcom/ifengyu/intercom/l/b/a/b;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->C:Lcom/ifengyu/intercom/k/o;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/o;->w:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->C:Lcom/ifengyu/intercom/k/o;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/o;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/s1;->D:Lcom/ifengyu/intercom/l/b/a/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s1;->D:Lcom/ifengyu/intercom/l/b/a/b;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/o;-><init>(Lcom/ifengyu/intercom/l/b/c/s1;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method public onConfigFileEvent(Lcom/ifengyu/intercom/device/common/event/ConfigFileEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "onConfigFileEvent: remote"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/event/ConfigFileEvent;->getRemoteList()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->m3(Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->u(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic r3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/l/b/c/s1;->q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method
