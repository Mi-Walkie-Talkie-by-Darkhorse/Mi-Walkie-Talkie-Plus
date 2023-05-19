.class public Lcom/ifengyu/intercom/device/lite/fragment/j1;
.super Lcom/ifengyu/intercom/l/a/b/b/z;
.source "LiteConfigFileListFragment.java"


# instance fields
.field private F:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;-><init>()V

    return-void
.end method

.method private synthetic d4(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f110200

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110201

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->IMPORTED:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static f4()Lcom/ifengyu/intercom/device/lite/fragment/j1;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/j1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/j1;-><init>()V

    return-object v0
.end method

.method private synthetic w3(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    const p1, 0x7f1100cf

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setCreateTime(J)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setUpdateTime(J)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/e/l;->p()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 7
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFromDeviceType(I)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->f(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->t(Ljava/util/List;)V

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

    const-string v1, "Lite_ImportClick_FromConfigList"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected Q3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/fragment/i1;->y3(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/device/lite/fragment/i1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method protected R3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/lite/e/l;->H(I)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Lite_BackupClick_FromConfig"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

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

.method public synthetic c4(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/j1;->w3(Ljava/util/List;)V

    return-void
.end method

.method public synthetic e4(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/j1;->d4(Ljava/lang/String;)V

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

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->n()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/i0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/i0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/j1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->k()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/j0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/j0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/j1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/j1;->F:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->J()V

    return-void
.end method
