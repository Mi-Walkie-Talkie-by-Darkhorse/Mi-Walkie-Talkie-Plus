.class public Lcom/ifengyu/intercom/ui/widget/dialog/x;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/x$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

.field private d:Lcom/ifengyu/intercom/ui/widget/dialog/x$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/x$a;)Lcom/ifengyu/intercom/ui/widget/dialog/x;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->d:Lcom/ifengyu/intercom/ui/widget/dialog/x$a;

    return-object p0
.end method

.method protected a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->d:Lcom/ifengyu/intercom/ui/widget/dialog/x$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->d:Lcom/ifengyu/intercom/ui/widget/dialog/x$a;

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x$a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001f7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->a([I)V

    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/ifengyu/intercom/ui/widget/view/b;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x;->c:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/widget/EditText;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1001f7
        0x7f1001f8
    .end array-data
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->show()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
