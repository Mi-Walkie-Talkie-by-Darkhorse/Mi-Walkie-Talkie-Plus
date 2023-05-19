.class public final synthetic Lcom/ifengyu/intercom/l/b/c/x1/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/x1/k;

.field public final synthetic b:Lcom/ifengyu/intercom/m/b/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/ifengyu/intercom/models/ChannelModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/x1/k;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->a:Lcom/ifengyu/intercom/l/b/c/x1/k;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->b:Lcom/ifengyu/intercom/m/b/e;

    iput-object p3, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->d:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->a:Lcom/ifengyu/intercom/l/b/c/x1/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->b:Lcom/ifengyu/intercom/m/b/e;

    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/x1/g;->d:Lcom/ifengyu/intercom/models/ChannelModel;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/l/b/c/x1/k;->s3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
