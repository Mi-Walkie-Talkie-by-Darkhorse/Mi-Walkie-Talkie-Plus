.class Lcom/afollestad/materialdialogs/MaterialDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

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
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p3, p3, Lcom/afollestad/materialdialogs/MaterialDialog;->c:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    iget-boolean p3, p3, Lcom/afollestad/materialdialogs/MaterialDialog$d;->p0:Z

    const/4 p4, 0x0

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x1

    const/4 p4, 0x1

    :cond_0
    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->a:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    xor-int/lit8 v0, p4, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p3, p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(IZ)V

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p3, p2, Lcom/afollestad/materialdialogs/MaterialDialog;->c:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    iget-boolean p4, p3, Lcom/afollestad/materialdialogs/MaterialDialog$d;->r0:Z

    if-eqz p4, :cond_2

    iget-object p3, p3, Lcom/afollestad/materialdialogs/MaterialDialog$d;->o0:Lcom/afollestad/materialdialogs/MaterialDialog$f;

    invoke-interface {p3, p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$f;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
