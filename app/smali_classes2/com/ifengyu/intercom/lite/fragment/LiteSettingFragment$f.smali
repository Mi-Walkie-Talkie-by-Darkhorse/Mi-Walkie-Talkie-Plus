.class Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;
.super Ljava/lang/Object;
.source "LiteSettingFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/c/b/d;

.field final synthetic b:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;Lcom/ifengyu/intercom/lite/c/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;->b:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;->b:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->c(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)Lcom/ifengyu/intercom/lite/h/h0;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/h/h0;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;->b:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->d(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    :cond_0
    return-void
.end method