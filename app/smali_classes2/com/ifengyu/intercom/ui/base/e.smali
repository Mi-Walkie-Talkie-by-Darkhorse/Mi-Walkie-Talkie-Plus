.class public final synthetic Lcom/ifengyu/intercom/ui/base/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/base/k;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/base/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/e;->a:Lcom/ifengyu/intercom/ui/base/k;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/base/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/e;->a:Lcom/ifengyu/intercom/ui/base/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->N2(Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
