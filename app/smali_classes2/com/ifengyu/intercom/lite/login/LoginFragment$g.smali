.class Lcom/ifengyu/intercom/lite/login/LoginFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$g;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/afollestad/materialdialogs/DialogAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$g;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/b0;->a(Landroid/content/Context;)V

    return-void
.end method
