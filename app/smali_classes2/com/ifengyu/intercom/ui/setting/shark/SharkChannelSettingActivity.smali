.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkChannelSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$c;
    }
.end annotation


# instance fields
.field clickToEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900de
    .end annotation
.end field

.field mChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c7
    .end annotation
.end field

.field mFab:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017b
    .end annotation
.end field

.field mFabLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field mIbBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e8
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e7
    .end annotation
.end field

.field normalChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d7
    .end annotation
.end field

.field normalCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902da
    .end annotation
.end field

.field normalRxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902db
    .end annotation
.end field

.field normalTxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902dc
    .end annotation
.end field

.field private final q:[Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field specialChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903bb
    .end annotation
.end field

.field specialCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903bc
    .end annotation
.end field

.field specialRxChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903be
    .end annotation
.end field

.field specialRxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903bf
    .end annotation
.end field

.field specialTxChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c0
    .end annotation
.end field

.field specialTxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c1
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:Landroidx/viewpager/widget/ViewPager$k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const v0, 0x7f030002

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->v:Landroidx/viewpager/widget/ViewPager$k;

    return-void
.end method

.method private A()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_shark_is_major_channel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    .line 6
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->v:Landroidx/viewpager/widget/ViewPager$k;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 14
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v6, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 17
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v5, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$b;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)V

    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 20
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v5, 0x1e

    .line 22
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v5, 0x7f080128

    .line 23
    invoke-static {p0, v5}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 25
    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    move-result-object v2

    .line 26
    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    move-result-object v0

    .line 27
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_shark_channel"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v0

    const v2, 0x7f060175

    if-ne v0, v3, :cond_1

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_shark_channel"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_shark_is_major_channel"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f110356

    const v3, 0x7f11029a

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->u:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->t:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900de

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f09017b

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->t:Z

    .line 7
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->u:Z

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    .line 9
    :cond_3
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->t:Z

    .line 10
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->u:Z

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0052

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->A()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    return-void
.end method

.method public w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->u:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->t:Z

    return v0
.end method
