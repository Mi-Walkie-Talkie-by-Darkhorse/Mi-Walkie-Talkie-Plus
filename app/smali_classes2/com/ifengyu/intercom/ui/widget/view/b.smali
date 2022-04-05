.class public Lcom/ifengyu/intercom/ui/widget/view/b;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Lcom/ifengyu/intercom/ui/widget/view/b$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->b:I

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->c:Lcom/ifengyu/intercom/ui/widget/view/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/b$a;->a()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->c:Lcom/ifengyu/intercom/ui/widget/view/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/b$a;->b()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->c:Lcom/ifengyu/intercom/ui/widget/view/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/b$a;->c()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901df
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0088

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const p1, 0x7f0901df

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0901e0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->b:I

    const v3, 0x7f060175

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnclickListener(Lcom/ifengyu/intercom/ui/widget/view/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->c:Lcom/ifengyu/intercom/ui/widget/view/b$a;

    return-void
.end method
