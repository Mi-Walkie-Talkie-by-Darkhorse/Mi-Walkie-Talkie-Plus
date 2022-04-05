.class Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V
    .locals 0

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$b;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$b;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
