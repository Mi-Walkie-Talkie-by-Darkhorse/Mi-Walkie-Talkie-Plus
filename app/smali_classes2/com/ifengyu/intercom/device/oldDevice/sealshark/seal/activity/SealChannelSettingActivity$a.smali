.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity$a;
.super Landroidx/viewpager/widget/ViewPager$k;
.source "SealChannelSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$k;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimpleOnPageChangeListener onPageSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->mFabLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
