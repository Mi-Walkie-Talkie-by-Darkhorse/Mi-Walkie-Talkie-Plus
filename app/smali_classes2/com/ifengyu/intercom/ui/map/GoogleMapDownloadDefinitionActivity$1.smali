.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;
.super Ljava/lang/Object;
.source "GoogleMapDownloadDefinitionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->d:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->d:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
