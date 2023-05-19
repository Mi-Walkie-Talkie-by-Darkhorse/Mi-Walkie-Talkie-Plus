.class public final synthetic Lcom/ifengyu/intercom/l/b/c/x1/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/frequency/c$a;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/x1/k;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/ifengyu/intercom/models/ChannelModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/x1/k;ZLcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->a:Lcom/ifengyu/intercom/l/b/c/x1/k;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->b:Z

    iput-object p3, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->c:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->a:Lcom/ifengyu/intercom/l/b/c/x1/k;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->b:Z

    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/x1/d;->c:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/l/b/c/x1/k;->m3(ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
