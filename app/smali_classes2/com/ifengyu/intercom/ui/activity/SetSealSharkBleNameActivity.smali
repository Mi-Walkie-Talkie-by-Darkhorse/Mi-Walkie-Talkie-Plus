.class public Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SetSealSharkBleNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/EditText;

.field private u:Ljava/lang/String;

.field private v:Landroid/view/View;

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/16 v0, 0x12

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->w:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->v:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->w:I

    return p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    const-string v3, "setting_walkie_name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->r()V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090418

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090054

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    const v0, 0x7f090055

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->s:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f110098

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090108

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->v:Landroid/view/View;

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->s:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->w:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090108

    if-eq p1, v0, :cond_7

    const v0, 0x7f090418

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const p1, 0x7f1100c9

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1102e0

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f11032f

    .line 10
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x:Z

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->t:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0050

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public receiveSealParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x:Z

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->w()V

    goto :goto_0

    :cond_1
    const p1, 0x7f110340

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method public receiveSharkParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->x:Z

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;->w()V

    goto :goto_0

    :cond_1
    const p1, 0x7f110340

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method