.class Lcom/ifengyu/intercom/lite/c/b/d$c;
.super Ljava/lang/Object;
.source "EditTextDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/c/b/d;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/c/b/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/c/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/c/b/d;->c(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/d$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/d;->b(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/d$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/c/b/d;->d(Lcom/ifengyu/intercom/lite/c/b/d;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
