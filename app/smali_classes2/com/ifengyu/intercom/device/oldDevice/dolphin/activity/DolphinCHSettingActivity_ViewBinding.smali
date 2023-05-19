.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DolphinCHSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048e

    const-string v2, "field \'mIbBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mIbBack:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09033a

    const-string v2, "field \'normalChannelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090430

    const-string v2, "field \'specialChannelLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090433

    const-string v2, "field \'specialRxChannelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090435

    const-string v2, "field \'specialTxChannelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090080

    const-string v2, "field \'bottomChannelTypeText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->bottomChannelTypeText:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900ed

    const-string v2, "field \'mChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mChannelName:Landroid/widget/TextView;

    .line 10
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f09045d

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 11
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f09010d

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f09008a

    const-string v1, "field \'mFabLayout\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    .line 13
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901c1

    const-string v2, "field \'mFab\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mFab:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mIbBack:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->bottomChannelTypeText:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mChannelName:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->mFab:Landroid/widget/ImageView;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
