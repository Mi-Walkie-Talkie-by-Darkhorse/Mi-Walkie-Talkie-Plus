.class Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$b;
.super Ljava/lang/Object;
.source "LiteSetupPasswordFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$b;->a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$b;->a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->e(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
