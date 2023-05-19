.class public final synthetic Lcom/ifengyu/intercom/l/a/b/b/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/a/b/b/z;

.field public final synthetic b:Lcom/ifengyu/intercom/m/b/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/ifengyu/intercom/models/ConfigFileModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/a/b/b/z;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->a:Lcom/ifengyu/intercom/l/a/b/b/z;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->b:Lcom/ifengyu/intercom/m/b/e;

    iput-object p3, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->d:Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->a:Lcom/ifengyu/intercom/l/a/b/b/z;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->b:Lcom/ifengyu/intercom/m/b/e;

    iget-object v2, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/l/a/b/b/s;->d:Lcom/ifengyu/intercom/models/ConfigFileModel;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/l/a/b/b/z;->H3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
