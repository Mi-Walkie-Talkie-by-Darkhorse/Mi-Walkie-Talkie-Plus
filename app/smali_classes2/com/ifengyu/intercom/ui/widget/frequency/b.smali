.class public final synthetic Lcom/ifengyu/intercom/ui/widget/frequency/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/widget/frequency/c;

.field public final synthetic b:Lcom/qmuiteam/qmui/widget/dialog/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/widget/frequency/c;Lcom/qmuiteam/qmui/widget/dialog/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/b;->a:Lcom/ifengyu/intercom/ui/widget/frequency/c;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/b;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/b;->a:Lcom/ifengyu/intercom/ui/widget/frequency/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/b;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/widget/frequency/c;->F(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V

    return-void
.end method
