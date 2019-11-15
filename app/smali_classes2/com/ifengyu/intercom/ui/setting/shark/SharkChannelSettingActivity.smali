.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkChannelSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field clickToEdit:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100144
    .end annotation
.end field

.field private d:Z

.field mChannelName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c4
    .end annotation
.end field

.field mFab:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000cd
    .end annotation
.end field

.field mFabLayout:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000cc
    .end annotation
.end field

.field mIbBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field mTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000ca
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000cb
    .end annotation
.end field

.field normalChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c5
    .end annotation
.end field

.field normalCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013e
    .end annotation
.end field

.field normalRxCssValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013f
    .end annotation
.end field

.field normalTxCssValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100140
    .end annotation
.end field

.field private q:Z

.field private r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field specialChannelLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c6
    .end annotation
.end field

.field specialCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100141
    .end annotation
.end field

.field specialRxChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c7
    .end annotation
.end field

.field specialRxCssValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100142
    .end annotation
.end field

.field specialTxChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c8
    .end annotation
.end field

.field specialTxCssValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100143
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_shark_channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_shark_is_major_channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 8

    const v7, 0x7f0f0095

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_shark_is_major_channel"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;Landroid/support/v4/app/FragmentManager;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v3, 0x7f020122

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    move-result-object v0

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_shark_channel"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 6

    const v5, 0x7f090197

    const/4 v2, 0x4

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    const v1, 0x7f090232

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    const v1, 0x7f090232

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d:Z

    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000cd -> :sswitch_2
        0x7f100144 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->q()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    return-void
.end method
