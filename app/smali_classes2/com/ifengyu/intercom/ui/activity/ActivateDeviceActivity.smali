.class public Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBtnActivate:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090091
    .end annotation
.end field

.field mBtnCancel:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090094
    .end annotation
.end field

.field mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c9
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field mTitleBarRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041a
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->q:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->x()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    const v0, 0x7f110027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->a(Z)V

    return-void
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->c()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090091

    if-eq p1, v0, :cond_1

    const v0, 0x7f090094

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f1100f0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f08013e

    invoke-virtual {p0, v0, v0, p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->q:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->x()V

    goto :goto_0

    :cond_2
    const p1, 0x7f11033b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f11010a

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "ActivateDeviceActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
