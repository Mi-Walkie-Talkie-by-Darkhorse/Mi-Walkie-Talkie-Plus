.class Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field final synthetic d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "GB2312"

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->b:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->c:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->c:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$a;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
