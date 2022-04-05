.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/p1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/p1;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/p1;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
