.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/n0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/lite/c/b/b$c;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

.field private final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->b:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
