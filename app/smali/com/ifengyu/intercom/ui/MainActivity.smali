.class public Lcom/ifengyu/intercom/ui/MainActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/MainActivity$a;,
        Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000f6
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/ifengyu/intercom/ui/MainActivity$a;

.field viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000f8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/MainActivity;->f(I)V

    return-void
.end method

.method static final synthetic a(Ljava/lang/Object;Z)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUnreadCount, sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->readUnreadSession(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MainActivity"

    const-string v1, "clearAllUnreadCount"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    check-cast p0, Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity"

    const-string v1, "clearAllSystemUnreadCount"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Z

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v1, v2, p0, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/MainActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity$1;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a()Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a()Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->a()Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->d()Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/MainActivity$2;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->q()V

    return-void
.end method

.method private f(I)V
    .locals 6

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100278

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f100279

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/MainActivity;->b:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0095

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/MainActivity;->a:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v1

    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    sget-object v2, Lcom/ifengyu/intercom/ui/a;->a:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->a:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f100279

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->a:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->b:[I

    const v0, 0x7f0a0009

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->c:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->f()V

    new-instance v0, Lcom/ifengyu/intercom/ui/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/MainActivity$a;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;Lcom/ifengyu/intercom/ui/MainActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:Lcom/ifengyu/intercom/ui/MainActivity$a;

    return-void

    :cond_0
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->a:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->b:[I

    const v0, 0x7f0a0008

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->c:[Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f020142
        0x7f020147
        0x7f02013f
        0x7f020144
    .end array-data

    :array_1
    .array-data 4
        0x7f020141
        0x7f020146
        0x7f02013e
        0x7f020143
    .end array-data

    :array_2
    .array-data 4
        0x7f020142
        0x7f02013f
        0x7f020144
    .end array-data

    :array_3
    .array-data 4
        0x7f020141
        0x7f02013e
        0x7f020143
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MainActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4e3b\u754c\u9762"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    const-string v0, "MainActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/z;->a(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->d()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:Lcom/ifengyu/intercom/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    const-string v0, "MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:Lcom/ifengyu/intercom/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method
