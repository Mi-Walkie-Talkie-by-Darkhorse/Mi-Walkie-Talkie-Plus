.class public Lcom/ifengyu/intercom/device/lite/fragment/i1;
.super Lcom/ifengyu/intercom/l/a/b/b/y;
.source "LiteConfigFileDetailFragment.java"


# instance fields
.field private D:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;-><init>()V

    return-void
.end method

.method private synthetic w3(Ljava/lang/String;)V
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

.method public static y3(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lcom/ifengyu/intercom/device/lite/fragment/i1;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/i1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/i1;-><init>()V

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

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/i1;->D:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->k()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/h0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/i1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/i1;->D:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->t(Ljava/util/List;)V

    return-void
.end method

.method public synthetic x3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/i1;->w3(Ljava/lang/String;)V

    return-void
.end method
