.class Lcom/ifengyu/intercom/lite/c/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/c/b/d;->a(Lcom/ifengyu/intercom/lite/c/b/d;Z)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p2, v0, p1}, Lcom/ifengyu/intercom/lite/c/b/d;->a(Landroid/widget/EditText;Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->b:Lcom/ifengyu/intercom/lite/c/b/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/d$b;->a:Landroid/widget/EditText;

    invoke-virtual {p2, v0, p1}, Lcom/ifengyu/intercom/lite/c/b/d;->a(Landroid/widget/EditText;Z)V

    :goto_0
    return-void
.end method
