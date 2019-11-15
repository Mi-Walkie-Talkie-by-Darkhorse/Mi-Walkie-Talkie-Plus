.class Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SharkChannelSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
