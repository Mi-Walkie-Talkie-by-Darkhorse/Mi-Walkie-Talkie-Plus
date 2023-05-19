.class Lcom/ifengyu/intercom/m/b/e$c;
.super Ljava/lang/Object;
.source "EditTextDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/m/b/e;->D(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/m/b/e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/m/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/e$c;->a:Lcom/ifengyu/intercom/m/b/e;

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
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/e$c;->a:Lcom/ifengyu/intercom/m/b/e;

    invoke-static {p1}, Lcom/ifengyu/intercom/m/b/e;->O(Lcom/ifengyu/intercom/m/b/e;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/e$c;->a:Lcom/ifengyu/intercom/m/b/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/e;->N(Lcom/ifengyu/intercom/m/b/e;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/e$c;->a:Lcom/ifengyu/intercom/m/b/e;

    invoke-static {p1}, Lcom/ifengyu/intercom/m/b/e;->P(Lcom/ifengyu/intercom/m/b/e;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
