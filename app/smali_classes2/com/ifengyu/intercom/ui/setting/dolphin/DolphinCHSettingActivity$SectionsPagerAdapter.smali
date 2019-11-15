.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "DolphinCHSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$SectionsPagerAdapter;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
