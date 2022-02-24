.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

.field private final synthetic b:Lcom/ifengyu/intercom/lite/c/b/f;

.field private final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;Lcom/ifengyu/intercom/lite/c/b/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->b:Lcom/ifengyu/intercom/lite/c/b/f;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->b:Lcom/ifengyu/intercom/lite/c/b/f;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/lite/fragment/m0;->c:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Lcom/ifengyu/intercom/lite/c/b/f;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
