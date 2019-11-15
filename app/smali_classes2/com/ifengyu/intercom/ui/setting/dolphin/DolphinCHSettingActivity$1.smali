.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "DolphinCHSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimpleOnPageChangeListener onPageSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->mFabLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
