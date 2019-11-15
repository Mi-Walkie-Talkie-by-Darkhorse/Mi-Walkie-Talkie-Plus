.class Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SealChannelSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
