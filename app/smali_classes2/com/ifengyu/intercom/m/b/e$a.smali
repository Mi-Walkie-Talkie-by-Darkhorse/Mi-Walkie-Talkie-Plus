.class Lcom/ifengyu/intercom/m/b/e$a;
.super Ljava/lang/Object;
.source "EditTextDialogBuilder.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/m/b/e;->D(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/ifengyu/intercom/m/b/e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/m/b/e;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/e$a;->b:Lcom/ifengyu/intercom/m/b/e;

    iput-object p2, p0, Lcom/ifengyu/intercom/m/b/e$a;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/e$a;->b:Lcom/ifengyu/intercom/m/b/e;

    invoke-static {p1}, Lcom/ifengyu/intercom/m/b/e;->L(Lcom/ifengyu/intercom/m/b/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/e$a;->b:Lcom/ifengyu/intercom/m/b/e;

    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/e$a;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/m/b/e;->S(Landroid/widget/EditText;Z)V

    :cond_1
    return-void
.end method
