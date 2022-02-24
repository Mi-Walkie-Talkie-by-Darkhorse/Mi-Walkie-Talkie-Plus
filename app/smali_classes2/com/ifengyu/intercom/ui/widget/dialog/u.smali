.class public Lcom/ifengyu/intercom/ui/widget/dialog/u;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "OffMapRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/u$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Lcom/ifengyu/intercom/ui/widget/dialog/u$b;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->e:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->e:I

    return p0
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f110343

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x7f110344

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const p1, 0x7f11032f

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u$b;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/u$b;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902eb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/u$b;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0126

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([I)V

    const p1, 0x7f0902ea

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/u;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0902eb
        0x7f0902ec
    .end array-data
.end method
