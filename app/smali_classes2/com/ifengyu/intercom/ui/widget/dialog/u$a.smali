.class Lcom/ifengyu/intercom/ui/widget/dialog/u$a;
.super Ljava/lang/Object;
.source "OffMapRenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/u;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field final synthetic d:Lcom/ifengyu/intercom/ui/widget/dialog/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->b:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->c:I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b(Lcom/ifengyu/intercom/ui/widget/dialog/u;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->c:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
