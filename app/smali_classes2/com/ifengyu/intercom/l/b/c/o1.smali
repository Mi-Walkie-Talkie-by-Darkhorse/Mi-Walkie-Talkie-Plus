.class public Lcom/ifengyu/intercom/l/b/c/o1;
.super Lcom/ifengyu/intercom/l/a/b/b/y;
.source "Mi3ConfigFileDetailFragment.java"


# instance fields
.field private D:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;-><init>()V

    return-void
.end method

.method private synthetic w3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 2

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

    const-string v1, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    const p1, 0x7f110201

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110200

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/o1;->D:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static y3(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/l/b/c/o1;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/o1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/o1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config_file"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected i3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;->i3()V

    .line 2
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/o1;->D:Lcom/ifengyu/intercom/l/b/e/u;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/i;-><init>(Lcom/ifengyu/intercom/l/b/c/o1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/o1;->D:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->b0()V

    return-void
.end method

.method protected u3(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/o1;->D:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->B(Ljava/util/List;)V

    return-void
.end method

.method public synthetic x3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/o1;->w3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method
