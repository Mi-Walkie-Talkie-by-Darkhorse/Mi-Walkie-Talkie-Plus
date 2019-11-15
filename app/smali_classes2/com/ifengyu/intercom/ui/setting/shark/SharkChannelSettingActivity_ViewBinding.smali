.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SharkChannelSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const v0, 0x7f1000c3

    const-string v1, "field \'mIbBack\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    const v0, 0x7f1000c5

    const-string v1, "field \'normalChannelNumber\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    const v0, 0x7f10013e

    const-string v1, "field \'normalCssChannelLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f10013f

    const-string v1, "field \'normalRxCssValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    const v0, 0x7f100140

    const-string v1, "field \'normalTxCssValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    const v0, 0x7f1000c6

    const-string v1, "field \'specialChannelLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f1000c7

    const-string v1, "field \'specialRxChannelNumber\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    const v0, 0x7f1000c8

    const-string v1, "field \'specialTxChannelNumber\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    const v0, 0x7f100141

    const-string v1, "field \'specialCssChannelLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f100142

    const-string v1, "field \'specialRxCssValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    const v0, 0x7f100143

    const-string v1, "field \'specialTxCssValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    const v0, 0x7f1000c4

    const-string v1, "field \'mChannelName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    const v0, 0x7f100144

    const-string v1, "field \'clickToEdit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    const v0, 0x7f1000ca

    const-string v1, "field \'mTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f1000cb

    const-string v1, "field \'mViewPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f1000cc

    const-string v1, "field \'mFabLayout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const v0, 0x7f1000cd

    const-string v1, "field \'mFab\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mIbBack:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalChannelNumber:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalCssChannelLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalRxCssValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->normalTxCssValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialChannelLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxChannelNumber:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxChannelNumber:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialCssChannelLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialRxCssValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->specialTxCssValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mChannelName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->clickToEdit:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFabLayout:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->mFab:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    return-void
.end method
