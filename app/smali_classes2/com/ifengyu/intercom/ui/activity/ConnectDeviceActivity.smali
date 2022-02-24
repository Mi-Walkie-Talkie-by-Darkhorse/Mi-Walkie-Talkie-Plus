.class public Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/node/e$b;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Lcom/ifengyu/intercom/node/h;

.field private C:Z

.field private D:Landroid/widget/ListView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/view/ViewPropertyAnimator;

.field private G:Z

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/animation/ObjectAnimator;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/content/Intent;

.field private N:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;

.field private O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Landroid/animation/ObjectAnimator;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/content/IntentFilter;

.field private U:Lcom/ifengyu/intercom/MiTalkiApp;

.field private V:Ljava/lang/String;

.field private W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

.field private X:Landroid/content/ServiceConnection;

.field private Y:Ljava/lang/Runnable;

.field private Z:Ljava/lang/Runnable;

.field private b0:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private c0:Lcom/ifengyu/intercom/lite/h/h0;

.field private d0:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private e0:Landroid/widget/Button;

.field private f0:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private g0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field private q:Landroid/bluetooth/BluetoothAdapter;

.field private r:Landroid/bluetooth/le/BluetoothLeScanner;

.field private s:Z

.field private t:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;

.field private u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/ifengyu/intercom/ui/adapter/a;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Ljava/util/Set;

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$j;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$k;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$k;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Y:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->g0:Ljava/util/Comparator;

    return-void
.end method

.method private A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result v0

    const v1, 0x8f03

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/node/q/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_1
    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/node/q/d;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private C()Landroid/text/SpannableString;
    .locals 10

    const v0, 0x7f1101c3

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101c2

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v9, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    const v3, 0x7f0600c3

    invoke-static {p0, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v5

    const v3, 0x7f0600c5

    .line 6
    invoke-static {p0, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;IIII)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v9, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v2, v9, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/q/d;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/q/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivateDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-boolean v3, v3, Lcom/ifengyu/intercom/MiTalkiApp;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectDeviceActivity"

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-boolean v2, v2, Lcom/ifengyu/intercom/MiTalkiApp;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    .line 9
    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q()V

    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method

.method private F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$q;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f0:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$m;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f110306

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e0:Landroid/widget/Button;

    const v1, 0x7f06018c

    .line 4
    invoke-static {p0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e0:Landroid/widget/Button;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private H()V
    .locals 5

    const v0, 0x7f090112

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090119

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L:Landroid/widget/LinearLayout;

    const v0, 0x7f09011a

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f090118

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090110

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    const v1, 0x7f0800b3

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090114

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    const v0, 0x7f090115

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/widget/RelativeLayout;

    const v0, 0x7f090116

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v2, "com.ifengyu.intercom.FROM_SPLASH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.FROM_LOGIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f0:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.FROM_DEVICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.FORM_MAIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.RECONNECT_DEVICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f090113

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f090117

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 15
    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xbb8

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$o;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method

.method private I()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c0:Lcom/ifengyu/intercom/lite/h/h0;

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/a;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/f;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/f;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private K()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110286

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110145

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/g;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.RECONNECT_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Landroid/content/Intent;

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Landroid/content/Intent;

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8
    new-instance v1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setAddress(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setName(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setDeviceType(I)V

    const v1, 0x8f03

    if-ne v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$l;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F()V

    :goto_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/node/e$b;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Lcom/ifengyu/intercom/node/h;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M()V

    return-void
.end method

.method private O()V
    .locals 0

    return-void
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const v0, 0x7f1100a7

    .line 7
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/f/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d0:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    .line 10
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v4, 0x7f1100fd

    .line 11
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C()Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v4, 0x7f110093

    const/4 v5, 0x2

    new-instance v6, Lcom/ifengyu/intercom/ui/activity/d;

    invoke-direct {v6, p0}, Lcom/ifengyu/intercom/ui/activity/d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 13
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v4, 0x7f110043

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/e;

    invoke-direct {v5, p0, v1, v0}, Lcom/ifengyu/intercom/ui/activity/e;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;I)V

    .line 14
    invoke-virtual {v2, v3, v4, v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v0, 0x7f1200fc

    .line 15
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d0:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d0:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d0:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private R()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y()V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/i/e0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L()V

    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Z

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    const-string v1, "ConnectDeviceActivity"

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v0, "start anim"

    .line 10
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    const/4 v2, 0x2

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :try_start_0
    const-string v0, "start scan v1"

    .line 15
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Z

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while start Scan, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private S()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while stop Scan, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectDeviceActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p1, 0x7f1100a0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p1, 0x7f1100b9

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectDeviceActivity"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 5

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectDeviceActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    .line 34
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "connection_config"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "connection_remove"

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/app/Activity;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const v1, 0x7f1100ba

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100a8

    .line 14
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100bd

    .line 16
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100aa

    .line 18
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f110183

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100a9

    .line 21
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/c;->a(I)V

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J()V

    .line 27
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q()V

    return-void
.end method

.method private b(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 3

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O()V

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z()V

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    return-object p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/h/h0;->d(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Z

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)Lcom/ifengyu/intercom/g/e/f;

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    return-object p0
.end method

.method private e(I)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_1
    const v0, 0x7f030003

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 8
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;

    .line 10
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 11
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const p1, 0x7f120104

    .line 12
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Landroid/content/Intent;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Lcom/ifengyu/intercom/node/h;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$j;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Ble not supported!!!"

    .line 7
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f0:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    return-object p0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->g0:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic q(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P()V

    return-void
.end method

.method static synthetic r(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D()V

    return-void
.end method

.method static synthetic u(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K()V

    return-void
.end method

.method static synthetic v(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J()V

    return-void
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    return-object p0
.end method

.method static synthetic x(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    return-object p0
.end method

.method private y()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110052

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110144

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/h;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/h;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private z()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic z(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 44
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/event/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/event/a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveDolphinParamData"

    .line 60
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 70
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$g;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSealParamData"

    .line 71
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 81
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$h;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSharkParamData"

    .line 82
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 92
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$i;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$i;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 52
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B()V

    .line 53
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic a(Ljava/lang/String;ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 54
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    .line 55
    invoke-static {p1}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 56
    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/d0;->a(IZ)V

    .line 57
    invoke-static {p2}, Lcom/ifengyu/intercom/f/a;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-boolean p2, p2, Lcom/ifengyu/intercom/MiTalkiApp;->h:Z

    if-nez p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/content/Intent;

    const/4 p3, 0x0

    .line 58
    new-instance p4, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object p4, p2, p3

    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {p3, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object p3, p2, p1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/ifengyu/library/a/m;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A()V

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090112

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_2
    const p1, 0x7f1100b7

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(I)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    if-eqz p1, :cond_3

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v0, -0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/c;->a(I)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->init()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H()V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/MiTalkiApp;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Lcom/ifengyu/intercom/MiTalkiApp;

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I()V

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->a()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Lcom/ifengyu/intercom/node/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Lcom/ifengyu/intercom/node/h;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$t;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Landroid/content/IntentFilter;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 16
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    .line 17
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11002e

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110145

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/b;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110093

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->b(Ljava/util/List;)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic w()V
    .locals 1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public x()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/c;->getCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    if-eqz v0, :cond_2

    .line 10
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Z

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f1100b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f1100ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/TextView;

    const v1, 0x7f1100ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/ListView;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Landroid/view/ViewPropertyAnimator;

    const/high16 v4, -0x3d380000    # -100.0f

    .line 19
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$r;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method
