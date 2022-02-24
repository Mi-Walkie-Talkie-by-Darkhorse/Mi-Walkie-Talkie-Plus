.class public Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/adapter/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;,
        Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Z

.field private final D:Landroid/content/BroadcastReceiver;

.field private q:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;

.field private r:Landroid/bluetooth/BluetoothAdapter;

.field private s:Landroidx/recyclerview/widget/RecyclerView;

.field private t:Lcom/ifengyu/intercom/ui/adapter/b;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Timer;

.field private x:Ljava/util/TimerTask;

.field private y:Landroid/os/Handler;

.field private z:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->D:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .locals 2

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090416

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09041d

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902dd

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0902a8

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0904d0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v0, 0x7f090365

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    .line 10
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/b;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/b$b;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private B()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f11009e

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1100ae

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f110093

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f110254

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->f()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/b;->a(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->B()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->C:Z

    return p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->u:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/adapter/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->C()V

    return-void
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->A:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z()V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->A:Landroid/widget/TextView;

    const p2, 0x7f1100a4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->B:Landroid/widget/TextView;

    const p2, 0x7f11027b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->t:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 9
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/bean/BtEarBean;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->C:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902dd

    if-eq p1, v0, :cond_1

    const v0, 0x7f090419

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->B()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->A()V

    .line 6
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->C()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$f;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->y()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z()V

    return-void
.end method

.method public receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "receiveBtEarConnectStateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveBtEarScanControlResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "receiveBtEarScanControlResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    if-ne v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v0, "open Classic Bluetooth success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v0, "open Classic Bluetooth error"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->f()V

    :goto_0
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "startDiscoveryBtEar"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x()V

    return-void
.end method

.method public x()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->z()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Ljava/util/Timer;

    .line 3
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Ljava/util/TimerTask;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Ljava/util/Timer;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "stopDiscoveryBtEar"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->w:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->x:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method
