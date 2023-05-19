.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity$c;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "DolphinCHSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
