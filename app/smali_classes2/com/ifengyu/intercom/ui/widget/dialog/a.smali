.class public Lcom/ifengyu/intercom/ui/widget/dialog/a;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "ActivateDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

.field private c:Landroid/support/v7/widget/AppCompatCheckBox;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f090218

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1001d6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f1001d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->e:Landroid/widget/TextView;

    const v0, 0x7f1001d5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/a$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
