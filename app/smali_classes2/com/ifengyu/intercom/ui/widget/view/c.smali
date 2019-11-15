.class public Lcom/ifengyu/intercom/ui/widget/view/c;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "ProductDeviceSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Lcom/ifengyu/intercom/ui/widget/view/c$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->b:I

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/c;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/view/c$a;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/view/c$a;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/view/c$a;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001fa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0f0095

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040082

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/c;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/c;->a(Landroid/app/Activity;)V

    const v0, 0x7f1001fa

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001fb

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1001fc

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->b:I

    if-nez v3, :cond_1

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setOnclickListener(Lcom/ifengyu/intercom/ui/widget/view/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/c;->c:Lcom/ifengyu/intercom/ui/widget/view/c$a;

    return-void
.end method
