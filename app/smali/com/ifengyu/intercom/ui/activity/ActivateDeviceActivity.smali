.class public Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Ljava/lang/Runnable;

.field mBtnActivate:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10009c
    .end annotation
.end field

.field mBtnCancel:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10009a
    .end annotation
.end field

.field mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100078
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field mTitleBarRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10015b
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->c()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->b()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private d()V
    .locals 4

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->d(I)V

    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->c()V

    goto :goto_0

    :cond_0
    const v0, 0x7f090218

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10009a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0900dc

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
