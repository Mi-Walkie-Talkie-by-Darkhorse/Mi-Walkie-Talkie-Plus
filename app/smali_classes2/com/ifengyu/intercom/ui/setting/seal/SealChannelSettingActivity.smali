.class public Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$c;
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
            "Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;",
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

.field private t:Landroidx/viewpager/widget/ViewPager$k;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const v0, 0x7f030002

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->q:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->t:Landroidx/viewpager/widget/ViewPager$k;

    return-void
.end method

.method private A()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_seal_is_first_channel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;Landroidx/fragment/app/FragmentManager;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->t:Landroidx/viewpager/widget/ViewPager$k;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->q:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$b;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v4, 0x7f080128

    invoke-static {p0, v4}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->newInstance()Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->newInstance()Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_seal_channel"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v0

    const v4, 0x7f060175

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_seal_channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_seal_is_first_channel"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->q:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f110356

    const v3, 0x7f11029a

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "C%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->v:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->u:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

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

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->n()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->u:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->v:Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->u:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->v:Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0049

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->A()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    return-void
.end method

.method public w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->v:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->u:Z

    return v0
.end method
