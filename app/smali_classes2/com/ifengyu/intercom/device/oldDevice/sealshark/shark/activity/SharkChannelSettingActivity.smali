.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "SharkChannelSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$c;
    }
.end annotation


# instance fields
.field clickToEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090104
    .end annotation
.end field

.field private final j:[Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private m:Z

.field mChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field mFab:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c1
    .end annotation
.end field

.field mFabLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field mIbBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048e
    .end annotation
.end field

.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045d
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010d
    .end annotation
.end field

.field private n:Z

.field normalChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033a
    .end annotation
.end field

.field normalCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033d
    .end annotation
.end field

.field normalRxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033e
    .end annotation
.end field

.field normalTxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033f
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Landroidx/viewpager/widget/ViewPager$k;

.field specialChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090430
    .end annotation
.end field

.field specialCssChannelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090431
    .end annotation
.end field

.field specialRxChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090433
    .end annotation
.end field

.field specialRxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090434
    .end annotation
.end field

.field specialTxChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090435
    .end annotation
.end field

.field specialTxCssValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090436
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const v0, 0x7f030002

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->j:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->p:Landroidx/viewpager/widget/ViewPager$k;

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->j:[Ljava/lang/String;

    return-object p0
.end method

.method public static I(Landroid/content/Context;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;ZLjava/lang/String;)V
    .locals 2
    .param p1    # Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_shark_channel"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_shark_is_major_channel"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "device_mac_address"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private L()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_shark_is_major_channel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->p:Landroidx/viewpager/widget/ViewPager$k;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 12
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 14
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v6, Lcom/ifengyu/intercom/j/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->j:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 17
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v5, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$b;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;)V

    invoke-virtual {v1, v5}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 20
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v5, 0x1e

    .line 22
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v5, 0x7f08017c

    .line 23
    invoke-static {p0, v5}, Landroidx/core/content/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->p2(ZLjava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    move-result-object v1

    .line 26
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->o:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;->n2(ZLjava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    move-result-object v0

    .line 27
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_shark_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    const v1, 0x7f06018b

    if-ne v0, v3, :cond_1

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->n:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->m:Z

    return v0
.end method

.method public O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel()Z

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f1103fc

    const v3, 0x7f110331

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxFreq()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v3, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public P(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-void
.end method

.method public R(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->n:Z

    return-void
.end method

.method public S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->m:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090104

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901c1

    if-eq p1, v0, :cond_1

    const v0, 0x7f09048e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->n2()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->m:Z

    .line 7
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->n:Z

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;->o2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 9
    :cond_3
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->m:Z

    .line 10
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->n:Z

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->s2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->o:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->L()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    return-void
.end method