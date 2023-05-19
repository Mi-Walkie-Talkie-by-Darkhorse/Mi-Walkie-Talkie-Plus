.class public Lcom/ifengyu/intercom/ui/widget/dialog/i;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "GaoDeMapDownloadItemClickDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:Z

    .line 4
    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:Z

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(I)V
    .locals 1

    const v0, 0x7f090081

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900d5

    if-eq p1, v0, :cond_3

    const v0, 0x7f0904a3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:Z

    if-eqz p1, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i$a;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i$a;->c()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i$a;->b()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i$a;->b()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0078

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->g(Landroid/content/Context;)V

    const p1, 0x7f0904a3

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0900d6

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900d5

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090081

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:Z

    const v4, 0x7f1100bd

    const v5, 0x7f1100c1

    if-eqz v3, :cond_1

    .line 9
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    const v3, 0x7f1100c8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    const v3, 0x7f1100be

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 17
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->a([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0904a3
        0x7f0900d5
        0x7f090081
    .end array-data
.end method

.method public setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Lcom/ifengyu/intercom/ui/widget/dialog/i$a;

    return-void
.end method
