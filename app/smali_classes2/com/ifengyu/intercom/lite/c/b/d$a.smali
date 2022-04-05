.class Lcom/ifengyu/intercom/lite/c/b/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/c/b/d;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/ifengyu/intercom/lite/c/b/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/c/b/d;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$a;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d$a;->a:Landroid/widget/EditText;

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

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$a;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/c/b/d;->a(Lcom/ifengyu/intercom/lite/c/b/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$a;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d$a;->a:Landroid/widget/EditText;

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
    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/lite/c/b/d;->a(Landroid/widget/EditText;Z)V

    :cond_1
    return-void
.end method
