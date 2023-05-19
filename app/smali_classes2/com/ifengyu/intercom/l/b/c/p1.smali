.class public Lcom/ifengyu/intercom/l/b/c/p1;
.super Lcom/ifengyu/intercom/l/a/b/b/z;
.source "Mi3ConfigFileListFragment.java"


# instance fields
.field private F:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;-><init>()V

    return-void
.end method

.method private c4()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setCreateTime(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setUpdateTime(J)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/l/b/e/u;->v()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFromDeviceType(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/l/b/e/u;->s()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, 0x7f1100cf

    .line 8
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->f(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    :goto_1
    return-void
.end method

.method private synthetic d4(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f110201

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110200

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f4()Lcom/ifengyu/intercom/l/b/c/p1;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/p1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/p1;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected P3(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->B(Ljava/util/List;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Mi3_ImportClick_FromConfigList"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected Q3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/c/o1;->y3(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/l/b/c/o1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method protected R3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->h()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/p1;->c4()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Mi3_BackupClick_FromConfig"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    const v0, 0x7f110318

    .line 8
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->R()V

    return-void
.end method

.method protected S3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->U(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method

.method public synthetic e4(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/p1;->d4(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method

.method public k3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->k3()V

    .line 2
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/j;-><init>(Lcom/ifengyu/intercom/l/b/c/p1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p1;->F:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->b0()V

    return-void
.end method
