.class public Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/adapter/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;,
        Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/ifengyu/intercom/ui/adapter/b;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Timer;

.field private t:Ljava/util/TimerTask;

.field private u:Landroid/os/Handler;

.field private v:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Z

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Ljava/util/ArrayList;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/adapter/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    return-object v0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q()V

    return-void
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y:Z

    return v0
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f090086

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method private r()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/b;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/b;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c()V

    return-void
.end method

.method private s()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f1000b3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/b;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/b$b;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/b;->notifyDataSetChanged()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/bean/BtEarBean;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "startDiscoveryBtEar"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d()V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Ljava/util/Timer;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "stopDiscoveryBtEar"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000b5 -> :sswitch_1
        0x7f1000c3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->setContentView(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f()V

    return-void
.end method

.method public receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "receiveBtEarConnectStateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveBtEarScanControlResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "receiveBtEarScanControlResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$5;->a:[I

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "open Classic Bluetooth success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e:Ljava/lang/String;

    const-string v1, "open Classic Bluetooth error"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
