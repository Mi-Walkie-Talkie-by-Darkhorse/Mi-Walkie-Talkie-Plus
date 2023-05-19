.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "DevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/ifengyu/intercom/models/DeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/d;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/c;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 5
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/i;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/i;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/h;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/h;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/a;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public G0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->A:Z

    return v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->A:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->A:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->A:Z

    return v0
.end method

.method protected z0(Ljava/util/List;I)I
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result p1

    return p1
.end method
