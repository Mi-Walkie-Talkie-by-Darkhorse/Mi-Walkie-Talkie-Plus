.class public Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBtEarHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;->c()V

    return-void
.end method
