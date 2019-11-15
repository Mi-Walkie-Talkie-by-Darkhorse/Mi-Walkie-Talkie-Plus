.class public Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBtEarDisConnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f10012d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->h()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10012e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bt_ear_had_conn_to"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveBtEarDisConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->e:Ljava/lang/String;

    const-string v1, "receiveBtEarDisConnectStateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
