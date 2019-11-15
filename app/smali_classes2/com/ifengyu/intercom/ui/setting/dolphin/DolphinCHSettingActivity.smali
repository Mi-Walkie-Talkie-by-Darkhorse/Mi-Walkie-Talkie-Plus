.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "DolphinCHSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field bottomChannelTypeText:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c9
    .end annotation
.end field

.field private c:I

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

.field private q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field specialChannelLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c6
    .end annotation
.end field

.field specialRxChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c7
    .end annotation
.end field

.field specialTxChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const v0, 0x7f0a0005

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/ui/setting/UserChannel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_user_channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_is_first_channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 10

    const/16 v9, 0x8

    const v8, 0x7f0f0095

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_is_first_channel"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;Landroid/support/v4/app/FragmentManager;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->r:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v4, 0x7f020122

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mIbBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_user_channel"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c:I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->bottomChannelTypeText:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->bottomChannelTypeText:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    const v1, 0x7f0900b3

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c:I

    return v0
.end method

.method public d()Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->q:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->e()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    return-void
.end method
