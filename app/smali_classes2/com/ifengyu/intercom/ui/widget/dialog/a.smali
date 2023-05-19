.class public Lcom/ifengyu/intercom/ui/widget/dialog/a;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "ActivateDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/a$b;

.field private c:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(I)V
    .locals 1

    const v0, 0x7f09015d

    if-eq p1, v0, :cond_2

    const v0, 0x7f090160

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$b;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a$b;->a()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$b;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a$b;->b()V

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_4
    const p1, 0x7f1103f2

    .line 8
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method public i(Lcom/ifengyu/intercom/ui/widget/dialog/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->b:Lcom/ifengyu/intercom/ui/widget/dialog/a$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005f

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->g(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f09015d

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    const p1, 0x7f090160

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->e:Landroid/widget/TextView;

    const p1, 0x7f090161

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
