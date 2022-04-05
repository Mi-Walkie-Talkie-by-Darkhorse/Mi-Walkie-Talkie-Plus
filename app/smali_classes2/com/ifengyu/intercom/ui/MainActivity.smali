.class public Lcom/ifengyu/intercom/ui/MainActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/MainActivity$e;,
        Lcom/ifengyu/intercom/ui/MainActivity$f;
    }
.end annotation


# instance fields
.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090089
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public r:[I

.field public s:[I

.field public t:[Ljava/lang/String;

.field private u:Z

.field private v:Lcom/ifengyu/intercom/ui/MainActivity$e;

.field viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->u:Z

    return-void
.end method

.method private A()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v1, v2, p0, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;)V

    return-void
.end method

.method private B()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f1100a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private C()Landroid/text/SpannableString;
    .locals 9

    const v0, 0x7f110386

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11038a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/MainActivity$d;

    const v3, 0x7f0600c3

    invoke-static {p0, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v5

    const v3, 0x7f0600c5

    invoke-static {p0, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ifengyu/intercom/ui/MainActivity$d;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;IIII)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private D()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->newInstance()Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->newInstance()Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->newInstance()Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private E()V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/MainActivity$f;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/MainActivity$f;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/MainActivity$b;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->t:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110286

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/a;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    const v2, 0x7f110145

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->A()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/MainActivity;->g(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/MainActivity;->f(I)V

    return-void
.end method

.method private f(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0903e7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/MainActivity;->s:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060175

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:[I

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110389

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->C()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v2, Lcom/ifengyu/intercom/ui/MainActivity$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/MainActivity$c;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v2, Lcom/ifengyu/intercom/ui/c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/c;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;I)V

    const p1, 0x7f110043

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private y()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/b;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    const v2, 0x7f110144

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private z()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->u:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/MainActivity$a;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    const-string v1, "app"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)Lcom/ifengyu/intercom/g/e/f;

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    const-string p2, "app"

    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->A()V

    return-void
.end method

.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0903e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainActivity;->t:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MainActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c0037

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const/4 p1, 0x3

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->r:[I

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->s:[I

    const p1, 0x7f03000e

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->t:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->D()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->E()V

    new-instance p1, Lcom/ifengyu/intercom/ui/MainActivity$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/MainActivity$e;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;Lcom/ifengyu/intercom/ui/MainActivity$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->v:Lcom/ifengyu/intercom/ui/MainActivity$e;

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->v:Lcom/ifengyu/intercom/ui/MainActivity$e;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08015f
        0x7f08015c
        0x7f080161
    .end array-data

    :array_1
    .array-data 4
        0x7f08015e
        0x7f08015b
        0x7f080160
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity;->v:Lcom/ifengyu/intercom/ui/MainActivity$e;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "MainActivity"

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/util/List;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11002e

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/d;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/d;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    const v0, 0x7f110145

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110093

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

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

    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->b(Ljava/util/List;)V

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

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->z()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    const-string v0, "MainActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->w()Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->B()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string v0, "MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public w()Z
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->x()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->y()V

    return v1

    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/i/e0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainActivity;->F()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method
